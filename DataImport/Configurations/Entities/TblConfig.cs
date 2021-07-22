using System.Collections.Generic;

namespace BBk.Rc1.Ricis.Configurations.Entities
{
    public class TblConfig
    {
        public TblConfig()
        {
            TblConfigInstance = new HashSet<TblConfigInstance>();
        }

        public int? OrderNo { get; set; }
        public string Parameter { get; set; }
        public string Value { get; set; }
        public string Type { get; set; }
        public string Description { get; set; }
        public string Usage { get; set; }

        public ICollection<TblConfigInstance> TblConfigInstance { get; set; }
    }
}