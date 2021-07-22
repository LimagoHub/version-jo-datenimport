using System;
using System.Collections.Generic;
using System.Linq;
using BBk.Rc1.Ricis.Configurations;
using BBk.Rc1.Ricis.Database.Contexts;
using BBk.Rc1.Ricis.Database.Entities;
using BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.Database.Repository;

// Für diese Klasse sind noch Unit Tests zu schreiben!

namespace BBk.Rc1.Ricis.DataImport.RepoLendImport.Queries
{
    public class RepoLendTransformQueries : IRepoLendTransformQueries
    {
        private readonly IRicisConfiguration config;
        private readonly string instance;
        private readonly List<TblBond> tblBonds;
        private readonly List<TblCounterpartyProperty> tblCounterpartyProperties;
        private readonly List<TblEquityInstrument> tblEquityInstruments;
        private readonly List<TblInstrumentUnknown> tblInstrumentUnknowns;
        private readonly List<TblPortfolioKey> tblPortfolioKeys;
        private readonly List<TblProperty> tblProperties;
        private readonly List<TblTransactionCounterpartMapping> tblTransactionCounterpartMappings;

        public RepoLendTransformQueries(IRicisConfiguration config, string instance)
        {
            this.config = config;
            this.instance = instance;
            tblTransactionCounterpartMappings
                = new RepositoryReader<TblTransactionCounterpartMapping, RicisEuroContext>().Read().ToList();
            tblPortfolioKeys
                = new RepositoryReader<TblPortfolioKey, RicisEuroContext>().Read().ToList();
            tblCounterpartyProperties
                = new RepositoryReader<TblCounterpartyProperty, RicisEuroContext>().Read().ToList();
            tblProperties
                = new RepositoryReader<TblProperty, RicisEuroContext>().Read().ToList();
            tblBonds
                = new RepositoryReader<TblBond, RicisEuroContext>().Read().ToList();
            tblEquityInstruments
                = new RepositoryReader<TblEquityInstrument, RicisEuroContext>().Read().ToList();
            tblInstrumentUnknowns
                = new RepositoryReader<TblInstrumentUnknown, RicisEuroContext>().Read().ToList();
        }

        public int? GetCounterpartFromMapping(string system, string key)
        {
            return tblTransactionCounterpartMappings
                .Find(x => x.SystemId == system && x.SystemKey == key).RicsCntprtNo;
        }

        public string GetFileKey(string fileType, string keyName)
        {
            var configValue = config.GetValue(fileType, instance);
            var array = configValue.Split('|');
            for (var i = 0; i < array.Length - 1; i += 2)
                if (array[i] == keyName)
                    return array[i + 1];
            throw new RicisConfigurationException(
                $"Konfigurationsparameter {keyName} für Schlüssel {fileType} nicht vorhanden. Bitte Konfiguration pflegen.");
        }

        // entspricht der Stored Procedure procGetInstrumentNoByISIN
        public int? GetInstrumentNoByIsin(string isin)
        {
            var retval = tblEquityInstruments.FirstOrDefault(x => x.Isin == isin)?.InstrumentNo;
            if (retval == null)
                retval = tblBonds.FirstOrDefault(x => x.Isin == isin)?.InstrumentNo;
            if (retval == null)
                retval = tblInstrumentUnknowns.FirstOrDefault(x => x.Isin == isin)?.InstrumentNo;
            return retval;
        }

        public int? GetPortfolioNoFromKey(string keyName, string keyValue)
        {
            return tblPortfolioKeys
                .Find(x => x.PortfolioKey == keyName && x.Value == keyValue).PortfolioNo;
        }

        public string GetPropertyValueByCounterparty(int counterpartyNo, string propertyName)
        {
            return Convert.ToString((from cp in tblCounterpartyProperties
                join p in tblProperties on cp.PropertyId equals p.PropertyId
                where p.Property == propertyName && cp.CntprtNo == counterpartyNo
                select cp.Value).FirstOrDefault());
        }
    }
}