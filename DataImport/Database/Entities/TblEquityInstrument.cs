using System.Collections.Generic;

namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblEquityInstrument
    {
        public TblEquityInstrument()
        {
            TblEquityCorporateActionId = new HashSet<TblEquityCorporateActionId>();
            TblEquityCorporateActionIsinadjNavigation = new HashSet<TblEquityCorporateAction>();
            TblEquityCorporateActionIsinnewNavigation = new HashSet<TblEquityCorporateAction>();
            TblEquityCorporateActionIsinrightNavigation = new HashSet<TblEquityCorporateAction>();
        }

        public int InstrumentNo { get; set; }
        public string Name { get; set; }
        public string Isin { get; set; }
        public string CorporationLongName { get; set; }
        public string CountryCode { get; set; }
        public int? Issuer { get; set; }
        public bool? HasPrice { get; set; }
        public string Exchange { get; set; }
        public bool? IsCreatedByProgram { get; set; }
        public bool? Stoxx { get; set; }
        public bool? Dax { get; set; }
        public bool? Sus40 { get; set; }
        public bool? DivDax { get; set; }
        public bool? EuroStoxxEsgleaders50 { get; set; }
        public bool? Stoxx600 { get; set; }
        public bool? MsciAcwi { get; set; }
        public bool? MsciWorld { get; set; }
        public bool? MsciEmergingMarkets { get; set; }
        public bool? Mdax { get; set; }
        public bool? SolactiveOekomEsgeurozone50 { get; set; }
        public bool? SolactiveIssesgeurozone30 { get; set; }
        public bool? StoxxEsgLaenderEurozone { get; set; }
        public bool? StoxxEsgLaenderGlobalExEurozone { get; set; }
        public bool? StoxxEsgLaenderFossilFreeGlobalExEurozone { get; set; }
        public bool? StoxxEsgLaenderFossilFreeEurozone { get; set; }
        public bool? SuP500 { get; set; }
        public bool? SolactiveSwissLargeCap { get; set; }
        public bool? MsciNordicCountries { get; set; }
        public bool? MsciEmergingMarketsSri { get; set; }
        public bool? MsciWorldEsgLeaderLowCarbExTobInv { get; set; }
        public bool? EuroStoxx50EsgIndex { get; set; }
        public byte[] SsmaTimeStamp { get; set; }

        public TblInstrument InstrumentNoNavigation { get; set; }
        public ICollection<TblEquityCorporateActionId> TblEquityCorporateActionId { get; set; }
        public ICollection<TblEquityCorporateAction> TblEquityCorporateActionIsinadjNavigation { get; set; }
        public ICollection<TblEquityCorporateAction> TblEquityCorporateActionIsinnewNavigation { get; set; }
        public ICollection<TblEquityCorporateAction> TblEquityCorporateActionIsinrightNavigation { get; set; }
    }
}