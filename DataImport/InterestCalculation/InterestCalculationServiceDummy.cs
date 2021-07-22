using System;

namespace BBk.Rc1.Ricis.SharedLibraries.InterestCalculation
{
    public class InterestCalculationServiceDummy : IInterestCalculationService
    {
        public decimal CalcSimpleInterest(DateTime from, DateTime to, decimal interestRate, string dayCount)
        {
            if (dayCount == "act/360")
                return (to - from).Days / 360M * interestRate;
            throw new NotImplementedException();
        }
    }
}