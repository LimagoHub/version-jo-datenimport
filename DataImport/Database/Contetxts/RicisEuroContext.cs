using BBk.Rc1.Ricis.Database.Entities;
using Microsoft.EntityFrameworkCore;

namespace BBk.Rc1.Ricis.Database.Contexts
{
    public class RicisEuroContext : DbContext
    {
        public RicisEuroContext()
        {
        }

        public RicisEuroContext(DbContextOptions<RicisEuroContext> options)
            : base(options)
        {
        }

        public virtual DbSet<TblBond> TblBond { get; set; }
        public virtual DbSet<TblCalcType> TblCalcType { get; set; }
        public virtual DbSet<TblCalendar> TblCalendar { get; set; }
        public virtual DbSet<TblCashFlow> TblCashFlow { get; set; }
        public virtual DbSet<TblCashFlowType> TblCashFlowType { get; set; }
        public virtual DbSet<TblCounterpart> TblCounterpart { get; set; }
        public virtual DbSet<TblCounterpartyProperty> TblCounterpartyProperty { get; set; }
        public virtual DbSet<TblCounterpartyType> TblCounterpartyType { get; set; }
        public virtual DbSet<TblCountry> TblCountry { get; set; }
        public virtual DbSet<TblCurrency> TblCurrency { get; set; }
        public virtual DbSet<TblDayCount> TblDayCount { get; set; }
        public virtual DbSet<TblEquityComposite> TblEquityComposite { get; set; }
        public virtual DbSet<TblEquityCorporateAction> TblEquityCorporateAction { get; set; }
        public virtual DbSet<TblEquityCorporateActionId> TblEquityCorporateActionId { get; set; }
        public virtual DbSet<TblEquityCorporateActionSubType> TblEquityCorporateActionSubType { get; set; }
        public virtual DbSet<TblEquityCorporateActionType> TblEquityCorporateActionType { get; set; }
        public virtual DbSet<TblEquityInstrument> TblEquityInstrument { get; set; }
        public virtual DbSet<TblEquityTax> TblEquityTax { get; set; }
        public virtual DbSet<TblEquityTaxRounding> TblEquityTaxRounding { get; set; }
        public virtual DbSet<TblFilledBy> TblFilledBy { get; set; }
        public virtual DbSet<TblHoliday> TblHoliday { get; set; }
        public virtual DbSet<TblHolidayRule> TblHolidayRule { get; set; }
        public virtual DbSet<TblInstrument> TblInstrument { get; set; }
        public virtual DbSet<TblInstrumentUnknown> TblInstrumentUnknown { get; set; }
        public virtual DbSet<TblIssuer> TblIssuer { get; set; }
        public virtual DbSet<TblPortfolio> TblPortfolio { get; set; }
        public virtual DbSet<TblPortfolioKey> TblPortfolioKey { get; set; }
        public virtual DbSet<TblPortfolioKeyType> TblPortfolioKeyType { get; set; }
        public virtual DbSet<TblPosition> TblPosition { get; set; }
        public virtual DbSet<TblProperty> TblProperty { get; set; }
        public virtual DbSet<TblReferenceRateDef> TblReferenceRateDef { get; set; }
        public virtual DbSet<TblRepoHoldings> TblRepoHoldings { get; set; }
        public virtual DbSet<TblRepoLend> TblRepoLend { get; set; }
        public virtual DbSet<TblTimeSeriesDef> TblTimeSeriesDef { get; set; }
        public virtual DbSet<TblTransactionCounterpartMapping> TblTransactionCounterpartMapping { get; set; }
        public virtual DbSet<TblUnitofTime> TblUnitofTime { get; set; }
        public virtual DbSet<TblWarning> TblWarning { get; set; }
        public virtual DbSet<TblYieldCurveDef> TblYieldCurveDef { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http: //go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
                optionsBuilder.UseSqlServer("Server=m999ricis002d;Database=AstericsTest02;Trusted_Connection=True;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<TblBond>(entity =>
            {
                entity.HasKey(e => e.InstrumentNo);

                entity.ToTable("tblBond");

                entity.Property(e => e.InstrumentNo).ValueGeneratedNever();

                entity.Property(e => e.AmountIssued)
                    .HasColumnType("money")
                    .HasDefaultValueSql("((0))");

                entity.Property(e => e.AmountOutstanding)
                    .HasColumnType("money")
                    .HasDefaultValueSql("((0))");

                entity.Property(e => e.CalcType)
                    .IsRequired()
                    .HasMaxLength(20);

                entity.Property(e => e.Calendar)
                    .IsRequired()
                    .HasMaxLength(12);

                entity.Property(e => e.CouponFreq).HasDefaultValueSql("((2))");

                entity.Property(e => e.Cusip).HasMaxLength(9);

                entity.Property(e => e.DatedDate).HasColumnType("datetime");

                entity.Property(e => e.DayCount)
                    .IsRequired()
                    .HasMaxLength(20);

                entity.Property(e => e.DiscountingYieldCurve).HasMaxLength(50);

                entity.Property(e => e.ExCouponBeginHolidayRule).HasMaxLength(20);

                entity.Property(e => e.ExCouponPeriodUnit).HasMaxLength(1);

                entity.Property(e => e.FirstCouponDate).HasColumnType("datetime");

                entity.Property(e => e.FixingCalendar).HasMaxLength(12);

                entity.Property(e => e.FixingPeriodUnit).HasMaxLength(1);

                entity.Property(e => e.FixingReferenceRate).HasMaxLength(50);

                entity.Property(e => e.HolidayRule).HasMaxLength(20);

                entity.Property(e => e.InterestRate)
                    .HasColumnType("decimal(18, 10)")
                    .HasDefaultValueSql("((0))");

                entity.Property(e => e.IsCreatedByProgram)
                    .HasColumnName("isCreatedByProgram")
                    .HasDefaultValueSql("((0))");

                entity.Property(e => e.Isin)
                    .HasColumnName("ISIN")
                    .HasMaxLength(12);

                entity.Property(e => e.IssueDate).HasColumnType("datetime");

                entity.Property(e => e.LastCouponDate).HasColumnType("datetime");

                entity.Property(e => e.MaturityDate).HasColumnType("datetime");

                entity.Property(e => e.MinPiece)
                    .HasColumnType("money")
                    .HasDefaultValueSql("((0))");

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.RatingFitch).HasMaxLength(4);

                entity.Property(e => e.RatingMoody).HasMaxLength(4);

                entity.Property(e => e.RatingSp)
                    .HasColumnName("RatingSP")
                    .HasMaxLength(4);

                entity.Property(e => e.ReferenceIndexKey)
                    .HasMaxLength(64)
                    .IsUnicode(false);

                entity.Property(e => e.ReferenceIndexSubKey)
                    .HasMaxLength(64)
                    .IsUnicode(false);

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();

                entity.Property(e => e.StripType).HasMaxLength(1);

                entity.HasOne(d => d.CalcTypeNavigation)
                    .WithMany(p => p.TblBond)
                    .HasForeignKey(d => d.CalcType)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("tblBond$Rel_24EE930E_1AFD_4D31");

                entity.HasOne(d => d.CalendarNavigation)
                    .WithMany(p => p.TblBondCalendarNavigation)
                    .HasForeignKey(d => d.Calendar)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("tblBond$Rel_44C119AC_017E_4C99");

                entity.HasOne(d => d.DayCountNavigation)
                    .WithMany(p => p.TblBond)
                    .HasForeignKey(d => d.DayCount)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("tblBond$Rel_83305778_DED4_48E7");

                entity.HasOne(d => d.DiscountingYieldCurveNavigation)
                    .WithMany(p => p.TblBond)
                    .HasForeignKey(d => d.DiscountingYieldCurve)
                    .HasConstraintName("tblBond$FK_DiscountingYieldCurve");

                entity.HasOne(d => d.ExCouponBeginHolidayRuleNavigation)
                    .WithMany(p => p.TblBondExCouponBeginHolidayRuleNavigation)
                    .HasForeignKey(d => d.ExCouponBeginHolidayRule)
                    .HasConstraintName("FK_ExCouponBeginHolidayRule");

                entity.HasOne(d => d.ExCouponPeriodUnitNavigation)
                    .WithMany(p => p.TblBondExCouponPeriodUnitNavigation)
                    .HasForeignKey(d => d.ExCouponPeriodUnit)
                    .HasConstraintName("FK_ExCouponPeriodUnit");

                entity.HasOne(d => d.FixingCalendarNavigation)
                    .WithMany(p => p.TblBondFixingCalendarNavigation)
                    .HasForeignKey(d => d.FixingCalendar)
                    .HasConstraintName("tblBond$Rel_FixingCalendar");

                entity.HasOne(d => d.FixingPeriodUnitNavigation)
                    .WithMany(p => p.TblBondFixingPeriodUnitNavigation)
                    .HasForeignKey(d => d.FixingPeriodUnit)
                    .HasConstraintName("tblBond$FK_FixingPeriodUnit");

                entity.HasOne(d => d.FixingReferenceRateNavigation)
                    .WithMany(p => p.TblBond)
                    .HasForeignKey(d => d.FixingReferenceRate)
                    .HasConstraintName("tblBond$FK_FixingReferenceRate");

                entity.HasOne(d => d.HolidayRuleNavigation)
                    .WithMany(p => p.TblBondHolidayRuleNavigation)
                    .HasForeignKey(d => d.HolidayRule)
                    .HasConstraintName("tblBond$Rel_61F9CED9_CC56_4680");

                entity.HasOne(d => d.InstrumentNoNavigation)
                    .WithOne(p => p.TblBond)
                    .HasForeignKey<TblBond>(d => d.InstrumentNo)
                    .HasConstraintName("tblBond$Rel_tblInstrument");

                entity.HasOne(d => d.IssuerNavigation)
                    .WithMany(p => p.TblBond)
                    .HasForeignKey(d => d.Issuer)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("tblBond$Rel_D2545A3E_7141_449E");

                entity.HasOne(d => d.ReferenceIndex)
                    .WithMany(p => p.TblBond)
                    .HasForeignKey(d => new {d.ReferenceIndexKey, d.ReferenceIndexSubKey})
                    .HasConstraintName("FK_tblBond_tblTimeSeriesDef");
            });

