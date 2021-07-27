using System;
using System.Collections.Generic;
using BBk.Rc1.Ricis.DataImport.Alerts;
using BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.Exceptions;
using BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step;

namespace BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.Step
{
    public class DataImportStep<R, W> : AbstractStep
    {
        protected IList<DataImportAlert> alerts;

        public DataImportStep(IList<DataImportAlert> dataImportAlerts, string useCase, DateTime betrachtungstag)
        {
            UseCase = useCase;
            Betrachtungstag = betrachtungstag;
            alerts = dataImportAlerts;
        }

        private string UseCase { get; }
        private DateTime Betrachtungstag { get; }
        private IReader<R> Reader { get; set; }
        private IProcessor<R, W> Processor { get; set; }
        private IWriter<IList<DataImportAlert>> AlertsWriter { get; set; }
        private IWriter<W> Writer { get; set; }

        

        public DataImportStep<R, W> InitReader(IReader<R> reader)
        {
            Reader = reader;
            return this;
        }

        public DataImportStep<R, W> InitProcessor(IProcessor<R, W> processor)
        {
            Processor = processor;
            return this;
        }

        public DataImportStep<R, W> InitWriter(IWriter<W> writer)
        {
            Writer = writer;
            return this;
        }

        public DataImportStep<R, W> InitAlertsWriter(IWriter<IList<DataImportAlert>> alertsWriter)
        {
            AlertsWriter = alertsWriter;
            return this;
        }

        public override void Execute()
        {
           
            var processResult = Processor.Process(Reader.Read());
   
            AlertsWriter?.Write(alerts);
            if (processResult == null)
            {
                
                throw new DataImportException("Fachliche Fehler beim Datenimport.");
            }

            
            Writer.Write(processResult);
        }
    }
}