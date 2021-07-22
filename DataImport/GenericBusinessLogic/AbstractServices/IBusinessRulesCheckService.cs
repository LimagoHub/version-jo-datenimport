namespace BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.AbstractServices
{
    /// <summary>
    ///     Interface für fachliche Überprüfungen der Importdaten
    /// </summary>
    /// <typeparam name="P">Eingabetyp: in der Regel eine Liste von Import-DTOs</typeparam>
    public interface IBusinessRulesCheckService<in P>
    {
        void Check(P p);
    }
}