            modelBuilder.Entity<TblCalcType>(entity =>
            {
                entity.HasKey(e => e.CalcType);

                entity.ToTable("tblCalcType");

                entity.Property(e => e.CalcType)
                    .HasMaxLength(20)
                    .ValueGeneratedNever();

                entity.Property(e => e.ParAmountPerBond).HasColumnType("money");

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();
            });

            modelBuilder.Entity<TblCalendar>(entity =>
            {
                entity.HasKey(e => e.Calendar);

                entity.ToTable("tblCalendar");

                entity.Property(e => e.Calendar)
                    .HasMaxLength(12)
                    .ValueGeneratedNever();

                entity.Property(e => e.Description).HasMaxLength(50);

                entity.Property(e => e.ExternalKeyWss)
                    .HasColumnName("ExternalKeyWSS")
                    .HasMaxLength(50);

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();
            });

            modelBuilder.Entity<TblCashFlow>(entity =>
            {
                entity.HasKey(e => new {e.Date, e.InstrumentNo, e.PortfolioNo, e.Settled, e.CashFlowSupplKey});

                entity.ToTable("tblCashFlow");

                entity.Property(e => e.Date).HasColumnType("datetime");

                entity.Property(e => e.Settled).HasDefaultValueSql("((1))");

                entity.Property(e => e.CashFlowSupplKey).ValueGeneratedOnAdd();

                entity.Property(e => e.CashFlow)
                    .HasColumnType("money")
                    .HasDefaultValueSql("((0))");

                entity.Property(e => e.CashFlowType)
                    .IsRequired()
                    .HasMaxLength(5)
                    .HasDefaultValueSql("('NIL')");

                entity.Property(e => e.CatransactionId).HasColumnName("CATransactionID");

                entity.Property(e => e.Description).HasMaxLength(255);

                entity.Property(e => e.FilledByKey).HasDefaultValueSql("((0))");

                entity.Property(e => e.FilledByPortfolioNo).HasDefaultValueSql("((0))");

                entity.Property(e => e.FilledByReferenceDate).HasColumnType("datetime");

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();

                entity.HasOne(d => d.CashFlowTypeNavigation)
                    .WithMany(p => p.TblCashFlow)
                    .HasForeignKey(d => d.CashFlowType)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_tblCashFlow_tblCashFlowType");

                entity.HasOne(d => d.Catransaction)
                    .WithMany(p => p.TblCashFlow)
                    .HasForeignKey(d => d.CatransactionId)
                    .HasConstraintName("tblCashFlow$Rel_7F118030_8C5E_45D2");

                entity.HasOne(d => d.FilledByKeyNavigation)
                    .WithMany(p => p.TblCashFlow)
                    .HasForeignKey(d => d.FilledByKey)
                    .HasConstraintName("tblCashFlow$Rel_A39CD6E2_3C0B_4373");

                entity.HasOne(d => d.TblPosition)
                    .WithMany(p => p.TblCashFlow)
                    .HasForeignKey(d => new {d.Date, d.InstrumentNo, d.PortfolioNo, d.Settled})
                    .HasConstraintName("tblCashFlow$Rel_tblPosition");
            });

            modelBuilder.Entity<TblCashFlowType>(entity =>
            {
                entity.HasKey(e => e.CashFlowType);

                entity.ToTable("tblCashFlowType");

                entity.Property(e => e.CashFlowType)
                    .HasMaxLength(5)
                    .ValueGeneratedNever();

                entity.Property(e => e.Description1Eng).HasColumnName("Description1_Eng");

                entity.Property(e => e.Description2Eng).HasColumnName("Description2_Eng");

                entity.Property(e => e.Description3Eng).HasColumnName("Description3_Eng");

                entity.Property(e => e.DescriptionEng).HasColumnName("Description_Eng");
            });

