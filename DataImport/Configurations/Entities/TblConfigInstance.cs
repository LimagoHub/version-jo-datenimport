namespace BBk.Rc1.Ricis.Configurations.Entities
{
    public class TblConfigInstance
    {
        public string Instance { get; set; }
        public string Parameter { get; set; }
        public string Value { get; set; }

        public TblConfig ParameterNavigation { get; set; }
    }
}