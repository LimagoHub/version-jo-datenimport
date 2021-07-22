using System.Collections.Generic;

namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblCountry
    {
        public TblCountry()
        {
            TblCounterpart = new HashSet<TblCounterpart>();
        }

        public string Country { get; set; }
        public string Description { get; set; }
        public string Description1 { get; set; }
        public string Description2 { get; set; }
        public string Description3 { get; set; }
        public string Exchange { get; set; }
        public string ExchangeCurrency { get; set; }
        public byte[] SsmaTimeStamp { get; set; }

        public TblCurrency ExchangeCurrencyNavigation { get; set; }
        public ICollection<TblCounterpart> TblCounterpart { get; set; }
    }
}