            modelBuilder.Entity<TblCounterpart>(entity =>
            {
                entity.HasKey(e => e.CntprtNo);

                entity.ToTable("tblCounterpart");

                entity.Property(e => e.CntprtNo).ValueGeneratedNever();

                entity.Property(e => e.Active).HasDefaultValueSql("((1))");

                entity.Property(e => e.Address).HasMaxLength(50);

                entity.Property(e => e.Bbkeuro).HasColumnName("BBKEuro");

                entity.Property(e => e.Bbkreserven).HasColumnName("BBKReserven");

                entity.Property(e => e.CheckDate).HasColumnType("datetime");

                entity.Property(e => e.CntprtName).HasMaxLength(100);

                entity.Property(e => e.CntprtNameShort)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.Country)
                    .HasMaxLength(2)
                    .HasDefaultValueSql("('US')");

                entity.Property(e => e.EtdGiven).HasColumnName("ETD_Given");

                entity.Property(e => e.EtdTaken).HasColumnName("ETD_Taken");

                entity.Property(e => e.EuroEmittentBbk).HasColumnName("Euro_Emittent_BBk");

                entity.Property(e => e.Fx).HasColumnName("FX");

                entity.Property(e => e.Generated).HasDefaultValueSql("((0))");

                entity.Property(e => e.GoldLending).HasDefaultValueSql("((0))");

                entity.Property(e => e.Outright).HasDefaultValueSql("((0))");

                entity.Property(e => e.RatingTransfer).HasMaxLength(1);

                entity.Property(e => e.RatingTransferId).HasColumnName("RatingTransferID");

                entity.Property(e => e.RepoLending).HasDefaultValueSql("((0))");

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();

                entity.Property(e => e.TimeDeposit).HasDefaultValueSql("((0))");

                entity.HasOne(d => d.CntprtTypeNavigation)
                    .WithMany(p => p.TblCounterpart)
                    .HasForeignKey(d => d.CntprtType)
                    .HasConstraintName("FK_tblCounterpart_tblCounterpartyType");

                entity.HasOne(d => d.CountryNavigation)
                    .WithMany(p => p.TblCounterpart)
                    .HasForeignKey(d => d.Country)
                    .HasConstraintName("tblCounterpart$Rel_C9B6F020_1D8A_4746");

                entity.HasOne(d => d.ParentNavigation)
                    .WithMany(p => p.InverseParentNavigation)
                    .HasForeignKey(d => d.Parent)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("tblCounterpart$Rel_97D5D755_17DA_45CE");

                entity.HasOne(d => d.RatingTransferNavigation)
                    .WithMany(p => p.InverseRatingTransferNavigation)
                    .HasForeignKey(d => d.RatingTransferId)
                    .HasConstraintName("tblCounterpart$Rel_97D5D755_17DA_17CE2");

                entity.HasOne(d => d.SubParentNavigation)
                    .WithMany(p => p.InverseSubParentNavigation)
                    .HasForeignKey(d => d.SubParent)
                    .HasConstraintName("tblCounterpart$Rel_97D5D755_17DA_17CE");

                entity.HasOne(d => d.UltimateParentNavigation)
                    .WithMany(p => p.InverseUltimateParentNavigation)
                    .HasForeignKey(d => d.UltimateParent)
                    .HasConstraintName("tblCounterpart$Rel_97D5D755_17DA_17CE3");
            });

            modelBuilder.Entity<TblCounterpartyProperty>(entity =>
            {
                entity.HasKey(e => new {e.PropertyId, e.CntprtNo, e.Date});

                entity.ToTable("tblCounterpartyProperty");

                entity.Property(e => e.PropertyId).HasColumnName("PropertyID");

                entity.Property(e => e.Date).HasColumnType("datetime");

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();

                entity.Property(e => e.Unit).HasMaxLength(25);

                entity.Property(e => e.Value)
                    .IsRequired()
                    .HasColumnType("sql_variant");

                entity.HasOne(d => d.CntprtNoNavigation)
                    .WithMany(p => p.TblCounterpartyProperty)
                    .HasForeignKey(d => d.CntprtNo)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_tblCounterpartyProperty_tblCounterpart");
            });

            modelBuilder.Entity<TblCounterpartyType>(entity =>
            {
                entity.HasKey(e => e.CntprtType);

                entity.ToTable("tblCounterpartyType");

                entity.Property(e => e.CntprtType).ValueGeneratedNever();

                entity.Property(e => e.ExternalKey1).HasMaxLength(255);

                entity.Property(e => e.ExternalKey2).HasMaxLength(255);

                entity.Property(e => e.ExternalKey3).HasMaxLength(255);

                entity.Property(e => e.ExternalKey4).HasMaxLength(255);

                entity.Property(e => e.ExternalKey5).HasMaxLength(255);

                entity.Property(e => e.ExternalKey6).HasMaxLength(255);

                entity.Property(e => e.ExternalKey7).HasMaxLength(255);

                entity.Property(e => e.ExternalKey8).HasMaxLength(255);

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();
            });

            modelBuilder.Entity<TblCountry>(entity =>
            {
                entity.HasKey(e => e.Country);

                entity.ToTable("tblCountry");

                entity.Property(e => e.Country)
                    .HasMaxLength(2)
                    .ValueGeneratedNever();

                entity.Property(e => e.Exchange).HasMaxLength(5);

                entity.Property(e => e.ExchangeCurrency).HasMaxLength(5);

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();

                entity.HasOne(d => d.ExchangeCurrencyNavigation)
                    .WithMany(p => p.TblCountry)
                    .HasForeignKey(d => d.ExchangeCurrency)
                    .HasConstraintName("tblCountry$Rel_365708DF_FFC4_42BE");
            });

