namespace BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.AbstractServices
{
    /// <summary>
    ///     Interface für fachliche Umwandlungen der Importdaten in Persistenzdaten
    /// </summary>
    /// <typeparam name="P">Eingabetyp: in der Regel eine Liste von Import-DTOs</typeparam>
    /// <typeparam name="R">Ausgabetyp: in der Regel eine Liste von Entities</typeparam>
    public interface ITransformService<in P, out R>
    {
        R Transform(P p);
    }
}