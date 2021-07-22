using System;
using System.Collections.Generic;
using System.Linq;
using BBk.Rc1.Ricis.DataImport.Alerts;
using BBk.Rc1.Ricis.DataImport.Dtos;
using BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.AbstractServices;

namespace BBk.Rc1.Ricis.DataImport.RepoLendImport.Services
{
    public class RepoLendMultiRecordCheckService : AbstractRepoLendChecker
    {
        public RepoLendMultiRecordCheckService(IList<DataImportAlert> alertList) : base(alertList)
        {

        }


        protected override void CheckFields()
        {
            OBSBelegnrIstMehrfachVorhanden( );
            HandleReart( );
        }

        private void HandleReart( )
        {
            var handler = ReartHandlerFactory.CreateReartHandler(Item.Reart, this);
            if (handler != null)
                handler.handle(Item, P.ToList());
        }

        private void OBSBelegnrIstMehrfachVorhanden()
        {
            var foundRepoLendDtos = findRepoLendDtos();

            ErrorHelper error = Error(foundRepoLendDtos.Count > 0);
            error.Message("Die OBS-Belegnr. ist mehrfach vorhanden.").Field("Beleg");
            foreach (var element in foundRepoLendDtos) error.Field(element, "Beleg");
            error.addToAlerts();

        }

        private List<RepoLendDto> findRepoLendDtos()
        {
            var foundRepoLendDtos = new List<RepoLendDto>();
            foundRepoLendDtos = P.ToList().FindAll(s => s.Beleg.Equals(Item.Beleg));
            foundRepoLendDtos.Remove(Item);
            return foundRepoLendDtos;
        }

        private static class ReartHandlerFactory
        {
            public static ReartHandler CreateReartHandler(string reartType, AbstractRepoLendChecker parent)
            {
                try
                {
                    return (ReartHandler) Activator.CreateInstance(
                        Type.GetType(
                            "BBk.Rc1.Ricis.DataImport.RepoLendImport.Services.RepoLendMultiRecordCheckService." +
                            reartType + "Handler"), parent);
                }
                catch (Exception )
                {
                    return null;
                }
            }
        }

        protected abstract class ReartHandler
        {
            protected ReartHandler(AbstractRepoLendChecker parent)
            {
                Parent = parent;
            }

            protected AbstractRepoLendChecker Parent { get; }

            public abstract void handle(RepoLendDto item, List<RepoLendDto> p);
        }

        protected class RPEVHandler : ReartHandler
        {
            public RPEVHandler(AbstractRepoLendChecker parent) : base(parent)
            {
            }

            public override void handle(RepoLendDto item, List<RepoLendDto> p)
            {
                RepoLendDto foundRepoLendDto;
                foundRepoLendDto = p.Find(s => s.Intrefrc.Equals(item.Beleg));

                Parent.Error(foundRepoLendDto != null)
                    .Message("Das Geschäft ist vom Typ 'Repo PSPP Eurex', hat aber ein Gegengeschäft.")
                    .Field("Beleg")
                    .Field("Reart")
                    .Field(foundRepoLendDto, "Intrefrc")
                    .addToAlerts();




            }


            protected class RPEKHandler : ReartHandler
            {
                public RPEKHandler(AbstractRepoLendChecker parent) : base(parent)
                {
                }

                public override void handle(RepoLendDto item, List<RepoLendDto> p)
                {
                    List<RepoLendDto> foundRepoLendDtos;
                    foundRepoLendDtos = p.FindAll(s => s.Intrefrc.Equals(item.Beleg));


                    if (foundRepoLendDtos != null && foundRepoLendDtos.Count > 0)
                    {
                        var sumOfAb1 = 0M;
                        foreach (var element in foundRepoLendDtos) sumOfAb1 += element.Ab1;

                        var error = Parent.Error(Math.Abs(item.Ab1 + sumOfAb1) > 1)
                            .Message(
                                "Der ausmachende Betrag des Repos entspricht nicht der Summe der ausmachenden Beträge der zugehörigen Reverse Repos.")
                            .Field("Beleg")
                            .Field("Reart");
                        foreach (var element in foundRepoLendDtos)
                            error.Field(element, "Ab1");
                        error.addToAlerts();


                    }
                }
            }

            protected class RXVKHandler : ReartHandler
            {
                public RXVKHandler(AbstractRepoLendChecker parent) : base(parent)
                {
                }

                public override void handle(RepoLendDto item, List<RepoLendDto> p)
                {
                    RepoLendDto foundRepoLendDto;
                    foundRepoLendDto = p.Find(s => s.Beleg.Equals(item.Intrefrc));

                    if (Parent.Error(null == foundRepoLendDto).Message("Das zugehörige Repo fehlt.").Field("Reart")
                        .Field("Intrefrc").addToAlerts())
                    {
                        return;
                    }

                    Parent.Error(foundRepoLendDto.Datumab != item.Datumab)
                        .Message("Das zugehörige Geschäft hat einen anderen Handelstag.")
                        .Field("Datumab")
                        .Field("Intrefrc")
                        .Field(foundRepoLendDto, "Datumab")
                        .addToAlerts();

                    Parent.Error(foundRepoLendDto.Lfzv != item.Lfzv)
                        .Message("Das zugehörige Geschäft hat einen anderen Valutatag.")
                        .Field("Lfzv")
                        .Field("Intrefrc")
                        .Field(foundRepoLendDto, "Lfzv")
                        .addToAlerts();

                    Parent.Error(foundRepoLendDto.Lfzb != item.Lfzb)
                        .Message("Das zugehörige Geschäft hat einen anderen Fälligkeitstag.")
                        .Field("Lfzb")
                        .Field("Intrefrc")
                        .Field(foundRepoLendDto, "Lfzb")
                        .addToAlerts();

                    Parent.Error(foundRepoLendDto.Snrk != item.Snrk)
                        .Message("Das zugehörige Geschäft hat eine andere OBS-Stammnr. des Kontrahenten.")
                        .Field("Snrk")
                        .Field("Intrefrc")
                        .Field(foundRepoLendDto, "Snrk")
                        .addToAlerts();







                }

            }
        }
    }
}