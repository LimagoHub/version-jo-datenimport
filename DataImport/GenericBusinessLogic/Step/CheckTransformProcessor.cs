using System.Collections.Generic;
using BBk.Rc1.Ricis.DataImport.Alerts;
using BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.AbstractServices;


namespace BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.Step
{
    /// <summary>
    ///     Generische Klasse für das Zusammenschalten der fachlichen Überprüfungen und Transformationen
    /// </summary>
    /// <typeparam name="P">
    ///     Z. B. Liste von DTOs,
    ///     die aus einer Eingabedatei gelesen wurden
    /// </typeparam>
    /// <typeparam name="R">
    ///     Z. B. Liste von Entities,
    ///     die später in die Datenbank gespeichert werden sollen
    /// </typeparam>
    public class CheckTransformProcessor<P, R> : IDataImportProcessor<P, R>
    {
        protected readonly List<DataImportAlert> alerts = new List<DataImportAlert>();

        public CheckTransformProcessor(
            IList<IBusinessRulesCheckService<P>> preCheckServices,
            ITransformService<P, R> transformService,
            IList<IBusinessRulesCheckService<R>> postCheckServices
        )
        {
            this.preCheckServices = preCheckServices ?? new List<IBusinessRulesCheckService<P>>();
            this.transformService = transformService;
            this.postCheckServices = postCheckServices ?? new List<IBusinessRulesCheckService<R>>();
        }

        public CheckTransformProcessor(
        )
        {
        }

        protected IList<IBusinessRulesCheckService<P>> preCheckServices { get; set; }
        protected ITransformService<P, R> transformService { get; set; }
        protected IList<IBusinessRulesCheckService<R>> postCheckServices { get; set; }


        public IList<DataImportAlert> GetAlerts()
        {
            return alerts;
        }

        public R Process(P p)
        {
            try
            {
                foreach (var checkService in preCheckServices) checkService.Check(p);
                var retval = transformService.Transform(p);
                foreach (var checkService in postCheckServices) checkService.Check(retval);
                return retval;
            }
            catch (DataImportCheckException)
            {
                return default;
            }
        }
    }
}