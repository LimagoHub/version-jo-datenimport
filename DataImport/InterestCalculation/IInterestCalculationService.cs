using System;

namespace BBk.Rc1.Ricis.SharedLibraries.InterestCalculation
{
    /// <summary>
    ///     Service-Klasse zur Zinsberechnung
    /// </summary>
    public interface IInterestCalculationService
    {
        /// <summary>
        ///     Einfache Zinsberechnung für ein gegebenes Zeitintervall
        /// </summary>
        /// <param name="from">Startdatum</param>
        /// <param name="to">Enddatum</param>
        /// <param name="interestRate">Zins</param>
        /// <param name="dayCount">Tagzähl-Konvention</param>
        /// <returns></returns>
        decimal CalcSimpleInterest(DateTime from, DateTime to, decimal interestRate, string dayCount);
    }
}