using System;
using System.Collections.Generic;

namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblCounterpart
    {
        public TblCounterpart()
        {
            InverseParentNavigation = new HashSet<TblCounterpart>();
            InverseRatingTransferNavigation = new HashSet<TblCounterpart>();
            InverseSubParentNavigation = new HashSet<TblCounterpart>();
            InverseUltimateParentNavigation = new HashSet<TblCounterpart>();
            TblCounterpartyProperty = new HashSet<TblCounterpartyProperty>();
            TblTransactionCounterpartMapping = new HashSet<TblTransactionCounterpartMapping>();
        }

        public int CntprtNo { get; set; }
        public string CntprtName { get; set; }
        public string CntprtNameShort { get; set; }
        public string Country { get; set; }
        public string Address { get; set; }
        public int? CntprtType { get; set; }
        public int? SubParent { get; set; }
        public int Parent { get; set; }
        public int? UltimateParent { get; set; }
        public string RatingTransfer { get; set; }
        public int? RatingTransferId { get; set; }
        public bool? Active { get; set; }
        public bool? ActiveForRating { get; set; }
        public bool? TimeDeposit { get; set; }
        public bool? RepoLending { get; set; }
        public bool? GoldLending { get; set; }
        public bool? Outright { get; set; }
        public bool? EtdTaken { get; set; }
        public bool? EtdGiven { get; set; }
        public bool? Fx { get; set; }
        public bool? EuroEmittentBbk { get; set; }
        public bool? Bbkreserven { get; set; }
        public bool? Bbkeuro { get; set; }
        public bool? MonetaryPolicy { get; set; }
        public bool? Collateral { get; set; }
        public bool? CreditClaim { get; set; }
        public bool? Generated { get; set; }
        public string Comment { get; set; }
        public DateTime? CheckDate { get; set; }
        public byte[] SsmaTimeStamp { get; set; }

        public TblCounterpartyType CntprtTypeNavigation { get; set; }
        public TblCountry CountryNavigation { get; set; }
        public TblCounterpart ParentNavigation { get; set; }
        public TblCounterpart RatingTransferNavigation { get; set; }
        public TblCounterpart SubParentNavigation { get; set; }
        public TblCounterpart UltimateParentNavigation { get; set; }
        public TblIssuer TblIssuer { get; set; }
        public ICollection<TblCounterpart> InverseParentNavigation { get; set; }
        public ICollection<TblCounterpart> InverseRatingTransferNavigation { get; set; }
        public ICollection<TblCounterpart> InverseSubParentNavigation { get; set; }
        public ICollection<TblCounterpart> InverseUltimateParentNavigation { get; set; }
        public ICollection<TblCounterpartyProperty> TblCounterpartyProperty { get; set; }
        public ICollection<TblTransactionCounterpartMapping> TblTransactionCounterpartMapping { get; set; }
    }
}