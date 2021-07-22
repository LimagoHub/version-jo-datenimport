namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblProperty
    {
        public int PropertyId { get; set; }
        public string Property { get; set; }
        public string Description { get; set; }
        public string Description1 { get; set; }
        public string Description2 { get; set; }
        public string Description3 { get; set; }
        public string Description4 { get; set; }
        public string ExternalKey { get; set; }
        public int? OrderNumber { get; set; }
        public bool? ActiveForInheritance { get; set; }
        public bool? StdActiveForInheritance { get; set; }
        public byte[] SsmaTimeStamp { get; set; }
    }
}