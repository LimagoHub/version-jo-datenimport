namespace BBk.Rc1.Ricis.Configurations
{
    /// <summary>
    ///     In-Memory-Repräsentation von RICIS-Konfigurationsparametern
    /// </summary>
    public interface IRicisConfiguration // evtl. IConfiguration verwenden
    {
        /// <summary>
        ///     Abfrage eines RICIS-Konfigurationsparameters
        /// </summary>
        /// <param name="parameter">Name des Parameters</param>
        /// <param name="instance">
        ///     Betroffene RICIS-Instanz bzw "global",
        ///     falls Parameter für alle
        /// </param>
        /// <returns>Wert des Konfigurationsparameters</returns>
        string GetValue(string parameter, string instance);
    }
}