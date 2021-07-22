﻿using System;

namespace BBk.Rc1.Ricis.DataImport.Dtos
{
    /// <summary>
    ///     Datenobjekt, welches Informationen einer Zeile
    ///     aus einer RepoLend-Eingabedatei beinhaltet.
    /// </summary>
    public class RepoLendDto
    {
        public Guid Guid { get; set; }
        public string Beleg { get; set; }
        public DateTime Datumab { get; set; }
        public TimeSpan Zeitab { get; set; }
        public DateTime Datum { get; set; }
        public DateTime Lfzv { get; set; }
        public DateTime Lfzb { get; set; }
        public int Zstage { get; set; }
        public string Snr { get; set; }
        public string Denr { get; set; }
        public string Storno { get; set; }
        public string Reart { get; set; }
        public string Reartbez { get; set; }
        public string Wpnr { get; set; }
        public string Wpbezk { get; set; }
        public string Snrk { get; set; }

        public string Snrbezk { get; set; }

        // ISO 4217-Währung eventuell als enumeration abbilden
        public string Whgu { get; set; }
        public decimal Ab1 { get; set; }
        public decimal Ab2 { get; set; }
        public decimal Zs { get; set; }
        public string Zsmodb { get; set; }
        public string Statb { get; set; }
        public string Intrefrc { get; set; }
        public decimal Marktkurs { get; set; }
        public decimal Nennwert { get; set; }
    }
}