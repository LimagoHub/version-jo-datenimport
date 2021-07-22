using BBk.Rc1.Ricis.DataImport.Alerts;
using BBk.Rc1.Ricis.DataImport.Dtos;
using BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.AbstractServices;
using BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.Step;
using System;
using System.Collections.Generic;

namespace BBk.Rc1.Ricis.DataImport.RepoLendImport.Services
{
    public abstract class AbstractRepoLendChecker: IBusinessRulesCheckService<IList<RepoLendDto>>
    {
        protected AbstractRepoLendChecker(IList<DataImportAlert> alertList)
        {
            AlertList = alertList;
        }

        protected IList<DataImportAlert> AlertList { get; }
        protected RepoLendDto Item { get; set; }
        protected IList<RepoLendDto> P { get; set; }
        private bool ErrorDetected { get; set; }
        
        
        public void Check(IList<RepoLendDto> p)
        {
            ErrorDetected = false;
            P = p;
            foreach (var item in p)
            {
                Item = item;
               
            }

            if (ErrorDetected) throw new DataImportCheckException("Fehler wurde erkannt. Abbruch");
        }

        protected abstract void CheckFields();

        public WarningHelper Warning(bool predicate)
        {
            return new WarningHelper(this,predicate);
        }

        public ErrorHelper Error(bool predicate)
        {
            return new ErrorHelper(this, predicate);
        }

        public InfoHelper Info(bool predicate)
        {
            return new InfoHelper(this, predicate);
        }



        protected static bool IsInt(string expression)
        {
            int notUsed;
            return int.TryParse(expression, out notUsed);
        }
        protected static bool IsNotInt(string expression)
        {

            return !IsInt(expression);
        }

        protected static bool NotIsIn(string s, params string[] sList)
        {
            
            return Array.IndexOf(sList, s) < 0;
        }

        public class IssueHelper
        {
            private readonly AbstractRepoLendChecker parent;
            private readonly bool predicate;
            private string message;
            private readonly AlertLevel level;
            private readonly IList<AlertField> alertFields = new List<AlertField>();

            public IssueHelper(AbstractRepoLendChecker parent,bool predicate, AlertLevel level = AlertLevel.Fehler)
            {
                this.parent = parent;
                this.predicate = predicate;
                this.level = level;
            }

            public IssueHelper Message(string message)
            {
                this.message = message;
                return this;
            }
            
            public virtual IssueHelper Field<RepoLendDto>(Guid dtoGuid, string propertyName)
            {
                alertFields.Add(new AlertField
                {
                    DtoGuid = dtoGuid,
                    PropertyInfo = typeof(RepoLendDto).GetProperty(propertyName)
                });
                return this;
              
            }

            public virtual IssueHelper Field(Guid dtoGuid, string propertyName, Type type)
            { alertFields.Add(new AlertField
                {
                    DtoGuid = dtoGuid,
                    PropertyInfo = type.GetProperty(propertyName)
                });
                return this;
            }

            public virtual IssueHelper Field(Guid dtoGuid, string propertyName)
            {
                alertFields.Add(new AlertField
                {
                    DtoGuid = dtoGuid,
                    PropertyInfo = parent.Item.GetType().GetProperty(propertyName)
                });
                return this;
            }
            public virtual IssueHelper Field<T>(T item, string propertyName, string idName = "Guid")
            {
                alertFields.Add(new AlertField
                {

                    DtoGuid = (Guid)(typeof(T).GetProperty(idName).GetValue(item)),
                    PropertyInfo = typeof(T).GetProperty(propertyName)
                });
                return this;
            }

           

            public virtual IssueHelper Field(string propertyName, string idName = "Guid")
            {
                alertFields.Add(new AlertField
                {

                    DtoGuid = (Guid)(parent.Item.GetType().GetProperty(idName).GetValue(parent.Item)),
                    PropertyInfo = parent.Item.GetType().GetProperty(propertyName)
                });
                return this;
            }

            public virtual bool addToAlerts()
            {
                if (!predicate) return false;

                DataImportAlert alert = DataImportAlert.GetInstance<RepoLendDto>(
                    level,
                    message);

                if (level == AlertLevel.Fehler)
                    parent.ErrorDetected = true;
                alert.AlertFields.AddRange(alertFields);
               parent.AlertList.Add(alert);
               return true;
            }
        }
        public class InfoHelper : IssueHelper
        {
            public InfoHelper(AbstractRepoLendChecker parent, bool predicate) : base(parent, predicate, AlertLevel.Info)
            {
            }
        }
        public class WarningHelper : IssueHelper
        {
            public WarningHelper(AbstractRepoLendChecker parent, bool predicate) : base(parent, predicate, AlertLevel.Warnung)
            {
            }
        }
        public class ErrorHelper : IssueHelper
        {
            public ErrorHelper(AbstractRepoLendChecker parent, bool predicate) : base(parent, predicate, AlertLevel.Warnung)
            {
            }

           
        }
    }


    
}