            modelBuilder.Entity<TblCurrency>(entity =>
            {
                entity.HasKey(e => e.Currency);

                entity.ToTable("tblCurrency");

                entity.Property(e => e.Currency)
                    .HasMaxLength(5)
                    .ValueGeneratedNever();

                entity.Property(e => e.CurrencyName)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.DecimalPlaces).HasDefaultValueSql("((2))");

                entity.Property(e => e.DefaultCalendar).HasMaxLength(12);

                entity.Property(e => e.DefaultYieldCurve).HasMaxLength(50);

                entity.Property(e => e.MaxRoundingError)
                    .HasColumnType("money")
                    .HasDefaultValueSql("((0.01))");

                entity.Property(e => e.MinMarketValueInReturnCalc)
                    .HasColumnType("money")
                    .HasDefaultValueSql("((0))");

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();

                entity.HasOne(d => d.DefaultCalendarNavigation)
                    .WithMany(p => p.TblCurrency)
                    .HasForeignKey(d => d.DefaultCalendar)
                    .HasConstraintName("tblCurrency$Rel_E7F5E762_2387_4441");

                entity.HasOne(d => d.DefaultYieldCurveNavigation)
                    .WithMany(p => p.TblCurrency)
                    .HasForeignKey(d => d.DefaultYieldCurve)
                    .HasConstraintName("tblCurrency$Rel_13807797_C168_4306");
            });

            modelBuilder.Entity<TblDayCount>(entity =>
            {
                entity.HasKey(e => e.DayCount);

                entity.ToTable("tblDayCount");

                entity.Property(e => e.DayCount)
                    .HasMaxLength(20)
                    .ValueGeneratedNever();

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();
            });

            modelBuilder.Entity<TblEquityComposite>(entity =>
            {
                entity.HasKey(e => e.EqCompositeNo);

                entity.ToTable("tblEquityComposite");

                entity.Property(e => e.EqCompositeNo)
                    .HasColumnName("EqCompositeNO")
                    .ValueGeneratedNever();

                entity.Property(e => e.Description).HasMaxLength(255);

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();
            });

            modelBuilder.Entity<TblEquityCorporateAction>(entity =>
            {
                entity.HasKey(e => e.CatransactionId);

                entity.ToTable("tblEquityCorporateAction");

                entity.Property(e => e.CatransactionId).HasColumnName("CATransactionID");

                entity.Property(e => e.AccountingDate)
                    .HasColumnType("datetime")
                    .HasDefaultValueSql("(getdate())");

                entity.Property(e => e.AmountAdj).HasColumnType("decimal(24, 6)");

                entity.Property(e => e.AmountEquity).HasColumnType("decimal(24, 6)");

                entity.Property(e => e.AmountNewInstruments).HasColumnType("decimal(24, 6)");

                entity.Property(e => e.AmountOldInstruments).HasColumnType("decimal(24, 6)");

                entity.Property(e => e.AmountRights).HasColumnType("decimal(24, 6)");

                entity.Property(e => e.Caid).HasColumnName("CAId");

                entity.Property(e => e.CaimportId).HasColumnName("CAImportID");

                entity.Property(e => e.CashAmount).HasColumnType("money");

                entity.Property(e => e.CashAmountPerPcs).HasColumnType("decimal(24, 16)");

                entity.Property(e => e.CashAmountTax).HasColumnType("money");

                entity.Property(e => e.CasubType)
                    .HasColumnName("CASubType")
                    .HasMaxLength(50);

                entity.Property(e => e.CustomFxrate).HasColumnName("CustomFXRate");

                entity.Property(e => e.EqCompositeNo).HasColumnName("EqCompositeNO");

                entity.Property(e => e.Isinadj)
                    .HasColumnName("ISINAdj")
                    .HasMaxLength(12);

                entity.Property(e => e.Isinnew)
                    .HasColumnName("ISINNew")
                    .HasMaxLength(12);

                entity.Property(e => e.Isinright)
                    .HasColumnName("ISINRight")
                    .HasMaxLength(12);

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();

                entity.Property(e => e.StornoTransactionId).HasColumnName("StornoTransactionID");

                entity.Property(e => e.SubscrPrice).HasColumnType("decimal(24, 6)");

                entity.Property(e => e.TaxBaseAmount).HasColumnType("money");

                entity.Property(e => e.TaxId)
                    .HasColumnName("TaxID")
                    .HasMaxLength(20);

                entity.Property(e => e.ValueDate).HasColumnType("datetime");

                entity.HasOne(d => d.Ca)
                    .WithMany(p => p.TblEquityCorporateAction)
                    .HasForeignKey(d => d.Caid)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("tblEquityCorporateAction$Rel_401DCDFF_DB64_4069");

                entity.HasOne(d => d.CasubTypeNavigation)
                    .WithMany(p => p.TblEquityCorporateAction)
                    .HasForeignKey(d => d.CasubType)
                    .HasConstraintName("tblEquityCorporateAction$Rel_A543191D_5D36_4530");

                entity.HasOne(d => d.EqCompositeNoNavigation)
                    .WithMany(p => p.TblEquityCorporateAction)
                    .HasForeignKey(d => d.EqCompositeNo)
                    .HasConstraintName("tblEquityCorporateAction$Rel_7F943E43_1BDF_4191");

                entity.HasOne(d => d.IsinadjNavigation)
                    .WithMany(p => p.TblEquityCorporateActionIsinadjNavigation)
                    .HasPrincipalKey(p => p.Isin)
                    .HasForeignKey(d => d.Isinadj)
                    .HasConstraintName("tblEquityCorporateAction$Rel_D389E9D0_C7E3_4988");

                entity.HasOne(d => d.IsinnewNavigation)
                    .WithMany(p => p.TblEquityCorporateActionIsinnewNavigation)
                    .HasPrincipalKey(p => p.Isin)
                    .HasForeignKey(d => d.Isinnew)
                    .HasConstraintName("tblEquityCorporateAction$Rel_532BE957_4828_4799");

                entity.HasOne(d => d.IsinrightNavigation)
                    .WithMany(p => p.TblEquityCorporateActionIsinrightNavigation)
                    .HasPrincipalKey(p => p.Isin)
                    .HasForeignKey(d => d.Isinright)
                    .HasConstraintName("tblEquityCorporateAction$Rel_C72B4DD7_ADFC_472E");

                entity.HasOne(d => d.Tax)
                    .WithMany(p => p.TblEquityCorporateAction)
                    .HasForeignKey(d => d.TaxId)
                    .HasConstraintName("tblEquityCorporateAction$Rel_87AA8A2C_9051_4287");
            });

            modelBuilder.Entity<TblEquityCorporateActionId>(entity =>
            {
                entity.HasKey(e => e.Caid);

                entity.ToTable("tblEquityCorporateActionID");

                entity.Property(e => e.Caid)
                    .HasColumnName("CAId")
                    .ValueGeneratedNever();

                entity.Property(e => e.Catype)
                    .HasColumnName("CAType")
                    .HasMaxLength(20);

                entity.Property(e => e.EffektiveDate).HasColumnType("datetime");

                entity.Property(e => e.Isin)
                    .IsRequired()
                    .HasColumnName("ISIN")
                    .HasMaxLength(12);

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();

                entity.HasOne(d => d.CatypeNavigation)
                    .WithMany(p => p.TblEquityCorporateActionId)
                    .HasForeignKey(d => d.Catype)
                    .HasConstraintName("tblEquityCorporateActionID$Rel_C2C8EB5D_B045_495D");

                entity.HasOne(d => d.IsinNavigation)
                    .WithMany(p => p.TblEquityCorporateActionId)
                    .HasPrincipalKey(p => p.Isin)
                    .HasForeignKey(d => d.Isin)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("tblEquityCorporateActionID$Rel_5CA0D4E1_FA2F_4A82");
            });

            modelBuilder.Entity<TblEquityCorporateActionSubType>(entity =>
            {
                entity.HasKey(e => e.CasubType);

                entity.ToTable("tblEquityCorporateActionSubType");

                entity.Property(e => e.CasubType)
                    .HasColumnName("CASubType")
                    .HasMaxLength(50)
                    .ValueGeneratedNever();

                entity.Property(e => e.CashFlowType)
                    .IsRequired()
                    .HasMaxLength(5)
                    .HasDefaultValueSql("('NIL')");

                entity.Property(e => e.Description).HasMaxLength(50);

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();

                entity.HasOne(d => d.CashFlowTypeNavigation)
                    .WithMany(p => p.TblEquityCorporateActionSubType)
                    .HasForeignKey(d => d.CashFlowType)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_tblEquityCorporateActionSubType_tblCashFlowType");
            });

            modelBuilder.Entity<TblEquityCorporateActionType>(entity =>
            {
                entity.HasKey(e => e.Catype);

                entity.ToTable("tblEquityCorporateActionType");

                entity.Property(e => e.Catype)
                    .HasColumnName("CAType")
                    .HasMaxLength(20)
                    .ValueGeneratedNever();

                entity.Property(e => e.Description).HasMaxLength(50);

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();
            });

            modelBuilder.Entity<TblEquityInstrument>(entity =>
            {
                entity.HasKey(e => e.InstrumentNo);

                entity.ToTable("tblEquityInstrument");

                entity.HasIndex(e => e.Isin)
                    .HasName("UQ__tblEquit__447D6FC56CB58403")
                    .IsUnique();

                entity.Property(e => e.InstrumentNo).ValueGeneratedNever();

                entity.Property(e => e.CorporationLongName).HasMaxLength(50);

                entity.Property(e => e.CountryCode).HasMaxLength(4);

                entity.Property(e => e.Dax)
                    .HasColumnName("DAX")
                    .HasDefaultValueSql("((0))");

                entity.Property(e => e.DivDax).HasDefaultValueSql("((0))");

                entity.Property(e => e.EuroStoxx50EsgIndex).HasColumnName("EuroStoxx50_ESG_Index");

                entity.Property(e => e.EuroStoxxEsgleaders50).HasColumnName("EuroStoxxESGLeaders50");

                entity.Property(e => e.Exchange).HasMaxLength(5);

                entity.Property(e => e.HasPrice)
                    .HasColumnName("hasPrice")
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.IsCreatedByProgram)
                    .HasColumnName("isCreatedByProgram")
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.Isin)
                    .IsRequired()
                    .HasColumnName("ISIN")
                    .HasMaxLength(12);

                entity.Property(e => e.Issuer).HasDefaultValueSql("((0))");

                entity.Property(e => e.Mdax).HasColumnName("MDAX");

                entity.Property(e => e.MsciAcwi).HasColumnName("MSCI_ACWI");

                entity.Property(e => e.MsciEmergingMarkets).HasColumnName("MSCI_Emerging_Markets");

                entity.Property(e => e.MsciEmergingMarketsSri).HasColumnName("MSCI_Emerging_Markets_SRI");

                entity.Property(e => e.MsciNordicCountries).HasColumnName("MSCI_Nordic_Countries");

                entity.Property(e => e.MsciWorld).HasColumnName("MSCI_World");

                entity.Property(e => e.MsciWorldEsgLeaderLowCarbExTobInv)
                    .HasColumnName("MSCI_World_ESG_Leader_LowCarb_ExTob_Inv");

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.SolactiveIssesgeurozone30).HasColumnName("SolactiveISSESGEurozone30");

                entity.Property(e => e.SolactiveOekomEsgeurozone50).HasColumnName("SolactiveOekomESGEurozone50");

                entity.Property(e => e.SolactiveSwissLargeCap).HasColumnName("Solactive_Swiss_Large_Cap");

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();

                entity.Property(e => e.Stoxx)
                    .HasColumnName("STOXX")
                    .HasDefaultValueSql("((0))");

                entity.Property(e => e.Stoxx600).HasColumnName("STOXX600");

                entity.Property(e => e.StoxxEsgLaenderEurozone).HasColumnName("STOXX_ESG_Laender_Eurozone");

                entity.Property(e => e.StoxxEsgLaenderFossilFreeEurozone)
                    .HasColumnName("STOXX_ESG_Laender_Fossil_Free_Eurozone");

                entity.Property(e => e.StoxxEsgLaenderFossilFreeGlobalExEurozone)
                    .HasColumnName("STOXX_ESG_Laender_Fossil_Free_Global_Ex_Eurozone");

                entity.Property(e => e.StoxxEsgLaenderGlobalExEurozone)
                    .HasColumnName("STOXX_ESG_Laender_Global_Ex_Eurozone");

                entity.Property(e => e.SuP500).HasColumnName("SuP_500");

                entity.Property(e => e.Sus40).HasDefaultValueSql("((0))");

                entity.HasOne(d => d.InstrumentNoNavigation)
                    .WithOne(p => p.TblEquityInstrument)
                    .HasForeignKey<TblEquityInstrument>(d => d.InstrumentNo)
                    .HasConstraintName("tblEquityInstrument$Rel_tblInstrument");
            });

            modelBuilder.Entity<TblEquityTax>(entity =>
            {
                entity.HasKey(e => e.TaxId);

                entity.ToTable("tblEquityTax");

                entity.Property(e => e.TaxId)
                    .HasColumnName("TaxID")
                    .HasMaxLength(20)
                    .ValueGeneratedNever();

                entity.Property(e => e.Description).HasMaxLength(255);

                entity.Property(e => e.ShowInList)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();

                entity.Property(e => e.TaxRate).HasDefaultValueSql("((0))");

                entity.Property(e => e.TaxRefund).HasDefaultValueSql("((0))");

                entity.Property(e => e.TaxRefundRoundingMethod).HasMaxLength(50);

                entity.Property(e => e.TaxRoundingMethod).HasMaxLength(50);

                entity.HasOne(d => d.TaxRefundRoundingMethodNavigation)
                    .WithMany(p => p.TblEquityTaxTaxRefundRoundingMethodNavigation)
                    .HasForeignKey(d => d.TaxRefundRoundingMethod)
                    .HasConstraintName("tblEquityTax$Rel_3FA2C046_E351_4586");

                entity.HasOne(d => d.TaxRoundingMethodNavigation)
                    .WithMany(p => p.TblEquityTaxTaxRoundingMethodNavigation)
                    .HasForeignKey(d => d.TaxRoundingMethod)
                    .HasConstraintName("tblEquityTax$Rel_A89F7540_F3B2_4B51");
            });

            modelBuilder.Entity<TblEquityTaxRounding>(entity =>
            {
                entity.HasKey(e => e.TaxRoundingMethodId);

                entity.ToTable("tblEquityTaxRounding");

                entity.Property(e => e.TaxRoundingMethodId)
                    .HasColumnName("TaxRoundingMethodID")
                    .HasMaxLength(50)
                    .ValueGeneratedNever();

                entity.Property(e => e.Description).HasMaxLength(255);

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();
            });

            modelBuilder.Entity<TblFilledBy>(entity =>
            {
                entity.HasKey(e => e.FilledByKey);

                entity.ToTable("tblFilledBy");

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();

                entity.Property(e => e.Value).HasMaxLength(50);
            });

            modelBuilder.Entity<TblHoliday>(entity =>
            {
                entity.HasKey(e => new {e.Calendar, e.Date});

                entity.ToTable("tblHoliday");

                entity.Property(e => e.Calendar)
                    .HasMaxLength(12)
                    .HasDefaultValueSql("('JP')");

                entity.Property(e => e.Date).HasColumnType("datetime");

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();

                entity.HasOne(d => d.CalendarNavigation)
                    .WithMany(p => p.TblHoliday)
                    .HasForeignKey(d => d.Calendar)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("tblHoliday$Rel_A279B6C3_A19F_408F");
            });

            modelBuilder.Entity<TblHolidayRule>(entity =>
            {
                entity.HasKey(e => e.HolidayRule);

                entity.ToTable("tblHolidayRule");

                entity.Property(e => e.HolidayRule)
                    .HasMaxLength(20)
                    .ValueGeneratedNever();

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();
            });

            modelBuilder.Entity<TblInstrument>(entity =>
            {
                entity.HasKey(e => e.InstrumentNo);

                entity.ToTable("tblInstrument");

                entity.Property(e => e.Currency)
                    .IsRequired()
                    .HasMaxLength(5);

                entity.Property(e => e.InstrumentType)
                    .IsRequired()
                    .HasMaxLength(6);

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();
            });

            modelBuilder.Entity<TblInstrumentUnknown>(entity =>
            {
                entity.HasKey(e => e.InstrumentNo);

                entity.ToTable("tblInstrumentUnknown");

                entity.Property(e => e.InstrumentNo).ValueGeneratedNever();

                entity.Property(e => e.ActiveForRequest)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.IsCreatedByProgram)
                    .HasColumnName("isCreatedByProgram")
                    .HasDefaultValueSql("((0))");

                entity.Property(e => e.Isin)
                    .IsRequired()
                    .HasColumnName("ISIN")
                    .HasMaxLength(20);

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();

                entity.Property(e => e.Warning).HasMaxLength(255);

                entity.HasOne(d => d.InstrumentNoNavigation)
                    .WithOne(p => p.TblInstrumentUnknown)
                    .HasForeignKey<TblInstrumentUnknown>(d => d.InstrumentNo)
                    .HasConstraintName("tblInstrumentUnknown$Rel_tblInstrument");
            });

            modelBuilder.Entity<TblIssuer>(entity =>
            {
                entity.HasKey(e => e.CntprtNo);

                entity.ToTable("tblIssuer");

                entity.Property(e => e.CntprtNo).ValueGeneratedNever();

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();

                entity.HasOne(d => d.CntprtNoNavigation)
                    .WithOne(p => p.TblIssuer)
                    .HasForeignKey<TblIssuer>(d => d.CntprtNo)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("tblIssuer$Rel_F27065D2_6532_4BFF");
            });

            modelBuilder.Entity<TblPortfolio>(entity =>
            {
                entity.HasKey(e => e.PortfolioNo);

                entity.ToTable("tblPortfolio");

                entity.Property(e => e.PortfolioNo).ValueGeneratedNever();

                entity.Property(e => e.AktienPortfolio).HasDefaultValueSql("((0))");

                entity.Property(e => e.CalcAmort).HasDefaultValueSql("((0))");

                entity.Property(e => e.CalcCash).HasDefaultValueSql("((0))");

                entity.Property(e => e.CalcPortfolio).HasDefaultValueSql("((0))");

                entity.Property(e => e.CheckConsitency).HasDefaultValueSql("((0))");

                entity.Property(e => e.CmpHoldingsTransactions).HasDefaultValueSql("((0))");

                entity.Property(e => e.DerivativePortfolio).HasDefaultValueSql("((0))");

                entity.Property(e => e.GenerateCorporateActions).HasDefaultValueSql("((0))");

                entity.Property(e => e.LoadHoldings).HasDefaultValueSql("((0))");

                entity.Property(e => e.LoadPrices).HasDefaultValueSql("((0))");

                entity.Property(e => e.LoadTransactions).HasDefaultValueSql("((0))");

                entity.Property(e => e.OtherPortfolio).HasDefaultValueSql("((1))");

                entity.Property(e => e.PortfolioName).HasMaxLength(255);

                entity.Property(e => e.Sector).HasMaxLength(50);

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();

                entity.Property(e => e.StdCalcAmort).HasDefaultValueSql("((0))");

                entity.Property(e => e.StdCalcCash).HasDefaultValueSql("((0))");

                entity.Property(e => e.StdCalcPortfolio).HasDefaultValueSql("((0))");

                entity.Property(e => e.StdCheckConsitency).HasDefaultValueSql("((0))");

                entity.Property(e => e.StdCmpHoldingsTransactions).HasDefaultValueSql("((0))");

                entity.Property(e => e.StdGenerateCorporateActions).HasDefaultValueSql("((0))");

                entity.Property(e => e.StdLoadHoldings).HasDefaultValueSql("((0))");

                entity.Property(e => e.StdLoadPrices).HasDefaultValueSql("((0))");

                entity.Property(e => e.StdLoadTransactions).HasDefaultValueSql("((0))");
            });

            modelBuilder.Entity<TblPortfolioKey>(entity =>
            {
                entity.HasKey(e => new {e.PortfolioNo, e.PortfolioKey, e.Value});

                entity.ToTable("tblPortfolioKey");

                entity.Property(e => e.PortfolioKey).HasMaxLength(50);

                entity.Property(e => e.Value).HasMaxLength(255);

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();

                entity.HasOne(d => d.PortfolioKeyNavigation)
                    .WithMany(p => p.TblPortfolioKey)
                    .HasForeignKey(d => d.PortfolioKey)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_tblPortfolioKey_tblPortfolioKeyType");
            });

            modelBuilder.Entity<TblPortfolioKeyType>(entity =>
            {
                entity.HasKey(e => e.PortfolioKey);

                entity.ToTable("tblPortfolioKeyType");

                entity.Property(e => e.PortfolioKey)
                    .HasMaxLength(50)
                    .ValueGeneratedNever();

                entity.Property(e => e.Description)
                    .IsRequired()
                    .HasMaxLength(255);

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();
            });

            modelBuilder.Entity<TblPosition>(entity =>
            {
                entity.HasKey(e => new {e.Date, e.InstrumentNo, e.PortfolioNo, e.Settled});

                entity.ToTable("tblPosition");

                entity.Property(e => e.Date).HasColumnType("datetime");

                entity.Property(e => e.Amount).HasColumnType("money");

                entity.Property(e => e.CashFlow).HasColumnType("money");

                entity.Property(e => e.CashFlowTradeDate).HasColumnType("money");

                entity.Property(e => e.CleanMarketValue).HasColumnType("money");

                entity.Property(e => e.MarketValue).HasColumnType("money");

                entity.Property(e => e.MarketValueTradeDate).HasColumnType("money");

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();

                entity.HasOne(d => d.InstrumentNoNavigation)
                    .WithMany(p => p.TblPosition)
                    .HasForeignKey(d => d.InstrumentNo)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_tblPosition_tblInstrument");
            });

            modelBuilder.Entity<TblProperty>(entity =>
            {
                entity.HasKey(e => e.PropertyId);

                entity.ToTable("tblProperty");

                entity.HasIndex(e => e.Property)
                    .HasName("tblProperty_Property_unique")
                    .IsUnique();

                entity.Property(e => e.PropertyId)
                    .HasColumnName("PropertyID")
                    .ValueGeneratedNever();

                entity.Property(e => e.ActiveForInheritance).HasDefaultValueSql("((0))");

                entity.Property(e => e.ExternalKey).HasMaxLength(50);

                entity.Property(e => e.Property)
                    .IsRequired()
                    .HasMaxLength(100);

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();

                entity.Property(e => e.StdActiveForInheritance).HasDefaultValueSql("((0))");
            });

            modelBuilder.Entity<TblReferenceRateDef>(entity =>
            {
                entity.HasKey(e => e.ReferenceRate);

                entity.ToTable("tblReferenceRateDef");

                entity.Property(e => e.ReferenceRate)
                    .HasMaxLength(50)
                    .ValueGeneratedNever();

                entity.Property(e => e.BloombergDate)
                    .HasMaxLength(50)
                    .HasDefaultValueSql("('Letzter Geschäftstag')");

                entity.Property(e => e.BloombergField).HasMaxLength(50);

                entity.Property(e => e.BloombergFieldSec).HasMaxLength(50);

                entity.Property(e => e.BloombergKey).HasMaxLength(50);

                entity.Property(e => e.BloombergKeySec).HasMaxLength(50);

                entity.Property(e => e.Calendar).HasMaxLength(12);

                entity.Property(e => e.Currency)
                    .IsRequired()
                    .HasMaxLength(5)
                    .HasDefaultValueSql("('USD')");

                entity.Property(e => e.DayCount)
                    .IsRequired()
                    .HasMaxLength(20)
                    .HasDefaultValueSql("('act/360')");

                entity.Property(e => e.DiscountRate).HasDefaultValueSql("((0))");

                entity.Property(e => e.MaxAbsNominal).HasColumnType("money");

                entity.Property(e => e.MinAbsNominal).HasColumnType("money");

                entity.Property(e => e.ParentReferenceRate).HasMaxLength(50);

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();

                entity.Property(e => e.TimeToMaturity).HasDefaultValueSql("((0))");

                entity.Property(e => e.UnitOfTime).HasMaxLength(1);

                entity.Property(e => e.ZeroRate).HasDefaultValueSql("((1))");

                entity.HasOne(d => d.CalendarNavigation)
                    .WithMany(p => p.TblReferenceRateDef)
                    .HasForeignKey(d => d.Calendar)
                    .HasConstraintName("tblReferenceRateDef$Rel_0A86725C_83B0_4CB5");

                entity.HasOne(d => d.CurrencyNavigation)
                    .WithMany(p => p.TblReferenceRateDef)
                    .HasForeignKey(d => d.Currency)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("tblReferenceRateDef$Rel_E7F5E762_2387_4441");

                entity.HasOne(d => d.DayCountNavigation)
                    .WithMany(p => p.TblReferenceRateDef)
                    .HasForeignKey(d => d.DayCount)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("tblReferenceRateDef$Rel_8E9C5191_BB63_496E");

                entity.HasOne(d => d.ParentReferenceRateNavigation)
                    .WithMany(p => p.InverseParentReferenceRateNavigation)
                    .HasForeignKey(d => d.ParentReferenceRate)
                    .HasConstraintName("tblReferenceRateDef$ParentReferenceRate");

                entity.HasOne(d => d.UnitOfTimeNavigation)
                    .WithMany(p => p.TblReferenceRateDef)
                    .HasForeignKey(d => d.UnitOfTime)
                    .HasConstraintName("tblReferenceRateDef$Rel_47872719_DE0A_4A33");
            });

            modelBuilder.Entity<TblRepoHoldings>(entity =>
            {
                entity.HasKey(e => e.HoldingId);

                entity.ToTable("tblRepoHoldings");

                entity.Property(e => e.HoldingId).HasColumnName("HoldingID");

                entity.Property(e => e.AmountSettled).HasColumnType("money");

                entity.Property(e => e.AmountTrade).HasColumnType("money");

                entity.Property(e => e.DepotNo)
                    .IsRequired()
                    .HasMaxLength(15);

                entity.Property(e => e.FileDate).HasColumnType("datetime");

                entity.Property(e => e.HoldingDate).HasColumnType("datetime");

                entity.Property(e => e.IsLoadedFromFile).HasColumnName("isLoadedFromFile");

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();

                entity.Property(e => e.Warning).HasMaxLength(255);

                entity.HasOne(d => d.InstrumentNoNavigation)
                    .WithMany(p => p.TblRepoHoldings)
                    .HasForeignKey(d => d.InstrumentNo)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_tblRepoHoldings_InstrumentNo");

                entity.HasOne(d => d.PortfolioNoNavigation)
                    .WithMany(p => p.TblRepoHoldings)
                    .HasForeignKey(d => d.PortfolioNo)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_tblRepoHoldings_PortfolioNo");
            });

            modelBuilder.Entity<TblRepoLend>(entity =>
            {
                entity.HasKey(e => e.InstrumentNo);

                entity.ToTable("tblRepoLend");

                entity.Property(e => e.InstrumentNo).ValueGeneratedNever();

                entity.Property(e => e.Amount)
                    .HasColumnType("money")
                    .HasDefaultValueSql("((0))");

                entity.Property(e => e.AmountInOtherCurrency).HasColumnType("money");

                entity.Property(e => e.CalcType)
                    .IsRequired()
                    .HasMaxLength(20);

                entity.Property(e => e.Calendar)
                    .IsRequired()
                    .HasMaxLength(12);

                entity.Property(e => e.CaptureTime).HasColumnType("datetime");

                entity.Property(e => e.CollateralClass)
                    .IsRequired()
                    .HasMaxLength(4)
                    .HasDefaultValueSql("('TREA')");

                entity.Property(e => e.Counterpart).HasDefaultValueSql("((0))");

                entity.Property(e => e.DayCount)
                    .IsRequired()
                    .HasMaxLength(20);

                entity.Property(e => e.DealFxrate)
                    .HasColumnName("DealFXRate")
                    .HasColumnType("decimal(18, 10)");

                entity.Property(e => e.ExternalKey3).HasMaxLength(50);

                entity.Property(e => e.Interest)
                    .HasColumnType("money")
                    .HasDefaultValueSql("((0))");

                entity.Property(e => e.InterestRate).HasColumnType("decimal(18, 10)");

                entity.Property(e => e.Isin)
                    .HasColumnName("ISIN")
                    .HasMaxLength(12);

                entity.Property(e => e.MaturityDate).HasColumnType("datetime");

                entity.Property(e => e.Nominal).HasColumnType("money");

                entity.Property(e => e.OtherCurrency).HasMaxLength(5);

                entity.Property(e => e.Price).HasColumnType("decimal(18, 10)");

                entity.Property(e => e.SettleInterest).HasDefaultValueSql("((1))");

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();

                entity.Property(e => e.TradeDate).HasColumnType("datetime");

                entity.Property(e => e.TradeTime).HasColumnType("datetime");

                entity.Property(e => e.ValueDate).HasColumnType("datetime");

                entity.Property(e => e.Warning).HasMaxLength(255);

                entity.HasOne(d => d.FollowUpToNavigation)
                    .WithMany(p => p.InverseFollowUpToNavigation)
                    .HasForeignKey(d => d.FollowUpTo)
                    .HasConstraintName("tblRepoLend$Rel_09883BB1_51EC_40D4");

                entity.HasOne(d => d.PortfolioNoNavigation)
                    .WithMany(p => p.TblRepoLend)
                    .HasForeignKey(d => d.PortfolioNo)
                    .HasConstraintName("tblRepoLend$Rel_1E756622_191A_40B1");

                entity.HasOne(d => d.SecurityInstrumentNoNavigation)
                    .WithMany(p => p.TblRepoLend)
                    .HasForeignKey(d => d.SecurityInstrumentNo)
                    .HasConstraintName("FK_tblRepoLend_SecurityInstrumentNo");
            });

            modelBuilder.Entity<TblTimeSeriesDef>(entity =>
            {
                entity.HasKey(e => new {e.TimeSeriesKey, e.TimeSeriesSubKey});

                entity.ToTable("tblTimeSeriesDef");

                entity.Property(e => e.TimeSeriesKey)
                    .HasMaxLength(64)
                    .IsUnicode(false);

                entity.Property(e => e.TimeSeriesSubKey)
                    .HasMaxLength(64)
                    .IsUnicode(false);

                entity.Property(e => e.FormatCode).HasMaxLength(10);

                entity.Property(e => e.Level1)
                    .IsRequired()
                    .HasMaxLength(64)
                    .IsUnicode(false)
                    .HasDefaultValueSql("('*')");

                entity.Property(e => e.Level2)
                    .IsRequired()
                    .HasMaxLength(64)
                    .IsUnicode(false)
                    .HasDefaultValueSql("('*')");

                entity.Property(e => e.Level3)
                    .IsRequired()
                    .HasMaxLength(64)
                    .IsUnicode(false)
                    .HasDefaultValueSql("('*')");

                entity.Property(e => e.Level3Description1).HasColumnName("Level3_Description1");

                entity.Property(e => e.Level4)
                    .IsRequired()
                    .HasMaxLength(64)
                    .IsUnicode(false)
                    .HasDefaultValueSql("('*')");

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();

                entity.Property(e => e.TimeSeriesCategory)
                    .HasMaxLength(64)
                    .IsUnicode(false);

                entity.Property(e => e.TimeSeriesId)
                    .HasColumnName("TimeSeriesID")
                    .ValueGeneratedOnAdd();
            });

            modelBuilder.Entity<TblTransactionCounterpartMapping>(entity =>
            {
                entity.HasKey(e => new {e.SystemId, e.SystemKey});

                entity.ToTable("tblTransactionCounterpartMapping");

                entity.Property(e => e.SystemId)
                    .HasColumnName("SystemID")
                    .HasMaxLength(50);

                entity.Property(e => e.SystemKey).HasMaxLength(50);

                entity.Property(e => e.RicsCntprtNo).HasDefaultValueSql("((0))");

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();

                entity.HasOne(d => d.RicsCntprtNoNavigation)
                    .WithMany(p => p.TblTransactionCounterpartMapping)
                    .HasForeignKey(d => d.RicsCntprtNo)
                    .HasConstraintName("tblTransactionCounterpartMapping$Rel_2282913F_C4B0_47FF");
            });

            modelBuilder.Entity<TblUnitofTime>(entity =>
            {
                entity.HasKey(e => e.UnitOfTime);

                entity.ToTable("tblUnitofTime");

                entity.Property(e => e.UnitOfTime)
                    .HasMaxLength(1)
                    .ValueGeneratedNever();

                entity.Property(e => e.Description).HasMaxLength(50);

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();
            });

            modelBuilder.Entity<TblWarning>(entity =>
            {
                entity.HasKey(e => e.WarningNo);

                entity.ToTable("tblWarning");

                entity.Property(e => e.Date).HasColumnType("datetime");

                entity.Property(e => e.FunctionSub).HasMaxLength(50);

                entity.Property(e => e.Module).HasMaxLength(30);

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();

                entity.Property(e => e.UserWarning).HasMaxLength(20);
            });

            modelBuilder.Entity<TblYieldCurveDef>(entity =>
            {
                entity.HasKey(e => e.YieldCurve);

                entity.ToTable("tblYieldCurveDef");

                entity.Property(e => e.YieldCurve)
                    .HasMaxLength(50)
                    .ValueGeneratedNever();

                entity.Property(e => e.CalcType).HasMaxLength(20);

                entity.Property(e => e.Currency)
                    .IsRequired()
                    .HasMaxLength(5)
                    .HasDefaultValueSql("('USD')");

                entity.Property(e => e.DayCount)
                    .IsRequired()
                    .HasMaxLength(20)
                    .HasDefaultValueSql("('act/360')");

                entity.Property(e => e.SsmaTimeStamp)
                    .IsRequired()
                    .HasColumnName("SSMA_TimeStamp")
                    .IsRowVersion();

                entity.HasOne(d => d.CalcTypeNavigation)
                    .WithMany(p => p.TblYieldCurveDef)
                    .HasForeignKey(d => d.CalcType)
                    .HasConstraintName("tblYieldCurveDef$Rel_B3980F8A_654F_4B87");

                entity.HasOne(d => d.CurrencyNavigation)
                    .WithMany(p => p.TblYieldCurveDef)
                    .HasForeignKey(d => d.Currency)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("tblYieldCurveDef$Rel_05B99759_DB91_4240");

                entity.HasOne(d => d.DayCountNavigation)
                    .WithMany(p => p.TblYieldCurveDef)
                    .HasForeignKey(d => d.DayCount)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("tblYieldCurveDef$Rel_5FF7EADF_EAA0_434B");
            });
        }
    }
}