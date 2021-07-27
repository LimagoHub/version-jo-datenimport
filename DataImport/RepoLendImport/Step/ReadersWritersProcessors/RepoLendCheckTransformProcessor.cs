using System;
using System.Collections.Generic;
using BBk.Rc1.Ricis.Configurations;
using BBk.Rc1.Ricis.Database.Entities;
using BBk.Rc1.Ricis.DataImport.Alerts;
using BBk.Rc1.Ricis.DataImport.Dtos;
using BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.AbstractServices;
using BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.Step;
using BBk.Rc1.Ricis.DataImport.RepoLendImport.Queries;
using BBk.Rc1.Ricis.DataImport.RepoLendImport.Services;
using BBk.Rc1.Ricis.SharedLibraries.InterestCalculation;

namespace BBk.Rc1.Ricis.DataImport.RepoLendImport.Step
{
    public class RepoLendCheckTransformProcessor
        : CheckTransformProcessor<IList<RepoLendDto>, IList<Tuple<TblRepoLend, TblInstrument>>>
    {
        private RepoLendCheckTransformProcessor(
            IList<IBusinessRulesCheckService<IList<RepoLendDto>>> preCheckServices,
            ITransformService<IList<RepoLendDto>, IList<Tuple<TblRepoLend, TblInstrument>>> transformService,
            IList<IBusinessRulesCheckService<IList<Tuple<TblRepoLend, TblInstrument>>>> postCheckServices)
            : base(preCheckServices, transformService, postCheckServices)
        {
        }


        private RepoLendCheckTransformProcessor(
        )
        {
        }

        public static RepoLendCheckTransformProcessor GetInstance(Dictionary<string, object> jobParameters)
        {
            var dataImportAlerts = (IList<DataImportAlert>)jobParameters["alerts"];
            
            var betrachtungstag = (DateTime)jobParameters["betrachtungstag"];
            var retval = new RepoLendCheckTransformProcessor();
            IInterestCalculationService interestCalculationService
                = new InterestCalculationServiceDummy();
            IRepoLendTransformQueries repoLendTransformerQueries
                = new RepoLendTransformQueries(new RicisConfiguration(), "EURO_PROD");
            IRepoLendConsistencyQueries repoLendConsistencyQueries
                = new RepoLendConsistencyQueries();

            IList<IBusinessRulesCheckService<IList<RepoLendDto>>> preCheckServices
                = new List<IBusinessRulesCheckService<IList<RepoLendDto>>>
                {
                    new RepoLendFieldCheckService(dataImportAlerts, betrachtungstag),
                    new RepoLendMultiFieldCheckService(dataImportAlerts, interestCalculationService),
                    new RepoLendMultiRecordCheckService(dataImportAlerts)
                };

            ITransformService<IList<RepoLendDto>, IList<Tuple<TblRepoLend, TblInstrument>>> transformService
                = new RepoLendTransformService(interestCalculationService, repoLendTransformerQueries);

            IList<IBusinessRulesCheckService<IList<Tuple<TblRepoLend, TblInstrument>>>> postCheckServices
                = new List<IBusinessRulesCheckService<IList<Tuple<TblRepoLend, TblInstrument>>>>
                {
                    new RepoLendConsistencyWithDatabaseCheckService(dataImportAlerts, repoLendConsistencyQueries)
                };

            retval.preCheckServices = preCheckServices;
            retval.transformService = transformService;
            retval.postCheckServices = postCheckServices;
            return retval;
        }
    }
}