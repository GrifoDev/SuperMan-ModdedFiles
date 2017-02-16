.class public Ljava/util/GregorianCalendar;
.super Ljava/util/Calendar;
.source "GregorianCalendar.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final AD:I = 0x1

.field public static final BC:I = 0x0

.field static final BCE:I = 0x0

.field static final CE:I = 0x1

.field static final DEFAULT_GREGORIAN_CUTOVER:J = -0xb1d069b5400L

.field private static final EPOCH_OFFSET:I = 0xaf93b

.field private static final EPOCH_YEAR:I = 0x7b2

.field static final LEAP_MONTH_LENGTH:[I

.field static final LEAST_MAX_VALUES:[I

.field static final MAX_VALUES:[I

.field static final MIN_VALUES:[I

.field static final MONTH_LENGTH:[I

.field private static final ONE_DAY:J = 0x5265c00L

.field private static final ONE_HOUR:I = 0x36ee80

.field private static final ONE_MINUTE:I = 0xea60

.field private static final ONE_SECOND:I = 0x3e8

.field private static final ONE_WEEK:J = 0x240c8400L

.field private static final gcal:Lsun/util/calendar/Gregorian;

.field private static jcal:Lsun/util/calendar/JulianCalendar; = null

.field private static jeras:[Lsun/util/calendar/Era; = null

.field static final serialVersionUID:J = -0x70c228291a4f2f3fL


# instance fields
.field private transient cachedFixedDate:J

.field private transient calsys:Lsun/util/calendar/BaseCalendar;

.field private transient cdate:Lsun/util/calendar/BaseCalendar$Date;

.field private transient gdate:Lsun/util/calendar/BaseCalendar$Date;

.field private gregorianCutover:J

.field private transient gregorianCutoverDate:J

.field private transient gregorianCutoverYear:I

.field private transient gregorianCutoverYearJulian:I

.field private transient originalFields:[I

.field private transient zoneOffsets:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xc

    const/16 v1, 0x11

    const-class v0, Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    .line 399
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 398
    sput-object v0, Ljava/util/GregorianCalendar;->MONTH_LENGTH:[I

    .line 401
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    .line 400
    sput-object v0, Ljava/util/GregorianCalendar;->LEAP_MONTH_LENGTH:[I

    .line 437
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Ljava/util/GregorianCalendar;->MIN_VALUES:[I

    .line 456
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Ljava/util/GregorianCalendar;->LEAST_MAX_VALUES:[I

    .line 475
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Ljava/util/GregorianCalendar;->MAX_VALUES:[I

    .line 500
    invoke-static {}, Lsun/util/calendar/CalendarSystem;->getGregorianCalendar()Lsun/util/calendar/Gregorian;

    move-result-object v0

    .line 499
    sput-object v0, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    .line 328
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 399
    nop

    :array_0
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data

    .line 401
    :array_1
    .array-data 4
        0x1f
        0x1d
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data

    .line 437
    :array_2
    .array-data 4
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x2ca1c80
        0x0
    .end array-data

    .line 456
    :array_3
    .array-data 4
        0x1
        0x116babfe
        0xb
        0x34
        0x4
        0x1c
        0x16d
        0x7
        0x4
        0x1
        0xb
        0x17
        0x3b
        0x3b
        0x3e7
        0x3010b00
        0x124f80
    .end array-data

    .line 475
    :array_4
    .array-data 4
        0x1
        0x116bd2d2
        0xb
        0x35
        0x6
        0x1f
        0x16e
        0x7
        0x6
        0x1
        0xb
        0x17
        0x3b
        0x3b
        0x3e7
        0x3010b00
        0x6ddd00
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 587
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v0

    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 588
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->setZoneShared(Z)V

    .line 586
    return-void
.end method

.method public constructor <init>(III)V
    .locals 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    move v7, v4

    .line 635
    invoke-direct/range {v0 .. v7}, Ljava/util/GregorianCalendar;-><init>(IIIIIII)V

    .line 634
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I

    .prologue
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    .line 653
    invoke-direct/range {v0 .. v7}, Ljava/util/GregorianCalendar;-><init>(IIIIIII)V

    .line 652
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I

    .prologue
    .line 673
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Ljava/util/GregorianCalendar;-><init>(IIIIIII)V

    .line 672
    return-void
.end method

.method constructor <init>(IIIIIII)V
    .locals 6
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .param p7, "millis"    # I

    .prologue
    const/16 v5, 0x62e

    const/16 v4, 0xc

    const/16 v3, 0xa

    const/4 v2, 0x1

    .line 694
    invoke-direct {p0}, Ljava/util/Calendar;-><init>()V

    .line 524
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 530
    const-wide/32 v0, 0x8d0c8

    .line 529
    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .line 536
    iput v5, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    .line 542
    iput v5, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    .line 2228
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    .line 695
    sget-object v0, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    iput-object v0, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 696
    invoke-virtual {p0, v2, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 697
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 698
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 702
    if-lt p4, v4, :cond_0

    const/16 v0, 0x17

    if-gt p4, v0, :cond_0

    .line 706
    const/16 v0, 0x9

    invoke-virtual {p0, v0, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 707
    add-int/lit8 v0, p4, -0xc

    invoke-virtual {p0, v3, v0}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 714
    :goto_0
    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->setFieldsComputed(I)V

    .line 716
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 717
    invoke-virtual {p0, v4, p5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 718
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 721
    const/16 v0, 0xe

    invoke-virtual {p0, v0, p7}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 693
    return-void

    .line 711
    :cond_0
    invoke-virtual {p0, v3, p4}, Ljava/util/GregorianCalendar;->internalSet(II)V

    goto :goto_0
.end method

.method constructor <init>(J)V
    .locals 1
    .param p1, "milliseconds"    # J

    .prologue
    .line 725
    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 726
    invoke-virtual {p0, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 724
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "aLocale"    # Ljava/util/Locale;

    .prologue
    .line 608
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 609
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->setZoneShared(Z)V

    .line 607
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 598
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 597
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 3
    .param p1, "zone"    # Ljava/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    .prologue
    const/16 v2, 0x62e

    .line 620
    invoke-direct {p0, p1, p2}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 524
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 530
    const-wide/32 v0, 0x8d0c8

    .line 529
    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .line 536
    iput v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    .line 542
    iput v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    .line 2228
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    .line 621
    sget-object v0, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v0, p1}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    iput-object v0, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 622
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 619
    return-void
.end method

.method private final actualMonthLength()I
    .locals 10

    .prologue
    .line 3230
    iget-object v8, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v8}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v1

    .line 3231
    .local v1, "year":I
    iget v8, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-eq v1, v8, :cond_0

    iget v8, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-eq v1, v8, :cond_0

    .line 3232
    iget-object v8, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    iget-object v9, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v8, v9}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v8

    return v8

    .line 3234
    :cond_0
    iget-object v8, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v8}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    .line 3235
    .local v0, "date":Lsun/util/calendar/BaseCalendar$Date;
    iget-object v8, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    invoke-virtual {v8, v0}, Lsun/util/calendar/BaseCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v2

    .line 3236
    .local v2, "fd":J
    invoke-direct {p0, v0, v2, v3}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v4

    .line 3237
    .local v4, "month1":J
    iget-object v8, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    invoke-virtual {v8, v0}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v8

    int-to-long v8, v8

    add-long v6, v4, v8

    .line 3238
    .local v6, "next1":J
    iget-wide v8, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v8, v6, v8

    if-gez v8, :cond_1

    .line 3239
    sub-long v8, v6, v4

    long-to-int v8, v8

    return v8

    .line 3241
    :cond_1
    iget-object v8, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    iget-object v9, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eq v8, v9, :cond_2

    .line 3242
    sget-object v8, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    sget-object v9, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v8, v9}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    .line 3244
    :cond_2
    sget-object v8, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v8, v0, v6, v7}, Lsun/util/calendar/Gregorian;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 3245
    invoke-direct {p0, v0, v6, v7}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v6

    .line 3246
    sub-long v8, v6, v4

    long-to-int v8, v8

    return v8
.end method

.method private adjustDstOffsetForInvalidWallClock(JLjava/util/TimeZone;I)I
    .locals 5
    .param p1, "standardTimeInZone"    # J
    .param p3, "zone"    # Ljava/util/TimeZone;
    .param p4, "dstOffset"    # I

    .prologue
    .line 2917
    if-eqz p4, :cond_0

    .line 2920
    new-instance v0, Ljava/util/Date;

    int-to-long v2, p4

    sub-long v2, p1, v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2921
    const/4 p4, 0x0

    .line 2924
    :cond_0
    return p4
.end method

.method private adjustForZoneAndDaylightSavingsTime(IJLjava/util/TimeZone;)J
    .locals 14
    .param p1, "tzMask"    # I
    .param p2, "utcTimeInMillis"    # J
    .param p4, "zone"    # Ljava/util/TimeZone;

    .prologue
    const/16 v12, 0x10

    const/4 v11, 0x0

    const/16 v10, 0xf

    .line 2816
    const/4 v7, 0x0

    .line 2817
    .local v7, "zoneOffset":I
    const/4 v2, 0x0

    .line 2821
    .local v2, "dstOffset":I
    const v8, 0x18000

    if-eq p1, v8, :cond_1

    .line 2822
    iget-object v8, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    if-nez v8, :cond_0

    .line 2823
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    .line 2825
    :cond_0
    invoke-static {p1, v10}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2826
    invoke-virtual {p0, v10}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    .line 2834
    .local v3, "gmtOffset":I
    :goto_0
    int-to-long v8, v3

    sub-long v4, p2, v8

    .line 2837
    .local v4, "standardTimeInZone":J
    move-object/from16 v0, p4

    instance-of v8, v0, Llibcore/util/ZoneInfo;

    if-eqz v8, :cond_5

    move-object/from16 v6, p4

    .line 2838
    check-cast v6, Llibcore/util/ZoneInfo;

    .line 2839
    .local v6, "zoneInfo":Llibcore/util/ZoneInfo;
    iget-object v8, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    invoke-virtual {v6, v4, v5, v8}, Llibcore/util/ZoneInfo;->getOffsetsByUtcTime(J[I)I

    .line 2843
    .end local v6    # "zoneInfo":Llibcore/util/ZoneInfo;
    :goto_1
    iget-object v8, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    aget v7, v8, v11

    .line 2844
    iget-object v8, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    const/4 v9, 0x1

    aget v2, v8, v9

    .line 2847
    move-object/from16 v0, p4

    invoke-direct {p0, v4, v5, v0, v2}, Ljava/util/GregorianCalendar;->adjustDstOffsetForInvalidWallClock(JLjava/util/TimeZone;I)I

    move-result v2

    .line 2852
    .end local v3    # "gmtOffset":I
    .end local v4    # "standardTimeInZone":J
    :cond_1
    if-eqz p1, :cond_3

    .line 2853
    invoke-static {p1, v10}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2854
    invoke-virtual {p0, v10}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v7

    .line 2856
    :cond_2
    invoke-static {p1, v12}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2857
    invoke-virtual {p0, v12}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    .line 2862
    :cond_3
    int-to-long v8, v7

    sub-long v4, p2, v8

    .line 2863
    .restart local v4    # "standardTimeInZone":J
    int-to-long v8, v2

    sub-long v8, v4, v8

    return-wide v8

    .line 2826
    .end local v4    # "standardTimeInZone":J
    :cond_4
    invoke-virtual/range {p4 .. p4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    goto :goto_0

    .line 2841
    .restart local v3    # "gmtOffset":I
    .restart local v4    # "standardTimeInZone":J
    :cond_5
    iget-object v8, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5, v8}, Ljava/util/TimeZone;->getOffsets(J[I)I

    goto :goto_1
.end method

.method private computeFields(II)I
    .locals 50
    .param p1, "fieldMask"    # I
    .param p2, "tzMask"    # I

    .prologue
    .line 2275
    const/16 v42, 0x0

    .line 2276
    .local v42, "zoneOffset":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v38

    .line 2277
    .local v38, "tz":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    move-object/from16 v43, v0

    if-nez v43, :cond_0

    .line 2278
    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    .line 2280
    :cond_0
    const v43, 0x18000

    move/from16 v0, p2

    move/from16 v1, v43

    if-eq v0, v1, :cond_1

    .line 2281
    move-object/from16 v0, v38

    instance-of v0, v0, Llibcore/util/ZoneInfo;

    move/from16 v43, v0

    if-eqz v43, :cond_6

    move-object/from16 v41, v38

    .line 2282
    check-cast v41, Llibcore/util/ZoneInfo;

    .line 2283
    .local v41, "zoneInfo":Llibcore/util/ZoneInfo;
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    move-wide/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    move-object/from16 v43, v0

    move-object/from16 v0, v41

    move-wide/from16 v1, v44

    move-object/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Llibcore/util/ZoneInfo;->getOffsetsByUtcTime(J[I)I

    move-result v42

    .line 2290
    .end local v41    # "zoneInfo":Llibcore/util/ZoneInfo;
    :cond_1
    :goto_0
    if-eqz p2, :cond_4

    .line 2291
    const/16 v43, 0xf

    move/from16 v0, p2

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v43

    if-eqz v43, :cond_2

    .line 2292
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    move-object/from16 v43, v0

    const/16 v44, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v44

    const/16 v45, 0x0

    aput v44, v43, v45

    .line 2294
    :cond_2
    const/16 v43, 0x10

    move/from16 v0, p2

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v43

    if-eqz v43, :cond_3

    .line 2295
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    move-object/from16 v43, v0

    const/16 v44, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v44

    const/16 v45, 0x1

    aput v44, v43, v45

    .line 2297
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    move-object/from16 v43, v0

    const/16 v44, 0x0

    aget v43, v43, v44

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    move-object/from16 v44, v0

    const/16 v45, 0x1

    aget v44, v44, v45

    add-int v42, v43, v44

    .line 2303
    :cond_4
    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v44, v0

    const-wide/32 v46, 0x5265c00

    div-long v14, v44, v46

    .line 2304
    .local v14, "fixedDate":J
    const v43, 0x5265c00

    rem-int v37, v42, v43

    .line 2305
    .local v37, "timeOfDay":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    move-wide/from16 v44, v0

    const-wide/32 v46, 0x5265c00

    div-long v44, v44, v46

    add-long v14, v14, v44

    .line 2306
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    move-wide/from16 v44, v0

    const-wide/32 v46, 0x5265c00

    rem-long v44, v44, v46

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v43, v0

    add-int v37, v37, v43

    .line 2307
    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v44, v0

    const-wide/32 v46, 0x5265c00

    cmp-long v43, v44, v46

    if-ltz v43, :cond_7

    .line 2308
    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v44, v0

    const-wide/32 v46, 0x5265c00

    sub-long v44, v44, v46

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v37, v0

    .line 2309
    const-wide/16 v44, 0x1

    add-long v14, v14, v44

    .line 2316
    :cond_5
    const-wide/32 v44, 0xaf93b

    add-long v14, v14, v44

    .line 2318
    const/4 v12, 0x1

    .line 2320
    .local v12, "era":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v44, v0

    cmp-long v43, v14, v44

    if-ltz v43, :cond_10

    .line 2322
    sget-boolean v43, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v43, :cond_9

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    move-wide/from16 v44, v0

    const-wide/high16 v46, -0x8000000000000000L

    cmp-long v43, v44, v46

    if-eqz v43, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->isNormalized()Z

    move-result v43

    :goto_1
    if-nez v43, :cond_9

    new-instance v43, Ljava/lang/AssertionError;

    .line 2323
    const-string/jumbo v44, "cache control: not normalized"

    .line 2322
    invoke-direct/range {v43 .. v44}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v43

    .line 2285
    .end local v12    # "era":I
    .end local v14    # "fixedDate":J
    .end local v37    # "timeOfDay":I
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    move-wide/from16 v44, v0

    move-object/from16 v0, v38

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v42

    .line 2286
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    move-object/from16 v43, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v44

    const/16 v45, 0x0

    aput v44, v43, v45

    .line 2287
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aget v44, v44, v45

    sub-int v44, v42, v44

    const/16 v45, 0x1

    aput v44, v43, v45

    goto/16 :goto_0

    .line 2311
    .restart local v14    # "fixedDate":J
    .restart local v37    # "timeOfDay":I
    :cond_7
    :goto_2
    if-gez v37, :cond_5

    .line 2312
    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v44, v0

    const-wide/32 v46, 0x5265c00

    add-long v44, v44, v46

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v37, v0

    .line 2313
    const-wide/16 v44, 0x1

    sub-long v14, v14, v44

    goto :goto_2

    .line 2322
    .restart local v12    # "era":I
    :cond_8
    const/16 v43, 0x1

    goto :goto_1

    .line 2324
    :cond_9
    sget-boolean v43, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v43, :cond_c

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    move-wide/from16 v44, v0

    const-wide/high16 v46, -0x8000000000000000L

    cmp-long v43, v44, v46

    if-eqz v43, :cond_a

    .line 2325
    sget-object v43, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v44

    .line 2326
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v45

    .line 2327
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v47, v0

    .line 2325
    invoke-virtual/range {v43 .. v47}, Lsun/util/calendar/Gregorian;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v44

    .line 2328
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    move-wide/from16 v46, v0

    .line 2325
    cmp-long v43, v44, v46

    if-nez v43, :cond_b

    const/16 v43, 0x1

    .line 2324
    :goto_3
    if-nez v43, :cond_c

    new-instance v43, Ljava/lang/AssertionError;

    .line 2329
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "cache control: inconsictency, cachedFixedDate="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 2330
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    move-wide/from16 v46, v0

    .line 2329
    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 2331
    const-string/jumbo v45, ", computed="

    .line 2329
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 2332
    sget-object v45, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v46

    .line 2333
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v47

    .line 2334
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v48

    .line 2335
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v49, v0

    .line 2332
    invoke-virtual/range {v45 .. v49}, Lsun/util/calendar/Gregorian;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v46

    .line 2329
    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 2336
    const-string/jumbo v45, ", date="

    .line 2329
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 2336
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v45, v0

    .line 2329
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 2324
    invoke-direct/range {v43 .. v44}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v43

    :cond_a
    const/16 v43, 0x1

    goto :goto_3

    .line 2325
    :cond_b
    const/16 v43, 0x0

    goto :goto_3

    .line 2339
    :cond_c
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    move-wide/from16 v44, v0

    cmp-long v43, v14, v44

    if-eqz v43, :cond_d

    .line 2340
    sget-object v43, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v0, v1, v14, v15}, Lsun/util/calendar/Gregorian;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 2341
    move-object/from16 v0, p0

    iput-wide v14, v0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    .line 2344
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v40

    .line 2345
    .local v40, "year":I
    if-gtz v40, :cond_e

    .line 2346
    rsub-int/lit8 v40, v40, 0x1

    .line 2347
    const/4 v12, 0x0

    .line 2349
    :cond_e
    sget-object v43, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    .line 2350
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 2351
    sget-boolean v43, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v43, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    move-result v43

    if-lez v43, :cond_f

    const/16 v43, 0x1

    :goto_4
    if-nez v43, :cond_12

    new-instance v43, Ljava/lang/AssertionError;

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "dow="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, ", date="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v43

    :cond_f
    const/16 v43, 0x0

    goto :goto_4

    .line 2354
    .end local v40    # "year":I
    :cond_10
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    .line 2355
    sget-object v43, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lsun/util/calendar/JulianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 2356
    sget-object v43, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v0, v1, v14, v15}, Lsun/util/calendar/JulianCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 2357
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v11

    .line 2358
    .local v11, "e":Lsun/util/calendar/Era;
    sget-object v43, Ljava/util/GregorianCalendar;->jeras:[Lsun/util/calendar/Era;

    const/16 v44, 0x0

    aget-object v43, v43, v44

    move-object/from16 v0, v43

    if-ne v11, v0, :cond_11

    .line 2359
    const/4 v12, 0x0

    .line 2361
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v40

    .line 2365
    .end local v11    # "e":Lsun/util/calendar/Era;
    .restart local v40    # "year":I
    :cond_12
    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1, v12}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2366
    const/16 v43, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2367
    or-int/lit8 v22, p1, 0x3

    .line 2369
    .local v22, "mask":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v43

    add-int/lit8 v23, v43, -0x1

    .line 2370
    .local v23, "month":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v9

    .line 2373
    .local v9, "dayOfMonth":I
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0xa4

    move/from16 v43, v0

    if-eqz v43, :cond_13

    .line 2375
    const/16 v43, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2376
    const/16 v43, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1, v9}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2377
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    move-result v43

    const/16 v44, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2378
    move/from16 v0, v22

    or-int/lit16 v0, v0, 0xa4

    move/from16 v22, v0

    .line 2381
    :cond_13
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x7e00

    move/from16 v43, v0

    if-eqz v43, :cond_14

    .line 2383
    if-eqz v37, :cond_1b

    .line 2384
    const v43, 0x36ee80

    div-int v13, v37, v43

    .line 2385
    .local v13, "hours":I
    const/16 v43, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1, v13}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2386
    div-int/lit8 v43, v13, 0xc

    const/16 v44, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2387
    rem-int/lit8 v43, v13, 0xc

    const/16 v44, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2388
    const v43, 0x36ee80

    rem-int v34, v37, v43

    .line 2389
    .local v34, "r":I
    const v43, 0xea60

    div-int v43, v34, v43

    const/16 v44, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2390
    const v43, 0xea60

    rem-int v34, v34, v43

    .line 2391
    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v43, v0

    const/16 v44, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2392
    move/from16 v0, v34

    rem-int/lit16 v0, v0, 0x3e8

    move/from16 v43, v0

    const/16 v44, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2401
    .end local v13    # "hours":I
    .end local v34    # "r":I
    :goto_5
    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x7e00

    move/from16 v22, v0

    .line 2405
    :cond_14
    const v43, 0x18000

    and-int v43, v43, p1

    if-eqz v43, :cond_15

    .line 2406
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    move-object/from16 v43, v0

    const/16 v44, 0x0

    aget v43, v43, v44

    const/16 v44, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2407
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    move-object/from16 v43, v0

    const/16 v44, 0x1

    aget v43, v43, v44

    const/16 v44, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2408
    const v43, 0x18000

    or-int v22, v22, v43

    .line 2411
    :cond_15
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x158

    move/from16 v43, v0

    if-eqz v43, :cond_1a

    .line 2412
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v30

    .line 2413
    .local v30, "normalizedYear":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    const/16 v46, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v30

    move/from16 v2, v45

    move/from16 v3, v46

    move-object/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v16

    .line 2414
    .local v16, "fixedDateJan1":J
    sub-long v44, v14, v16

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v43, v0

    add-int/lit8 v10, v43, 0x1

    .line 2415
    .local v10, "dayOfYear":I
    int-to-long v0, v9

    move-wide/from16 v44, v0

    sub-long v44, v14, v44

    const-wide/16 v46, 0x1

    add-long v18, v44, v46

    .line 2416
    .local v18, "fixedDateMonth1":J
    const/4 v7, 0x0

    .line 2417
    .local v7, "cutoverGap":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v43, v0

    sget-object v44, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    if-ne v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    .line 2418
    .local v8, "cutoverYear":I
    :goto_6
    add-int/lit8 v36, v9, -0x1

    .line 2421
    .local v36, "relativeDayOfMonth":I
    move/from16 v0, v30

    if-ne v0, v8, :cond_17

    .line 2423
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v44, v0

    move/from16 v0, v43

    move/from16 v1, v44

    if-gt v0, v1, :cond_16

    .line 2427
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1, v14, v15}, Ljava/util/GregorianCalendar;->getFixedDateJan1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v16

    .line 2428
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v44, v0

    cmp-long v43, v14, v44

    if-ltz v43, :cond_16

    .line 2429
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1, v14, v15}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v18

    .line 2432
    :cond_16
    sub-long v44, v14, v16

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v43, v0

    add-int/lit8 v35, v43, 0x1

    .line 2433
    .local v35, "realDayOfYear":I
    sub-int v7, v10, v35

    .line 2434
    move/from16 v10, v35

    .line 2435
    sub-long v44, v14, v18

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v36, v0

    .line 2437
    .end local v35    # "realDayOfYear":I
    :cond_17
    const/16 v43, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1, v10}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2438
    div-int/lit8 v43, v36, 0x7

    add-int/lit8 v43, v43, 0x1

    const/16 v44, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2440
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2, v14, v15}, Ljava/util/GregorianCalendar;->getWeekNumber(JJ)I

    move-result v39

    .line 2444
    .local v39, "weekOfYear":I
    if-nez v39, :cond_21

    .line 2452
    const-wide/16 v44, 0x1

    sub-long v20, v16, v44

    .line 2453
    .local v20, "fixedDec31":J
    const-wide/16 v44, 0x16d

    sub-long v32, v16, v44

    .line 2454
    .local v32, "prevJan1":J
    add-int/lit8 v43, v8, 0x1

    move/from16 v0, v30

    move/from16 v1, v43

    if-le v0, v1, :cond_1d

    .line 2455
    add-int/lit8 v43, v30, -0x1

    invoke-static/range {v43 .. v43}, Lsun/util/calendar/CalendarUtils;->isGregorianLeapYear(I)Z

    move-result v43

    if-eqz v43, :cond_18

    .line 2456
    const-wide/16 v44, 0x1

    sub-long v32, v32, v44

    .line 2485
    :cond_18
    :goto_7
    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    move-wide/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/GregorianCalendar;->getWeekNumber(JJ)I

    move-result v39

    .line 2537
    .end local v20    # "fixedDec31":J
    .end local v32    # "prevJan1":J
    :cond_19
    :goto_8
    const/16 v43, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2538
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2, v14, v15}, Ljava/util/GregorianCalendar;->getWeekNumber(JJ)I

    move-result v43

    const/16 v44, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2539
    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x158

    move/from16 v22, v0

    .line 2541
    .end local v7    # "cutoverGap":I
    .end local v8    # "cutoverYear":I
    .end local v10    # "dayOfYear":I
    .end local v16    # "fixedDateJan1":J
    .end local v18    # "fixedDateMonth1":J
    .end local v30    # "normalizedYear":I
    .end local v36    # "relativeDayOfMonth":I
    .end local v39    # "weekOfYear":I
    :cond_1a
    return v22

    .line 2394
    :cond_1b
    const/16 v43, 0xb

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2395
    const/16 v43, 0x9

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2396
    const/16 v43, 0xa

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2397
    const/16 v43, 0xc

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2398
    const/16 v43, 0xd

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2399
    const/16 v43, 0xe

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    goto/16 :goto_5

    .line 2417
    .restart local v7    # "cutoverGap":I
    .restart local v10    # "dayOfYear":I
    .restart local v16    # "fixedDateJan1":J
    .restart local v18    # "fixedDateMonth1":J
    .restart local v30    # "normalizedYear":I
    :cond_1c
    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    goto/16 :goto_6

    .line 2458
    .restart local v8    # "cutoverYear":I
    .restart local v20    # "fixedDec31":J
    .restart local v32    # "prevJan1":J
    .restart local v36    # "relativeDayOfMonth":I
    .restart local v39    # "weekOfYear":I
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v43, v0

    move/from16 v0, v30

    move/from16 v1, v43

    if-gt v0, v1, :cond_1e

    .line 2459
    add-int/lit8 v43, v30, -0x1

    invoke-static/range {v43 .. v43}, Lsun/util/calendar/CalendarUtils;->isJulianLeapYear(I)Z

    move-result v43

    if-eqz v43, :cond_18

    .line 2460
    const-wide/16 v44, 0x1

    sub-long v32, v32, v44

    goto/16 :goto_7

    .line 2463
    :cond_1e
    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    .line 2465
    .local v6, "calForJan1":Lsun/util/calendar/BaseCalendar;
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v31

    .line 2466
    .local v31, "prevYear":I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v43, v0

    move/from16 v0, v31

    move/from16 v1, v43

    if-ne v0, v1, :cond_20

    .line 2467
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCutoverCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v6

    .line 2468
    sget-object v43, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    move-object/from16 v0, v43

    if-ne v6, v0, :cond_1f

    .line 2470
    const/16 v43, 0x1

    .line 2471
    const/16 v44, 0x1

    .line 2472
    const/16 v45, 0x0

    .line 2469
    move/from16 v0, v31

    move/from16 v1, v43

    move/from16 v2, v44

    move-object/from16 v3, v45

    invoke-virtual {v6, v0, v1, v2, v3}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v32

    goto/16 :goto_7

    .line 2474
    :cond_1f
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v32, v0

    .line 2475
    sget-object v6, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    goto/16 :goto_7

    .line 2477
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v43, v0

    move/from16 v0, v31

    move/from16 v1, v43

    if-gt v0, v1, :cond_18

    .line 2478
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v6

    .line 2480
    const/16 v43, 0x1

    .line 2481
    const/16 v44, 0x1

    .line 2482
    const/16 v45, 0x0

    .line 2479
    move/from16 v0, v31

    move/from16 v1, v43

    move/from16 v2, v44

    move-object/from16 v3, v45

    invoke-virtual {v6, v0, v1, v2, v3}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v32

    goto/16 :goto_7

    .line 2487
    .end local v6    # "calForJan1":Lsun/util/calendar/BaseCalendar;
    .end local v20    # "fixedDec31":J
    .end local v31    # "prevYear":I
    .end local v32    # "prevJan1":J
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v43, v0

    move/from16 v0, v30

    move/from16 v1, v43

    if-gt v0, v1, :cond_22

    .line 2488
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x1

    move/from16 v0, v30

    move/from16 v1, v43

    if-ge v0, v1, :cond_24

    .line 2490
    :cond_22
    const/16 v43, 0x34

    move/from16 v0, v39

    move/from16 v1, v43

    if-lt v0, v1, :cond_19

    .line 2491
    const-wide/16 v44, 0x16d

    add-long v26, v16, v44

    .line 2492
    .local v26, "nextJan1":J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->isLeapYear()Z

    move-result v43

    if-eqz v43, :cond_23

    .line 2493
    const-wide/16 v44, 0x1

    add-long v26, v26, v44

    .line 2495
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v43, v0

    const-wide/16 v44, 0x6

    add-long v44, v44, v26

    .line 2496
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v43

    .line 2495
    move-wide/from16 v0, v44

    move/from16 v2, v43

    invoke-static {v0, v1, v2}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v28

    .line 2497
    .local v28, "nextJan1st":J
    sub-long v44, v28, v26

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v24, v0

    .line 2498
    .local v24, "ndays":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v43

    move/from16 v0, v24

    move/from16 v1, v43

    if-lt v0, v1, :cond_19

    const-wide/16 v44, 0x7

    sub-long v44, v28, v44

    cmp-long v43, v14, v44

    if-ltz v43, :cond_19

    .line 2500
    const/16 v39, 0x1

    goto/16 :goto_8

    .line 2504
    .end local v24    # "ndays":I
    .end local v26    # "nextJan1":J
    .end local v28    # "nextJan1st":J
    :cond_24
    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    .line 2505
    .restart local v6    # "calForJan1":Lsun/util/calendar/BaseCalendar;
    add-int/lit8 v25, v30, 0x1

    .line 2506
    .local v25, "nextYear":I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, 0x1

    move/from16 v0, v25

    move/from16 v1, v43

    if-ne v0, v1, :cond_25

    .line 2507
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v43, v0

    move/from16 v0, v25

    move/from16 v1, v43

    if-ge v0, v1, :cond_25

    .line 2509
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v25, v0

    .line 2511
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v43, v0

    move/from16 v0, v25

    move/from16 v1, v43

    if-ne v0, v1, :cond_26

    .line 2512
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCutoverCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v6

    .line 2516
    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v43, v0

    move/from16 v0, v25

    move/from16 v1, v43

    if-gt v0, v1, :cond_27

    .line 2517
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v44, v0

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_28

    .line 2520
    :cond_27
    const/16 v43, 0x1

    .line 2521
    const/16 v44, 0x1

    .line 2522
    const/16 v45, 0x0

    .line 2519
    move/from16 v0, v25

    move/from16 v1, v43

    move/from16 v2, v44

    move-object/from16 v3, v45

    invoke-virtual {v6, v0, v1, v2, v3}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v26

    .line 2528
    .restart local v26    # "nextJan1":J
    :goto_9
    const-wide/16 v44, 0x6

    add-long v44, v44, v26

    .line 2529
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v43

    .line 2528
    move-wide/from16 v0, v44

    move/from16 v2, v43

    invoke-static {v0, v1, v2}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v28

    .line 2530
    .restart local v28    # "nextJan1st":J
    sub-long v44, v28, v26

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v24, v0

    .line 2531
    .restart local v24    # "ndays":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v43

    move/from16 v0, v24

    move/from16 v1, v43

    if-lt v0, v1, :cond_19

    const-wide/16 v44, 0x7

    sub-long v44, v28, v44

    cmp-long v43, v14, v44

    if-ltz v43, :cond_19

    .line 2533
    const/16 v39, 0x1

    goto/16 :goto_8

    .line 2518
    .end local v24    # "ndays":I
    .end local v26    # "nextJan1":J
    .end local v28    # "nextJan1st":J
    :cond_28
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v43, v0

    move/from16 v0, v25

    move/from16 v1, v43

    if-eq v0, v1, :cond_27

    .line 2524
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v26, v0

    .line 2525
    .restart local v26    # "nextJan1":J
    sget-object v6, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    goto :goto_9
.end method

.method private final getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;
    .locals 5
    .param p1, "fd"    # J

    .prologue
    .line 3183
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    sget-object v0, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    .line 3184
    .local v0, "cal":Lsun/util/calendar/BaseCalendar;
    :goto_0
    sget-object v2, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v2}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/BaseCalendar$Date;

    .line 3185
    .local v1, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v0, v1, p1, p2}, Lsun/util/calendar/BaseCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 3186
    return-object v1

    .line 3183
    .end local v0    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local v1    # "d":Lsun/util/calendar/BaseCalendar$Date;
    :cond_0
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    .restart local v0    # "cal":Lsun/util/calendar/BaseCalendar;
    goto :goto_0
.end method

.method private final getCurrentFixedDate()J
    .locals 2

    .prologue
    .line 3295
    iget-object v0, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    sget-object v1, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0, v1}, Lsun/util/calendar/BaseCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v0

    goto :goto_0
.end method

.method private getCutoverCalendarSystem()Lsun/util/calendar/BaseCalendar;
    .locals 2

    .prologue
    .line 3093
    iget v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    iget v1, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-ge v0, v1, :cond_0

    .line 3094
    sget-object v0, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    return-object v0

    .line 3096
    :cond_0
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    return-object v0
.end method

.method private getFixedDate(Lsun/util/calendar/BaseCalendar;II)J
    .locals 16
    .param p1, "cal"    # Lsun/util/calendar/BaseCalendar;
    .param p2, "year"    # I
    .param p3, "fieldMask"    # I

    .prologue
    .line 2939
    const/4 v9, 0x0

    .line 2940
    .local v9, "month":I
    const/4 v11, 0x2

    move/from16 v0, p3

    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2943
    const/4 v11, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v9

    .line 2946
    const/16 v11, 0xb

    if-le v9, v11, :cond_2

    .line 2947
    div-int/lit8 v11, v9, 0xc

    add-int p2, p2, v11

    .line 2948
    rem-int/lit8 v9, v9, 0xc

    .line 2958
    :cond_0
    :goto_0
    add-int/lit8 v12, v9, 0x1

    .line 2959
    sget-object v11, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, p1

    if-ne v0, v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 2958
    :goto_1
    const/4 v13, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v12, v13, v11}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v6

    .line 2960
    .local v6, "fixedDate":J
    const/4 v11, 0x2

    move/from16 v0, p3

    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 2962
    const/4 v11, 0x5

    move/from16 v0, p3

    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2969
    const/4 v11, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->isSet(I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2972
    const/4 v11, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v11

    int-to-long v12, v11

    add-long/2addr v6, v12

    .line 2973
    const-wide/16 v12, 0x1

    sub-long/2addr v6, v12

    .line 3054
    :cond_1
    :goto_2
    return-wide v6

    .line 2949
    .end local v6    # "fixedDate":J
    :cond_2
    if-gez v9, :cond_0

    .line 2950
    const/4 v11, 0x1

    new-array v10, v11, [I

    .line 2951
    .local v10, "rem":[I
    const/16 v11, 0xc

    invoke-static {v9, v11, v10}, Lsun/util/calendar/CalendarUtils;->floorDivide(II[I)I

    move-result v11

    add-int p2, p2, v11

    .line 2952
    const/4 v11, 0x0

    aget v9, v10, v11

    goto :goto_0

    .line 2959
    .end local v10    # "rem":[I
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 2976
    .restart local v6    # "fixedDate":J
    :cond_4
    const/4 v11, 0x4

    move/from16 v0, p3

    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 2977
    const-wide/16 v12, 0x6

    add-long/2addr v12, v6

    .line 2978
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v11

    .line 2977
    invoke-static {v12, v13, v11}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v4

    .line 2981
    .local v4, "firstDayOfWeek":J
    sub-long v12, v4, v6

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v11

    int-to-long v14, v11

    cmp-long v11, v12, v14

    if-ltz v11, :cond_5

    .line 2982
    const-wide/16 v12, 0x7

    sub-long/2addr v4, v12

    .line 2984
    :cond_5
    const/4 v11, 0x7

    move/from16 v0, p3

    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2985
    const-wide/16 v12, 0x6

    add-long/2addr v12, v4

    .line 2986
    const/4 v11, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v11

    .line 2985
    invoke-static {v12, v13, v11}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v4

    .line 2991
    :cond_6
    const/4 v11, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    mul-int/lit8 v11, v11, 0x7

    int-to-long v12, v11

    add-long v6, v4, v12

    goto :goto_2

    .line 2994
    .end local v4    # "firstDayOfWeek":J
    :cond_7
    const/4 v11, 0x7

    move/from16 v0, p3

    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 2995
    const/4 v11, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    .line 3003
    .local v2, "dayOfWeek":I
    :goto_3
    const/16 v11, 0x8

    move/from16 v0, p3

    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 3004
    const/16 v11, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    .line 3008
    .local v3, "dowim":I
    :goto_4
    if-ltz v3, :cond_a

    .line 3009
    mul-int/lit8 v11, v3, 0x7

    int-to-long v12, v11

    add-long/2addr v12, v6

    const-wide/16 v14, 0x1

    sub-long/2addr v12, v14

    invoke-static {v12, v13, v2}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v6

    goto/16 :goto_2

    .line 2997
    .end local v2    # "dayOfWeek":I
    .end local v3    # "dowim":I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v2

    .restart local v2    # "dayOfWeek":I
    goto :goto_3

    .line 3006
    :cond_9
    const/4 v3, 0x1

    .restart local v3    # "dowim":I
    goto :goto_4

    .line 3014
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v9, v1}, Ljava/util/GregorianCalendar;->monthLength(II)I

    move-result v11

    add-int/lit8 v12, v3, 0x1

    mul-int/lit8 v12, v12, 0x7

    add-int v8, v11, v12

    .line 3016
    .local v8, "lastDate":I
    int-to-long v12, v8

    add-long/2addr v12, v6

    const-wide/16 v14, 0x1

    sub-long/2addr v12, v14

    invoke-static {v12, v13, v2}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v6

    goto/16 :goto_2

    .line 3022
    .end local v2    # "dayOfWeek":I
    .end local v3    # "dowim":I
    .end local v8    # "lastDate":I
    :cond_b
    move-object/from16 v0, p0

    iget v11, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v0, p2

    if-ne v0, v11, :cond_c

    sget-object v11, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, p1

    if-ne v0, v11, :cond_c

    .line 3023
    move-object/from16 v0, p0

    iget-wide v12, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v11, v6, v12

    if-gez v11, :cond_c

    .line 3024
    move-object/from16 v0, p0

    iget v11, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move-object/from16 v0, p0

    iget v12, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-eq v11, v12, :cond_c

    .line 3028
    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .line 3031
    :cond_c
    const/4 v11, 0x6

    move/from16 v0, p3

    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 3033
    const/4 v11, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v11

    int-to-long v12, v11

    add-long/2addr v6, v12

    .line 3034
    const-wide/16 v12, 0x1

    sub-long/2addr v6, v12

    goto/16 :goto_2

    .line 3036
    :cond_d
    const-wide/16 v12, 0x6

    add-long/2addr v12, v6

    .line 3037
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v11

    .line 3036
    invoke-static {v12, v13, v11}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v4

    .line 3040
    .restart local v4    # "firstDayOfWeek":J
    sub-long v12, v4, v6

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v11

    int-to-long v14, v11

    cmp-long v11, v12, v14

    if-ltz v11, :cond_e

    .line 3041
    const-wide/16 v12, 0x7

    sub-long/2addr v4, v12

    .line 3043
    :cond_e
    const/4 v11, 0x7

    move/from16 v0, p3

    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 3044
    const/4 v11, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    .line 3045
    .restart local v2    # "dayOfWeek":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v11

    if-eq v2, v11, :cond_f

    .line 3046
    const-wide/16 v12, 0x6

    add-long/2addr v12, v4

    invoke-static {v12, v13, v2}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v4

    .line 3050
    .end local v2    # "dayOfWeek":I
    :cond_f
    const/4 v11, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v11

    int-to-long v12, v11

    const-wide/16 v14, 0x1

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x7

    mul-long/2addr v12, v14

    add-long v6, v4, v12

    goto/16 :goto_2
.end method

.method private final getFixedDateJan1(Lsun/util/calendar/BaseCalendar$Date;J)J
    .locals 6
    .param p1, "date"    # Lsun/util/calendar/BaseCalendar$Date;
    .param p2, "fixedDate"    # J

    .prologue
    const/4 v2, 0x1

    .line 3118
    sget-boolean v1, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v1

    iget v3, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-eq v1, v3, :cond_0

    .line 3119
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v1

    iget v3, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ne v1, v3, :cond_1

    move v1, v2

    .line 3118
    :goto_0
    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 3119
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3120
    :cond_2
    iget v1, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    iget v3, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-eq v1, v3, :cond_3

    .line 3121
    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v1, p2, v4

    if-ltz v1, :cond_3

    .line 3126
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    return-wide v2

    .line 3130
    :cond_3
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    .line 3131
    .local v0, "jcal":Lsun/util/calendar/BaseCalendar;
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v2, v3}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v2

    return-wide v2
.end method

.method private final getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J
    .locals 10
    .param p1, "date"    # Lsun/util/calendar/BaseCalendar$Date;
    .param p2, "fixedDate"    # J

    .prologue
    const-wide/16 v8, 0x1

    const/4 v5, 0x1

    .line 3144
    sget-boolean v4, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v4

    iget v6, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-eq v4, v6, :cond_0

    .line 3145
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v4

    iget v6, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ne v4, v6, :cond_1

    move v4, v5

    .line 3144
    :goto_0
    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_0
    move v4, v5

    goto :goto_0

    .line 3145
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 3146
    :cond_2
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getGregorianCutoverDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v2

    .line 3147
    .local v2, "gCutover":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v2}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 3148
    invoke-virtual {v2}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 3150
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v4

    int-to-long v4, v4

    sub-long v4, p2, v4

    add-long/2addr v4, v8

    return-wide v4

    .line 3155
    :cond_3
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v4

    invoke-virtual {v2}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v6

    if-ne v4, v6, :cond_5

    .line 3157
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getLastJulianDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v3

    .line 3158
    .local v3, "jLastDate":Lsun/util/calendar/BaseCalendar$Date;
    iget v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    iget v6, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ne v4, v6, :cond_4

    .line 3159
    invoke-virtual {v2}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v4

    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v6

    if-ne v4, v6, :cond_4

    .line 3161
    sget-object v4, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v6

    .line 3162
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v7

    .line 3164
    const/4 v8, 0x0

    .line 3161
    invoke-virtual {v4, v6, v7, v5, v8}, Lsun/util/calendar/JulianCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v0

    .line 3174
    .end local v3    # "jLastDate":Lsun/util/calendar/BaseCalendar$Date;
    .local v0, "fixedDateMonth1":J
    :goto_1
    return-wide v0

    .line 3167
    .end local v0    # "fixedDateMonth1":J
    .restart local v3    # "jLastDate":Lsun/util/calendar/BaseCalendar$Date;
    :cond_4
    iget-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .restart local v0    # "fixedDateMonth1":J
    goto :goto_1

    .line 3171
    .end local v0    # "fixedDateMonth1":J
    .end local v3    # "jLastDate":Lsun/util/calendar/BaseCalendar$Date;
    :cond_5
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v4

    int-to-long v4, v4

    sub-long v4, p2, v4

    add-long v0, v4, v8

    .restart local v0    # "fixedDateMonth1":J
    goto :goto_1
.end method

.method private final getGregorianCutoverDate()Lsun/util/calendar/BaseCalendar$Date;
    .locals 2

    .prologue
    .line 3194
    iget-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method private static final declared-synchronized getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;
    .locals 2

    .prologue
    const-class v1, Ljava/util/GregorianCalendar;

    monitor-enter v1

    .line 3080
    :try_start_0
    sget-object v0, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    if-nez v0, :cond_0

    .line 3081
    const-string/jumbo v0, "julian"

    invoke-static {v0}, Lsun/util/calendar/CalendarSystem;->forName(Ljava/lang/String;)Lsun/util/calendar/CalendarSystem;

    move-result-object v0

    check-cast v0, Lsun/util/calendar/JulianCalendar;

    sput-object v0, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    .line 3082
    sget-object v0, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    invoke-virtual {v0}, Lsun/util/calendar/JulianCalendar;->getEras()[Lsun/util/calendar/Era;

    move-result-object v0

    sput-object v0, Ljava/util/GregorianCalendar;->jeras:[Lsun/util/calendar/Era;

    .line 3084
    :cond_0
    sget-object v0, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private final getLastJulianDate()Lsun/util/calendar/BaseCalendar$Date;
    .locals 4

    .prologue
    .line 3202
    iget-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method private final getNormalizedCalendar()Ljava/util/GregorianCalendar;
    .locals 2

    .prologue
    .line 3064
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->isFullyNormalized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3065
    move-object v0, p0

    .line 3072
    .local v0, "gc":Ljava/util/GregorianCalendar;
    :goto_0
    return-object v0

    .line 3068
    .end local v0    # "gc":Ljava/util/GregorianCalendar;
    :cond_0
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 3069
    .restart local v0    # "gc":Ljava/util/GregorianCalendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 3070
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->complete()V

    goto :goto_0
.end method

.method private static final getRolledValue(IIII)I
    .locals 5
    .param p0, "value"    # I
    .param p1, "amount"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3302
    sget-boolean v4, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v4, :cond_1

    if-lt p0, p2, :cond_0

    if-gt p0, p3, :cond_0

    move v4, v2

    :goto_0
    if-nez v4, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    move v4, v3

    goto :goto_0

    .line 3303
    :cond_1
    sub-int v4, p3, p2

    add-int/lit8 v1, v4, 0x1

    .line 3304
    .local v1, "range":I
    rem-int/2addr p1, v1

    .line 3305
    add-int v0, p0, p1

    .line 3306
    .local v0, "n":I
    if-le v0, p3, :cond_3

    .line 3307
    sub-int/2addr v0, v1

    .line 3311
    :cond_2
    :goto_1
    sget-boolean v4, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v4, :cond_5

    if-lt v0, p2, :cond_4

    if-gt v0, p3, :cond_4

    :goto_2
    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 3308
    :cond_3
    if-ge v0, p2, :cond_2

    .line 3309
    add-int/2addr v0, v1

    goto :goto_1

    :cond_4
    move v2, v3

    .line 3311
    goto :goto_2

    .line 3312
    :cond_5
    return v0
.end method

.method private final getWeekNumber(JJ)I
    .locals 9
    .param p1, "fixedDay1"    # J
    .param p3, "fixedDate"    # J

    .prologue
    const/4 v8, 0x7

    const/4 v4, 0x0

    .line 2556
    sget-object v5, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    const-wide/16 v6, 0x6

    add-long/2addr v6, p1

    .line 2557
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v5

    .line 2556
    invoke-static {v6, v7, v5}, Lsun/util/calendar/Gregorian;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v0

    .line 2558
    .local v0, "fixedDay1st":J
    sub-long v6, v0, p1

    long-to-int v2, v6

    .line 2559
    .local v2, "ndays":I
    sget-boolean v5, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v5, :cond_1

    if-gt v2, v8, :cond_0

    const/4 v4, 0x1

    :cond_0
    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 2560
    :cond_1
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v4

    if-lt v2, v4, :cond_2

    .line 2561
    const-wide/16 v4, 0x7

    sub-long/2addr v0, v4

    .line 2563
    :cond_2
    sub-long v4, p3, v0

    long-to-int v3, v4

    .line 2564
    .local v3, "normalizedDayOfPeriod":I
    if-ltz v3, :cond_3

    .line 2565
    div-int/lit8 v4, v3, 0x7

    add-int/lit8 v4, v4, 0x1

    return v4

    .line 2567
    :cond_3
    invoke-static {v3, v8}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    return v4
.end method

.method private final getYearOffsetInMillis()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x3c

    .line 1936
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x18

    int-to-long v0, v2

    .line 1937
    .local v0, "t":J
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1938
    mul-long/2addr v0, v4

    .line 1939
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1940
    mul-long/2addr v0, v4

    .line 1941
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1942
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 1943
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    .line 1944
    const/16 v4, 0xf

    invoke-virtual {p0, v4}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v4

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v5

    add-int/2addr v4, v5

    int-to-long v4, v4

    .line 1943
    sub-long/2addr v2, v4

    return-wide v2
.end method

.method private final internalGetEra()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3320
    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final isCutoverYear(I)Z
    .locals 3
    .param p1, "normalizedYear"    # I

    .prologue
    .line 3104
    iget-object v1, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    sget-object v2, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    if-ne v1, v2, :cond_0

    iget v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    .line 3105
    .local v0, "cutoverYear":I
    :goto_0
    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 3104
    .end local v0    # "cutoverYear":I
    :cond_0
    iget v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    goto :goto_0

    .line 3105
    .restart local v0    # "cutoverYear":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private final monthLength(I)I
    .locals 2
    .param p1, "month"    # I

    .prologue
    .line 3222
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v0

    .line 3223
    .local v0, "year":I
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->internalGetEra()I

    move-result v1

    if-nez v1, :cond_0

    .line 3224
    rsub-int/lit8 v0, v0, 0x1

    .line 3226
    :cond_0
    invoke-direct {p0, p1, v0}, Ljava/util/GregorianCalendar;->monthLength(II)I

    move-result v1

    return v1
.end method

.method private final monthLength(II)I
    .locals 1
    .param p1, "month"    # I
    .param p2, "year"    # I

    .prologue
    .line 3212
    invoke-virtual {p0, p2}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/GregorianCalendar;->LEAP_MONTH_LENGTH:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Ljava/util/GregorianCalendar;->MONTH_LENGTH:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method private final pinDayOfMonth()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    .line 3276
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    .line 3278
    .local v3, "year":I
    iget v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-gt v3, v4, :cond_0

    iget v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ge v3, v4, :cond_2

    .line 3279
    :cond_0
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v4

    invoke-direct {p0, v4}, Ljava/util/GregorianCalendar;->monthLength(I)I

    move-result v2

    .line 3284
    .local v2, "monthLen":I
    :goto_0
    invoke-virtual {p0, v5}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v0

    .line 3285
    .local v0, "dom":I
    if-le v0, v2, :cond_1

    .line 3286
    invoke-virtual {p0, v5, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 3275
    :cond_1
    return-void

    .line 3281
    .end local v0    # "dom":I
    .end local v2    # "monthLen":I
    :cond_2
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getNormalizedCalendar()Ljava/util/GregorianCalendar;

    move-result-object v1

    .line 3282
    .local v1, "gc":Ljava/util/GregorianCalendar;
    invoke-virtual {v1, v5}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v2

    .restart local v2    # "monthLen":I
    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 3328
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 3329
    iget-object v0, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    if-nez v0, :cond_0

    .line 3330
    sget-object v0, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    iput-object v0, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 3331
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    .line 3333
    :cond_0
    iget-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(J)V

    .line 3327
    return-void
.end method

.method private setGregorianChange(J)V
    .locals 9
    .param p1, "cutoverTime"    # J

    .prologue
    const-wide/16 v6, 0x1

    .line 756
    iput-wide p1, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 757
    const-wide/32 v2, 0x5265c00

    invoke-static {p1, p2, v2, v3}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v2

    .line 758
    const-wide/32 v4, 0xaf93b

    .line 757
    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .line 765
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 766
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .line 769
    :cond_0
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getGregorianCutoverDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    .line 772
    .local v0, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v2

    iput v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    .line 774
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v1

    .line 775
    .local v1, "jcal":Lsun/util/calendar/BaseCalendar;
    sget-object v2, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v0

    .end local v0    # "d":Lsun/util/calendar/BaseCalendar$Date;
    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    .line 776
    .restart local v0    # "d":Lsun/util/calendar/BaseCalendar$Date;
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    sub-long/2addr v2, v6

    invoke-virtual {v1, v0, v2, v3}, Lsun/util/calendar/BaseCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 777
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v2

    iput v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    .line 779
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->time:J

    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 782
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->setUnnormalized()V

    .line 755
    :cond_1
    return-void
.end method

.method private final yearLength()I
    .locals 2

    .prologue
    .line 3262
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v0

    .line 3263
    .local v0, "year":I
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->internalGetEra()I

    move-result v1

    if-nez v1, :cond_0

    .line 3264
    rsub-int/lit8 v0, v0, 0x1

    .line 3266
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/GregorianCalendar;->yearLength(I)I

    move-result v1

    return v1
.end method

.method private final yearLength(I)I
    .locals 1
    .param p1, "year"    # I

    .prologue
    .line 3254
    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x16d

    goto :goto_0
.end method


# virtual methods
.method public add(II)V
    .locals 24
    .param p1, "field"    # I
    .param p2, "amount"    # I

    .prologue
    .line 888
    if-nez p2, :cond_0

    .line 889
    return-void

    .line 892
    :cond_0
    if-ltz p1, :cond_1

    const/16 v19, 0xf

    move/from16 v0, p1

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    .line 893
    :cond_1
    new-instance v19, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v19 .. v19}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v19

    .line 897
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 899
    const/16 v19, 0x1

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 900
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v18

    .line 901
    .local v18, "year":I
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->internalGetEra()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 902
    add-int v18, v18, p2

    .line 903
    if-lez v18, :cond_3

    .line 904
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 921
    :goto_0
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->pinDayOfMonth()V

    .line 885
    .end local v18    # "year":I
    :goto_1
    return-void

    .line 906
    .restart local v18    # "year":I
    :cond_3
    rsub-int/lit8 v19, v18, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 908
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_0

    .line 912
    :cond_4
    sub-int v18, v18, p2

    .line 913
    if-lez v18, :cond_5

    .line 914
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_0

    .line 916
    :cond_5
    rsub-int/lit8 v19, v18, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 918
    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_0

    .line 922
    .end local v18    # "year":I
    :cond_6
    const/16 v19, 0x2

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 923
    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v19

    add-int v7, v19, p2

    .line 924
    .local v7, "month":I
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v18

    .line 927
    .restart local v18    # "year":I
    if-ltz v7, :cond_8

    .line 928
    div-int/lit8 v15, v7, 0xc

    .line 932
    .local v15, "y_amount":I
    :goto_2
    if-eqz v15, :cond_7

    .line 933
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->internalGetEra()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 934
    add-int v18, v18, v15

    .line 935
    if-lez v18, :cond_9

    .line 936
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 955
    :cond_7
    :goto_3
    if-ltz v7, :cond_c

    .line 956
    rem-int/lit8 v19, v7, 0xc

    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 965
    :goto_4
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->pinDayOfMonth()V

    goto/16 :goto_1

    .line 930
    .end local v15    # "y_amount":I
    :cond_8
    add-int/lit8 v19, v7, 0x1

    div-int/lit8 v19, v19, 0xc

    add-int/lit8 v15, v19, -0x1

    .restart local v15    # "y_amount":I
    goto :goto_2

    .line 938
    :cond_9
    rsub-int/lit8 v19, v18, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 940
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_3

    .line 944
    :cond_a
    sub-int v18, v18, v15

    .line 945
    if-lez v18, :cond_b

    .line 946
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_3

    .line 948
    :cond_b
    rsub-int/lit8 v19, v18, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 950
    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_3

    .line 959
    :cond_c
    rem-int/lit8 v7, v7, 0xc

    .line 960
    if-gez v7, :cond_d

    .line 961
    add-int/lit8 v7, v7, 0xc

    .line 963
    :cond_d
    add-int/lit8 v19, v7, 0x0

    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_4

    .line 966
    .end local v7    # "month":I
    .end local v15    # "y_amount":I
    .end local v18    # "year":I
    :cond_e
    if-nez p1, :cond_11

    .line 967
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v19

    add-int v6, v19, p2

    .line 968
    .local v6, "era":I
    if-gez v6, :cond_f

    .line 969
    const/4 v6, 0x0

    .line 971
    :cond_f
    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v6, v0, :cond_10

    .line 972
    const/4 v6, 0x1

    .line 974
    :cond_10
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1

    .line 976
    .end local v6    # "era":I
    :cond_11
    move/from16 v0, p2

    int-to-long v4, v0

    .line 977
    .local v4, "delta":J
    const-wide/16 v12, 0x0

    .line 978
    .local v12, "timeOfDay":J
    packed-switch p1, :pswitch_data_0

    .line 1021
    :goto_5
    :pswitch_0
    const/16 v19, 0xa

    move/from16 v0, p1

    move/from16 v1, v19

    if-lt v0, v1, :cond_12

    .line 1022
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    move-wide/from16 v20, v0

    add-long v20, v20, v4

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1023
    return-void

    .line 983
    :pswitch_1
    const-wide/32 v20, 0x36ee80

    mul-long v4, v4, v20

    .line 984
    goto :goto_5

    .line 987
    :pswitch_2
    const-wide/32 v20, 0xea60

    mul-long v4, v4, v20

    .line 988
    goto :goto_5

    .line 991
    :pswitch_3
    const-wide/16 v20, 0x3e8

    mul-long v4, v4, v20

    .line 992
    goto :goto_5

    .line 1003
    :pswitch_4
    const-wide/16 v20, 0x7

    mul-long v4, v4, v20

    .line 1004
    goto :goto_5

    .line 1014
    :pswitch_5
    div-int/lit8 v19, p2, 0x2

    move/from16 v0, v19

    int-to-long v4, v0

    .line 1015
    rem-int/lit8 v19, p2, 0x2

    mul-int/lit8 v19, v19, 0xc

    move/from16 v0, v19

    int-to-long v12, v0

    .line 1016
    goto :goto_5

    .line 1032
    :cond_12
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v8

    .line 1033
    .local v8, "fd":J
    const/16 v19, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v12, v12, v20

    .line 1034
    const-wide/16 v20, 0x3c

    mul-long v12, v12, v20

    .line 1035
    const/16 v19, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v12, v12, v20

    .line 1036
    const-wide/16 v20, 0x3c

    mul-long v12, v12, v20

    .line 1037
    const/16 v19, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v12, v12, v20

    .line 1038
    const-wide/16 v20, 0x3e8

    mul-long v12, v12, v20

    .line 1039
    const/16 v19, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v12, v12, v20

    .line 1040
    const-wide/32 v20, 0x5265c00

    cmp-long v19, v12, v20

    if-ltz v19, :cond_14

    .line 1041
    const-wide/16 v20, 0x1

    add-long v8, v8, v20

    .line 1042
    const-wide/32 v20, 0x5265c00

    sub-long v12, v12, v20

    .line 1048
    :cond_13
    :goto_6
    add-long/2addr v8, v4

    .line 1051
    const-wide/32 v20, 0xaf93b

    sub-long v20, v8, v20

    const-wide/32 v22, 0x5265c00

    mul-long v20, v20, v22

    add-long v16, v20, v12

    .line 1055
    .local v16, "utcTime":J
    const/4 v14, 0x0

    .line 1058
    .local v14, "tzMask":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v19

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-object/from16 v3, v19

    invoke-direct {v0, v14, v1, v2, v3}, Ljava/util/GregorianCalendar;->adjustForZoneAndDaylightSavingsTime(IJLjava/util/TimeZone;)J

    move-result-wide v10

    .line 1061
    .local v10, "millis":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    goto/16 :goto_1

    .line 1043
    .end local v10    # "millis":J
    .end local v14    # "tzMask":I
    .end local v16    # "utcTime":J
    :cond_14
    const-wide/16 v20, 0x0

    cmp-long v19, v12, v20

    if-gez v19, :cond_13

    .line 1044
    const-wide/16 v20, 0x1

    sub-long v8, v8, v20

    .line 1045
    const-wide/32 v20, 0x5265c00

    add-long v12, v12, v20

    goto :goto_6

    .line 978
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1949
    invoke-super {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 1951
    .local v0, "other":Ljava/util/GregorianCalendar;
    iget-object v1, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/BaseCalendar$Date;

    iput-object v1, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 1952
    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eqz v1, :cond_0

    .line 1953
    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    iget-object v2, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eq v1, v2, :cond_1

    .line 1954
    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/BaseCalendar$Date;

    iput-object v1, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 1959
    :cond_0
    :goto_0
    iput-object v3, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    .line 1960
    iput-object v3, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    .line 1961
    return-object v0

    .line 1956
    :cond_1
    iget-object v1, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    iput-object v1, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    goto :goto_0
.end method

.method protected computeFields()V
    .locals 5

    .prologue
    const v4, 0x1ffff

    const/4 v2, 0x0

    .line 2240
    const/4 v1, 0x0

    .line 2241
    .local v1, "mask":I
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->isPartiallyNormalized()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2243
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getSetStateFields()I

    move-result v1

    .line 2244
    not-int v3, v1

    and-int v0, v3, v4

    .line 2247
    .local v0, "fieldMask":I
    if-nez v0, :cond_0

    iget-object v3, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    if-nez v3, :cond_3

    .line 2249
    :cond_0
    const v3, 0x18000

    and-int/2addr v3, v1

    .line 2248
    invoke-direct {p0, v0, v3}, Ljava/util/GregorianCalendar;->computeFields(II)I

    move-result v3

    or-int/2addr v1, v3

    .line 2250
    sget-boolean v3, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v3, :cond_3

    if-ne v1, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2253
    .end local v0    # "fieldMask":I
    :cond_2
    const v1, 0x1ffff

    .line 2254
    invoke-direct {p0, v1, v2}, Ljava/util/GregorianCalendar;->computeFields(II)I

    .line 2257
    :cond_3
    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->setFieldsComputed(I)V

    .line 2239
    return-void
.end method

.method protected computeTime()V
    .locals 30

    .prologue
    .line 2581
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v25

    if-nez v25, :cond_3

    .line 2582
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    move-object/from16 v25, v0

    if-nez v25, :cond_0

    .line 2583
    const/16 v25, 0x11

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/GregorianCalendar;->originalFields:[I

    .line 2585
    :cond_0
    const/4 v7, 0x0

    .local v7, "field":I
    :goto_0
    const/16 v25, 0x11

    move/from16 v0, v25

    if-ge v7, v0, :cond_3

    .line 2586
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v22

    .line 2587
    .local v22, "value":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->isExternallySet(I)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 2589
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->getMinimum(I)I

    move-result v25

    move/from16 v0, v22

    move/from16 v1, v25

    if-lt v0, v1, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->getMaximum(I)I

    move-result v25

    move/from16 v0, v22

    move/from16 v1, v25

    if-le v0, v1, :cond_2

    .line 2590
    :cond_1
    new-instance v25, Ljava/lang/IllegalArgumentException;

    invoke-static {v7}, Ljava/util/GregorianCalendar;->getFieldName(I)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 2593
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    move-object/from16 v25, v0

    aput v22, v25, v7

    .line 2585
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2599
    .end local v7    # "field":I
    .end local v22    # "value":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->selectFields()I

    move-result v8

    .line 2604
    .local v8, "fieldMask":I
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isSet(I)Z

    move-result v25

    if-eqz v25, :cond_7

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v23

    .line 2606
    .local v23, "year":I
    :goto_1
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->internalGetEra()I

    move-result v6

    .line 2607
    .local v6, "era":I
    if-nez v6, :cond_8

    .line 2608
    rsub-int/lit8 v23, v23, 0x1

    .line 2618
    :cond_4
    if-gtz v23, :cond_5

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isSet(I)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 2626
    :cond_5
    :goto_2
    const/16 v25, 0xb

    move/from16 v0, v25

    invoke-static {v8, v0}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 2627
    const/16 v25, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    .line 2625
    const-wide/16 v28, 0x0

    .line 2627
    add-long v20, v28, v26

    .line 2635
    .local v20, "timeOfDay":J
    :cond_6
    :goto_3
    const-wide/16 v26, 0x3c

    mul-long v20, v20, v26

    .line 2636
    const/16 v25, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v20, v20, v26

    .line 2637
    const-wide/16 v26, 0x3c

    mul-long v20, v20, v26

    .line 2638
    const/16 v25, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v20, v20, v26

    .line 2639
    const-wide/16 v26, 0x3e8

    mul-long v20, v20, v26

    .line 2640
    const/16 v25, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v20, v20, v26

    .line 2644
    const-wide/32 v26, 0x5265c00

    div-long v10, v20, v26

    .line 2645
    .local v10, "fixedDate":J
    const-wide/32 v26, 0x5265c00

    rem-long v20, v20, v26

    .line 2646
    :goto_4
    const-wide/16 v26, 0x0

    cmp-long v25, v20, v26

    if-gez v25, :cond_b

    .line 2647
    const-wide/32 v26, 0x5265c00

    add-long v20, v20, v26

    .line 2648
    const-wide/16 v26, 0x1

    sub-long v10, v10, v26

    goto :goto_4

    .line 2604
    .end local v6    # "era":I
    .end local v10    # "fixedDate":J
    .end local v20    # "timeOfDay":J
    .end local v23    # "year":I
    :cond_7
    const/16 v23, 0x7b2

    .restart local v23    # "year":I
    goto/16 :goto_1

    .line 2609
    .restart local v6    # "era":I
    :cond_8
    const/16 v25, 0x1

    move/from16 v0, v25

    if-eq v6, v0, :cond_4

    .line 2614
    new-instance v25, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v26, "Invalid era"

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 2619
    :cond_9
    or-int/lit8 v8, v8, 0x1

    .line 2620
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setFieldsComputed(I)V

    goto/16 :goto_2

    .line 2629
    :cond_a
    const/16 v25, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    .line 2625
    const-wide/16 v28, 0x0

    .line 2629
    add-long v20, v28, v26

    .line 2631
    .restart local v20    # "timeOfDay":J
    const/16 v25, 0x9

    move/from16 v0, v25

    invoke-static {v8, v0}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 2632
    const/16 v25, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v25

    mul-int/lit8 v25, v25, 0xc

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v20, v20, v26

    goto/16 :goto_3

    .line 2654
    .restart local v10    # "fixedDate":J
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v25

    if-le v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v25

    if-le v0, v1, :cond_f

    .line 2655
    sget-object v25, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v8}, Ljava/util/GregorianCalendar;->getFixedDate(Lsun/util/calendar/BaseCalendar;II)J

    move-result-wide v26

    add-long v12, v10, v26

    .line 2656
    .local v12, "gfd":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v26, v0

    cmp-long v25, v12, v26

    if-ltz v25, :cond_d

    .line 2657
    move-wide v10, v12

    .line 2716
    .end local v12    # "gfd":J
    :goto_5
    const-wide/32 v26, 0xaf93b

    sub-long v26, v10, v26

    const-wide/32 v28, 0x5265c00

    mul-long v26, v26, v28

    add-long v16, v26, v20

    .line 2731
    .local v16, "millis":J
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v24

    .line 2733
    .local v24, "zone":Ljava/util/TimeZone;
    const v25, 0x18000

    and-int v19, v8, v25

    .line 2735
    .local v19, "tzMask":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-wide/from16 v2, v16

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/GregorianCalendar;->adjustForZoneAndDaylightSavingsTime(IJLjava/util/TimeZone;)J

    move-result-wide v16

    .line 2738
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljava/util/GregorianCalendar;->time:J

    .line 2740
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getSetStateFields()I

    move-result v25

    or-int v25, v25, v8

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->computeFields(II)I

    move-result v9

    .line 2742
    .local v9, "mask":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v25

    if-nez v25, :cond_1b

    .line 2743
    const/4 v7, 0x0

    .restart local v7    # "field":I
    :goto_6
    const/16 v25, 0x11

    move/from16 v0, v25

    if-ge v7, v0, :cond_1b

    .line 2744
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->isExternallySet(I)Z

    move-result v25

    if-nez v25, :cond_1a

    .line 2743
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 2660
    .end local v7    # "field":I
    .end local v9    # "mask":I
    .end local v16    # "millis":J
    .end local v19    # "tzMask":I
    .end local v24    # "zone":Ljava/util/TimeZone;
    .restart local v12    # "gfd":J
    :cond_d
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v8}, Ljava/util/GregorianCalendar;->getFixedDate(Lsun/util/calendar/BaseCalendar;II)J

    move-result-wide v26

    add-long v14, v10, v26

    .line 2677
    .local v14, "jfd":J
    :goto_7
    const/16 v25, 0x6

    move/from16 v0, v25

    invoke-static {v8, v0}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v25

    if-nez v25, :cond_e

    const/16 v25, 0x3

    move/from16 v0, v25

    invoke-static {v8, v0}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v25

    if-eqz v25, :cond_13

    .line 2678
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_12

    .line 2679
    move-wide v10, v14

    .line 2680
    goto/16 :goto_5

    .line 2661
    .end local v12    # "gfd":J
    .end local v14    # "jfd":J
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_11

    .line 2662
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v8}, Ljava/util/GregorianCalendar;->getFixedDate(Lsun/util/calendar/BaseCalendar;II)J

    move-result-wide v26

    add-long v14, v10, v26

    .line 2663
    .restart local v14    # "jfd":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v26, v0

    cmp-long v25, v14, v26

    if-gez v25, :cond_10

    .line 2664
    move-wide v10, v14

    .line 2665
    goto/16 :goto_5

    .line 2667
    :cond_10
    move-wide v12, v14

    .line 2661
    .restart local v12    # "gfd":J
    goto :goto_7

    .line 2669
    .end local v12    # "gfd":J
    .end local v14    # "jfd":J
    :cond_11
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v8}, Ljava/util/GregorianCalendar;->getFixedDate(Lsun/util/calendar/BaseCalendar;II)J

    move-result-wide v26

    add-long v14, v10, v26

    .line 2670
    .restart local v14    # "jfd":J
    sget-object v25, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v8}, Ljava/util/GregorianCalendar;->getFixedDate(Lsun/util/calendar/BaseCalendar;II)J

    move-result-wide v26

    add-long v12, v10, v26

    .restart local v12    # "gfd":J
    goto :goto_7

    .line 2681
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_13

    .line 2682
    move-wide v10, v12

    .line 2683
    goto/16 :goto_5

    .line 2687
    :cond_13
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v26, v0

    cmp-long v25, v12, v26

    if-ltz v25, :cond_17

    .line 2688
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v26, v0

    cmp-long v25, v14, v26

    if-ltz v25, :cond_14

    .line 2689
    move-wide v10, v12

    goto/16 :goto_5

    .line 2694
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v25, v0

    sget-object v26, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v25, v0

    if-nez v25, :cond_16

    .line 2695
    :cond_15
    move-wide v10, v12

    .line 2694
    goto/16 :goto_5

    .line 2697
    :cond_16
    move-wide v10, v14

    goto/16 :goto_5

    .line 2701
    :cond_17
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v26, v0

    cmp-long v25, v14, v26

    if-gez v25, :cond_18

    .line 2702
    move-wide v10, v14

    goto/16 :goto_5

    .line 2705
    :cond_18
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v25

    if-nez v25, :cond_19

    .line 2706
    new-instance v25, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v26, "the specified date doesn\'t exist"

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 2710
    :cond_19
    move-wide v10, v14

    goto/16 :goto_5

    .line 2747
    .end local v12    # "gfd":J
    .end local v14    # "jfd":J
    .restart local v7    # "field":I
    .restart local v9    # "mask":I
    .restart local v16    # "millis":J
    .restart local v19    # "tzMask":I
    .restart local v24    # "zone":Ljava/util/TimeZone;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    move-object/from16 v25, v0

    aget v25, v25, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_c

    .line 2748
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    move-object/from16 v26, v0

    aget v26, v26, v7

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " -> "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 2750
    .local v18, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v28

    move-object/from16 v2, v26

    move/from16 v3, v29

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 2751
    new-instance v25, Ljava/lang/IllegalArgumentException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/util/GregorianCalendar;->getFieldName(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ": "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 2755
    .end local v7    # "field":I
    .end local v18    # "s":Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->setFieldsNormalized(I)V

    .line 2576
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 845
    instance-of v1, p1, Ljava/util/GregorianCalendar;

    if-eqz v1, :cond_0

    .line 846
    invoke-super {p0, p1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 845
    if-eqz v1, :cond_0

    .line 847
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    check-cast p1, Ljava/util/GregorianCalendar;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-wide v4, p1, Ljava/util/GregorianCalendar;->gregorianCutover:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 845
    :cond_0
    return v0
.end method

.method public getActualMaximum(I)I
    .locals 44
    .param p1, "field"    # I

    .prologue
    .line 1680
    const v18, 0x1fe81

    .line 1683
    .local v18, "fieldsForFixedMax":I
    const/16 v39, 0x1

    shl-int v39, v39, p1

    const v40, 0x1fe81

    and-int v39, v39, v40

    if-eqz v39, :cond_0

    .line 1684
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->getMaximum(I)I

    move-result v39

    return v39

    .line 1687
    :cond_0
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getNormalizedCalendar()Ljava/util/GregorianCalendar;

    move-result-object v19

    .line 1688
    .local v19, "gc":Ljava/util/GregorianCalendar;
    move-object/from16 v0, v19

    iget-object v12, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 1689
    .local v12, "date":Lsun/util/calendar/BaseCalendar$Date;
    move-object/from16 v0, v19

    iget-object v6, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    .line 1690
    .local v6, "cal":Lsun/util/calendar/BaseCalendar;
    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v33

    .line 1692
    .local v33, "normalizedYear":I
    const/16 v36, -0x1

    .line 1693
    .local v36, "value":I
    packed-switch p1, :pswitch_data_0

    .line 1926
    :pswitch_0
    new-instance v39, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object/from16 v0, v39

    move/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v39

    .line 1696
    :pswitch_1
    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v39

    if-nez v39, :cond_2

    .line 1697
    const/16 v36, 0xb

    .line 1928
    :cond_1
    :goto_0
    return v36

    .line 1704
    :cond_2
    sget-object v39, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    add-int/lit8 v33, v33, 0x1

    const/16 v40, 0x1

    const/16 v41, 0x1

    const/16 v42, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v33

    move/from16 v2, v40

    move/from16 v3, v41

    move-object/from16 v4, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/util/calendar/Gregorian;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v34

    .line 1705
    .local v34, "nextJan1":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v40, v0

    cmp-long v39, v34, v40

    if-ltz v39, :cond_2

    .line 1706
    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lsun/util/calendar/BaseCalendar$Date;

    .line 1707
    .local v10, "d":Lsun/util/calendar/BaseCalendar$Date;
    const-wide/16 v40, 0x1

    sub-long v40, v34, v40

    move-wide/from16 v0, v40

    invoke-virtual {v6, v10, v0, v1}, Lsun/util/calendar/BaseCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 1708
    invoke-virtual {v10}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v39

    add-int/lit8 v36, v39, -0x1

    goto :goto_0

    .line 1714
    .end local v10    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v34    # "nextJan1":J
    :pswitch_2
    invoke-virtual {v6, v12}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v36

    .line 1715
    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v39

    if-eqz v39, :cond_1

    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v39

    move/from16 v0, v39

    move/from16 v1, v36

    if-eq v0, v1, :cond_1

    .line 1720
    invoke-direct/range {v19 .. v19}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v16

    .line 1721
    .local v16, "fd":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v40, v0

    cmp-long v39, v16, v40

    if-gez v39, :cond_1

    .line 1724
    invoke-direct/range {v19 .. v19}, Ljava/util/GregorianCalendar;->actualMonthLength()I

    move-result v30

    .line 1725
    .local v30, "monthLength":I
    move-object/from16 v0, v19

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v39, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v39

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v40

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v40, v40, v42

    const-wide/16 v42, 0x1

    sub-long v28, v40, v42

    .line 1727
    .local v28, "monthEnd":J
    move-object/from16 v0, v19

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v10

    .line 1728
    .restart local v10    # "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v10}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v36

    goto/16 :goto_0

    .line 1734
    .end local v10    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v16    # "fd":J
    .end local v28    # "monthEnd":J
    .end local v30    # "monthLength":I
    :pswitch_3
    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v39

    if-nez v39, :cond_3

    .line 1735
    invoke-virtual {v6, v12}, Lsun/util/calendar/BaseCalendar;->getYearLength(Lsun/util/calendar/CalendarDate;)I

    move-result v36

    goto/16 :goto_0

    .line 1741
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v40, v0

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_5

    .line 1742
    invoke-direct/range {v19 .. v19}, Ljava/util/GregorianCalendar;->getCutoverCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v7

    .line 1743
    .local v7, "cocal":Lsun/util/calendar/BaseCalendar;
    const/16 v39, 0x1

    const/16 v40, 0x1

    const/16 v41, 0x0

    move/from16 v0, v33

    move/from16 v1, v39

    move/from16 v2, v40

    move-object/from16 v3, v41

    invoke-virtual {v7, v0, v1, v2, v3}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v20

    .line 1750
    .end local v7    # "cocal":Lsun/util/calendar/BaseCalendar;
    .local v20, "jan1":J
    :goto_1
    sget-object v39, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    add-int/lit8 v33, v33, 0x1

    const/16 v40, 0x1

    const/16 v41, 0x1

    const/16 v42, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v33

    move/from16 v2, v40

    move/from16 v3, v41

    move-object/from16 v4, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/util/calendar/Gregorian;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v34

    .line 1751
    .restart local v34    # "nextJan1":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v40, v0

    cmp-long v39, v34, v40

    if-gez v39, :cond_4

    .line 1752
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v34, v0

    .line 1754
    :cond_4
    sget-boolean v39, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v39, :cond_8

    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v39

    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v40

    .line 1755
    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v41

    .line 1754
    move/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v6, v0, v1, v2, v12}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v40

    cmp-long v39, v20, v40

    if-gtz v39, :cond_7

    const/16 v39, 0x1

    :goto_2
    if-nez v39, :cond_8

    new-instance v39, Ljava/lang/AssertionError;

    invoke-direct/range {v39 .. v39}, Ljava/lang/AssertionError;-><init>()V

    throw v39

    .line 1744
    .end local v20    # "jan1":J
    .end local v34    # "nextJan1":J
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v39, v0

    move/from16 v0, v33

    move/from16 v1, v39

    if-ne v0, v1, :cond_6

    .line 1745
    const/16 v39, 0x1

    const/16 v40, 0x1

    const/16 v41, 0x0

    move/from16 v0, v33

    move/from16 v1, v39

    move/from16 v2, v40

    move-object/from16 v3, v41

    invoke-virtual {v6, v0, v1, v2, v3}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v20

    .restart local v20    # "jan1":J
    goto :goto_1

    .line 1747
    .end local v20    # "jan1":J
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v20, v0

    .restart local v20    # "jan1":J
    goto :goto_1

    .line 1754
    .restart local v34    # "nextJan1":J
    :cond_7
    const/16 v39, 0x0

    goto :goto_2

    .line 1756
    :cond_8
    sget-boolean v39, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v39, :cond_a

    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v39

    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v40

    .line 1757
    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v41

    .line 1756
    move/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v6, v0, v1, v2, v12}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v40

    cmp-long v39, v34, v40

    if-ltz v39, :cond_9

    const/16 v39, 0x1

    :goto_3
    if-nez v39, :cond_a

    new-instance v39, Ljava/lang/AssertionError;

    invoke-direct/range {v39 .. v39}, Ljava/lang/AssertionError;-><init>()V

    throw v39

    :cond_9
    const/16 v39, 0x0

    goto :goto_3

    .line 1758
    :cond_a
    sub-long v40, v34, v20

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v36, v0

    goto/16 :goto_0

    .line 1764
    .end local v20    # "jan1":J
    .end local v34    # "nextJan1":J
    :pswitch_4
    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v39

    if-nez v39, :cond_d

    .line 1766
    sget-object v39, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v11

    .line 1767
    .local v11, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v39

    const/16 v40, 0x1

    const/16 v41, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v11, v0, v1, v2}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 1768
    invoke-virtual {v6, v11}, Lsun/util/calendar/BaseCalendar;->getDayOfWeek(Lsun/util/calendar/CalendarDate;)I

    move-result v13

    .line 1770
    .local v13, "dayOfWeek":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v39

    sub-int v13, v13, v39

    .line 1771
    if-gez v13, :cond_b

    .line 1772
    add-int/lit8 v13, v13, 0x7

    .line 1774
    :cond_b
    const/16 v36, 0x34

    .line 1775
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v39

    add-int v39, v39, v13

    add-int/lit8 v23, v39, -0x1

    .line 1776
    .local v23, "magic":I
    const/16 v39, 0x6

    move/from16 v0, v23

    move/from16 v1, v39

    if-eq v0, v1, :cond_c

    .line 1777
    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->isLeapYear()Z

    move-result v39

    if-eqz v39, :cond_1

    const/16 v39, 0x5

    move/from16 v0, v23

    move/from16 v1, v39

    if-eq v0, v1, :cond_c

    const/16 v39, 0xc

    move/from16 v0, v23

    move/from16 v1, v39

    if-ne v0, v1, :cond_1

    .line 1778
    :cond_c
    const/16 v36, 0x35

    goto/16 :goto_0

    .line 1783
    .end local v11    # "d":Lsun/util/calendar/CalendarDate;
    .end local v13    # "dayOfWeek":I
    .end local v23    # "magic":I
    :cond_d
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_e

    .line 1784
    invoke-virtual/range {v19 .. v19}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "gc":Ljava/util/GregorianCalendar;
    check-cast v19, Ljava/util/GregorianCalendar;

    .line 1786
    .restart local v19    # "gc":Ljava/util/GregorianCalendar;
    :cond_e
    const/16 v39, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v24

    .line 1787
    .local v24, "maxDayOfYear":I
    const/16 v39, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v39

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1788
    const/16 v39, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v36

    .line 1789
    const/16 v39, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v39

    invoke-virtual/range {v19 .. v19}, Ljava/util/GregorianCalendar;->getWeekYear()I

    move-result v40

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_1

    .line 1790
    add-int/lit8 v39, v24, -0x7

    const/16 v40, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v40

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1791
    const/16 v39, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v36

    goto/16 :goto_0

    .line 1798
    .end local v24    # "maxDayOfYear":I
    :pswitch_5
    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v39

    if-nez v39, :cond_11

    .line 1799
    const/16 v39, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v11

    .line 1800
    .restart local v11    # "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v39

    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v11, v0, v1, v2}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 1801
    invoke-virtual {v6, v11}, Lsun/util/calendar/BaseCalendar;->getDayOfWeek(Lsun/util/calendar/CalendarDate;)I

    move-result v13

    .line 1802
    .restart local v13    # "dayOfWeek":I
    invoke-virtual {v6, v11}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v30

    .line 1803
    .restart local v30    # "monthLength":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v39

    sub-int v13, v13, v39

    .line 1804
    if-gez v13, :cond_f

    .line 1805
    add-int/lit8 v13, v13, 0x7

    .line 1807
    :cond_f
    rsub-int/lit8 v31, v13, 0x7

    .line 1808
    .local v31, "nDaysFirstWeek":I
    const/16 v36, 0x3

    .line 1809
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v39

    move/from16 v0, v31

    move/from16 v1, v39

    if-lt v0, v1, :cond_10

    .line 1810
    const/16 v36, 0x4

    .line 1812
    :cond_10
    add-int/lit8 v39, v31, 0x15

    sub-int v30, v30, v39

    .line 1813
    if-lez v30, :cond_1

    .line 1814
    add-int/lit8 v36, v36, 0x1

    .line 1815
    const/16 v39, 0x7

    move/from16 v0, v30

    move/from16 v1, v39

    if-le v0, v1, :cond_1

    .line 1816
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_0

    .line 1823
    .end local v11    # "d":Lsun/util/calendar/CalendarDate;
    .end local v13    # "dayOfWeek":I
    .end local v30    # "monthLength":I
    .end local v31    # "nDaysFirstWeek":I
    :cond_11
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_12

    .line 1824
    invoke-virtual/range {v19 .. v19}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "gc":Ljava/util/GregorianCalendar;
    check-cast v19, Ljava/util/GregorianCalendar;

    .line 1826
    .restart local v19    # "gc":Ljava/util/GregorianCalendar;
    :cond_12
    const/16 v39, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v38

    .line 1827
    .local v38, "y":I
    const/16 v39, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v22

    .line 1829
    .local v22, "m":I
    :goto_4
    const/16 v39, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v36

    .line 1830
    const/16 v39, 0x4

    const/16 v40, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->add(II)V

    .line 1831
    const/16 v39, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v39

    move/from16 v0, v39

    move/from16 v1, v38

    if-ne v0, v1, :cond_1

    const/16 v39, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v39

    move/from16 v0, v39

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    goto :goto_4

    .line 1839
    .end local v22    # "m":I
    .end local v38    # "y":I
    :pswitch_6
    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    move-result v14

    .line 1840
    .local v14, "dow":I
    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v39

    if-nez v39, :cond_14

    .line 1841
    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lsun/util/calendar/BaseCalendar$Date;

    .line 1842
    .restart local v10    # "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v6, v10}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v32

    .line 1843
    .local v32, "ndays":I
    const/16 v39, 0x1

    move/from16 v0, v39

    invoke-virtual {v10, v0}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 1844
    invoke-virtual {v6, v10}, Lsun/util/calendar/BaseCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1845
    invoke-virtual {v10}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    move-result v15

    .line 1855
    .end local v10    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .local v15, "dow1":I
    :goto_5
    sub-int v37, v14, v15

    .line 1856
    .local v37, "x":I
    if-gez v37, :cond_13

    .line 1857
    add-int/lit8 v37, v37, 0x7

    .line 1859
    :cond_13
    sub-int v32, v32, v37

    .line 1860
    add-int/lit8 v39, v32, 0x6

    div-int/lit8 v36, v39, 0x7

    goto/16 :goto_0

    .line 1848
    .end local v15    # "dow1":I
    .end local v32    # "ndays":I
    .end local v37    # "x":I
    :cond_14
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_15

    .line 1849
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "gc":Ljava/util/GregorianCalendar;
    check-cast v19, Ljava/util/GregorianCalendar;

    .line 1851
    .restart local v19    # "gc":Ljava/util/GregorianCalendar;
    :cond_15
    invoke-direct/range {v19 .. v19}, Ljava/util/GregorianCalendar;->actualMonthLength()I

    move-result v32

    .line 1852
    .restart local v32    # "ndays":I
    const/16 v39, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->getActualMinimum(I)I

    move-result v39

    const/16 v40, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v40

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1853
    const/16 v39, 0x7

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v15

    .restart local v15    # "dow1":I
    goto :goto_5

    .line 1885
    .end local v14    # "dow":I
    .end local v15    # "dow1":I
    .end local v32    # "ndays":I
    :pswitch_7
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_16

    .line 1886
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "gc":Ljava/util/GregorianCalendar;
    check-cast v19, Ljava/util/GregorianCalendar;

    .line 1893
    .restart local v19    # "gc":Ljava/util/GregorianCalendar;
    :cond_16
    invoke-direct/range {v19 .. v19}, Ljava/util/GregorianCalendar;->getYearOffsetInMillis()J

    move-result-wide v8

    .line 1895
    .local v8, "current":J
    invoke-direct/range {v19 .. v19}, Ljava/util/GregorianCalendar;->internalGetEra()I

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_17

    .line 1896
    const-wide v40, 0x7fffffffffffffffL

    move-object/from16 v0, v19

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1897
    const/16 v39, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v36

    .line 1898
    invoke-direct/range {v19 .. v19}, Ljava/util/GregorianCalendar;->getYearOffsetInMillis()J

    move-result-wide v26

    .line 1899
    .local v26, "maxEnd":J
    cmp-long v39, v8, v26

    if-lez v39, :cond_1

    .line 1900
    add-int/lit8 v36, v36, -0x1

    goto/16 :goto_0

    .line 1903
    .end local v26    # "maxEnd":J
    :cond_17
    invoke-virtual/range {v19 .. v19}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v40

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move-wide/from16 v42, v0

    cmp-long v39, v40, v42

    if-ltz v39, :cond_18

    .line 1904
    sget-object v25, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    .line 1905
    .local v25, "mincal":Lsun/util/calendar/CalendarSystem;
    :goto_6
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v39

    const-wide/high16 v40, -0x8000000000000000L

    move-object/from16 v0, v25

    move-wide/from16 v1, v40

    move-object/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/CalendarSystem;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v11

    .line 1906
    .restart local v11    # "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v6, v11}, Lsun/util/calendar/BaseCalendar;->getDayOfYear(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v40

    const-wide/16 v42, 0x1

    sub-long v40, v40, v42

    const-wide/16 v42, 0x18

    mul-long v40, v40, v42

    invoke-virtual {v11}, Lsun/util/calendar/CalendarDate;->getHours()I

    move-result v39

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v26, v40, v42

    .line 1907
    .restart local v26    # "maxEnd":J
    const-wide/16 v40, 0x3c

    mul-long v26, v26, v40

    .line 1908
    invoke-virtual {v11}, Lsun/util/calendar/CalendarDate;->getMinutes()I

    move-result v39

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v40, v0

    add-long v26, v26, v40

    .line 1909
    const-wide/16 v40, 0x3c

    mul-long v26, v26, v40

    .line 1910
    invoke-virtual {v11}, Lsun/util/calendar/CalendarDate;->getSeconds()I

    move-result v39

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v40, v0

    add-long v26, v26, v40

    .line 1911
    const-wide/16 v40, 0x3e8

    mul-long v26, v26, v40

    .line 1912
    invoke-virtual {v11}, Lsun/util/calendar/CalendarDate;->getMillis()I

    move-result v39

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v40, v0

    add-long v26, v26, v40

    .line 1913
    invoke-virtual {v11}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v36

    .line 1914
    if-gtz v36, :cond_1b

    .line 1915
    sget-boolean v39, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v39, :cond_1a

    sget-object v39, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, v25

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_19

    const/16 v39, 0x1

    :goto_7
    if-nez v39, :cond_1a

    new-instance v39, Ljava/lang/AssertionError;

    invoke-direct/range {v39 .. v39}, Ljava/lang/AssertionError;-><init>()V

    throw v39

    .line 1904
    .end local v11    # "d":Lsun/util/calendar/CalendarDate;
    .end local v25    # "mincal":Lsun/util/calendar/CalendarSystem;
    .end local v26    # "maxEnd":J
    :cond_18
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v25

    .restart local v25    # "mincal":Lsun/util/calendar/CalendarSystem;
    goto :goto_6

    .line 1915
    .restart local v11    # "d":Lsun/util/calendar/CalendarDate;
    .restart local v26    # "maxEnd":J
    :cond_19
    const/16 v39, 0x0

    goto :goto_7

    .line 1916
    :cond_1a
    rsub-int/lit8 v36, v36, 0x1

    .line 1918
    :cond_1b
    cmp-long v39, v8, v26

    if-gez v39, :cond_1

    .line 1919
    add-int/lit8 v36, v36, -0x1

    goto/16 :goto_0

    .line 1693
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public getActualMinimum(I)I
    .locals 8
    .param p1, "field"    # I

    .prologue
    .line 1637
    const/4 v5, 0x5

    if-ne p1, v5, :cond_1

    .line 1638
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getNormalizedCalendar()Ljava/util/GregorianCalendar;

    move-result-object v1

    .line 1639
    .local v1, "gc":Ljava/util/GregorianCalendar;
    iget-object v5, v1, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v4

    .line 1640
    .local v4, "year":I
    iget v5, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-eq v4, v5, :cond_0

    iget v5, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ne v4, v5, :cond_1

    .line 1641
    :cond_0
    iget-object v5, v1, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    iget-object v6, v1, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    iget-object v7, v1, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v6, v7}, Lsun/util/calendar/BaseCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v6

    invoke-direct {p0, v5, v6, v7}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v2

    .line 1642
    .local v2, "month1":J
    invoke-direct {p0, v2, v3}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    .line 1643
    .local v0, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v5

    return v5

    .line 1646
    .end local v0    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v1    # "gc":Ljava/util/GregorianCalendar;
    .end local v2    # "month1":J
    .end local v4    # "year":I
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->getMinimum(I)I

    move-result v5

    return v5
.end method

.method public getGreatestMinimum(I)I
    .locals 6
    .param p1, "field"    # I

    .prologue
    .line 1559
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 1560
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getGregorianCutoverDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    .line 1561
    .local v0, "d":Lsun/util/calendar/BaseCalendar$Date;
    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    invoke-direct {p0, v0, v4, v5}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v2

    .line 1562
    .local v2, "mon1":J
    invoke-direct {p0, v2, v3}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    .line 1563
    sget-object v1, Ljava/util/GregorianCalendar;->MIN_VALUES:[I

    aget v1, v1, p1

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    .line 1565
    .end local v0    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v2    # "mon1":J
    :cond_0
    sget-object v1, Ljava/util/GregorianCalendar;->MIN_VALUES:[I

    aget v1, v1, p1

    return v1
.end method

.method public final getGregorianChange()Ljava/util/Date;
    .locals 4

    .prologue
    .line 795
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getLeastMaximum(I)I
    .locals 8
    .param p1, "field"    # I

    .prologue
    .line 1588
    packed-switch p1, :pswitch_data_0

    .line 1606
    :pswitch_0
    sget-object v3, Ljava/util/GregorianCalendar;->LEAST_MAX_VALUES:[I

    aget v3, v3, p1

    return v3

    .line 1597
    :pswitch_1
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 1598
    .local v0, "gc":Ljava/util/GregorianCalendar;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 1599
    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-virtual {v0, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1600
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v1

    .line 1601
    .local v1, "v1":I
    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1602
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v2

    .line 1603
    .local v2, "v2":I
    sget-object v3, Ljava/util/GregorianCalendar;->LEAST_MAX_VALUES:[I

    aget v3, v3, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    return v3

    .line 1588
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMaximum(I)I
    .locals 8
    .param p1, "field"    # I

    .prologue
    .line 1511
    packed-switch p1, :pswitch_data_0

    .line 1536
    :cond_0
    :pswitch_0
    sget-object v3, Ljava/util/GregorianCalendar;->MAX_VALUES:[I

    aget v3, v3, p1

    return v3

    .line 1523
    :pswitch_1
    iget v3, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    const/16 v4, 0xc8

    if-gt v3, v4, :cond_0

    .line 1527
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 1528
    .local v0, "gc":Ljava/util/GregorianCalendar;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 1529
    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-virtual {v0, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1530
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v1

    .line 1531
    .local v1, "v1":I
    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1532
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v2

    .line 1533
    .local v2, "v2":I
    sget-object v3, Ljava/util/GregorianCalendar;->MAX_VALUES:[I

    aget v3, v3, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3

    .line 1511
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMinimum(I)I
    .locals 1
    .param p1, "field"    # I

    .prologue
    .line 1488
    sget-object v0, Ljava/util/GregorianCalendar;->MIN_VALUES:[I

    aget v0, v0, p1

    return v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 3

    .prologue
    .line 1965
    invoke-super {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 1967
    .local v0, "zone":Ljava/util/TimeZone;
    iget-object v1, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1, v0}, Lsun/util/calendar/BaseCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    .line 1968
    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    iget-object v2, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eq v1, v2, :cond_0

    .line 1969
    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1, v0}, Lsun/util/calendar/BaseCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    .line 1971
    :cond_0
    return-object v0
.end method

.method public getWeekYear()I
    .locals 15

    .prologue
    const/4 v14, 0x7

    const/4 v13, 0x1

    const/4 v12, 0x6

    .line 2022
    invoke-virtual {p0, v13}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    .line 2023
    .local v9, "year":I
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->internalGetEra()I

    move-result v10

    if-nez v10, :cond_0

    .line 2024
    rsub-int/lit8 v9, v9, 0x1

    .line 2029
    :cond_0
    iget v10, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    add-int/lit8 v10, v10, 0x1

    if-le v9, v10, :cond_3

    .line 2030
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v8

    .line 2031
    .local v8, "weekOfYear":I
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v10

    if-nez v10, :cond_2

    .line 2032
    const/16 v10, 0x34

    if-lt v8, v10, :cond_1

    .line 2033
    add-int/lit8 v9, v9, -0x1

    .line 2040
    :cond_1
    :goto_0
    return v9

    .line 2036
    :cond_2
    if-ne v8, v13, :cond_1

    .line 2037
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2044
    .end local v8    # "weekOfYear":I
    :cond_3
    invoke-virtual {p0, v12}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v1

    .line 2045
    .local v1, "dayOfYear":I
    invoke-virtual {p0, v12}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v5

    .line 2046
    .local v5, "maxDayOfYear":I
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v7

    .line 2050
    .local v7, "minimalDays":I
    if-le v1, v7, :cond_4

    add-int/lit8 v10, v5, -0x6

    if-ge v1, v10, :cond_4

    .line 2051
    return v9

    .line 2055
    :cond_4
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 2056
    .local v0, "cal":Ljava/util/GregorianCalendar;
    invoke-virtual {v0, v13}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 2059
    const-string/jumbo v10, "GMT"

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2061
    invoke-virtual {v0, v12, v13}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2062
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->complete()V

    .line 2065
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v10

    invoke-virtual {v0, v14}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v11

    sub-int v4, v10, v11

    .line 2066
    .local v4, "delta":I
    if-eqz v4, :cond_6

    .line 2067
    if-gez v4, :cond_5

    .line 2068
    add-int/lit8 v4, v4, 0x7

    .line 2070
    :cond_5
    invoke-virtual {v0, v12, v4}, Ljava/util/GregorianCalendar;->add(II)V

    .line 2072
    :cond_6
    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    .line 2073
    .local v6, "minDayOfYear":I
    if-ge v1, v6, :cond_8

    .line 2074
    if-gt v6, v7, :cond_7

    .line 2075
    add-int/lit8 v9, v9, -0x1

    .line 2099
    :cond_7
    :goto_1
    return v9

    .line 2078
    :cond_8
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v0, v13, v10}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2079
    invoke-virtual {v0, v12, v13}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2080
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->complete()V

    .line 2081
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v10

    invoke-virtual {v0, v14}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v11

    sub-int v3, v10, v11

    .line 2082
    .local v3, "del":I
    if-eqz v3, :cond_a

    .line 2083
    if-gez v3, :cond_9

    .line 2084
    add-int/lit8 v3, v3, 0x7

    .line 2086
    :cond_9
    invoke-virtual {v0, v12, v3}, Ljava/util/GregorianCalendar;->add(II)V

    .line 2088
    :cond_a
    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v10

    add-int/lit8 v6, v10, -0x1

    .line 2089
    if-nez v6, :cond_b

    .line 2090
    const/4 v6, 0x7

    .line 2092
    :cond_b
    if-lt v6, v7, :cond_7

    .line 2093
    sub-int v10, v5, v1

    add-int/lit8 v2, v10, 0x1

    .line 2094
    .local v2, "days":I
    rsub-int/lit8 v10, v6, 0x7

    if-gt v2, v10, :cond_7

    .line 2095
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method public getWeeksInWeekYear()I
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 2205
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getNormalizedCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 2206
    .local v0, "gc":Ljava/util/GregorianCalendar;
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getWeekYear()I

    move-result v1

    .line 2207
    .local v1, "weekYear":I
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2208
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v2

    return v2

    .line 2212
    :cond_0
    if-ne v0, p0, :cond_1

    .line 2213
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "gc":Ljava/util/GregorianCalendar;
    check-cast v0, Ljava/util/GregorianCalendar;

    .line 2215
    .restart local v0    # "gc":Ljava/util/GregorianCalendar;
    :cond_1
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/GregorianCalendar;->setWeekDate(III)V

    .line 2216
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v2

    return v2
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 854
    invoke-super {p0}, Ljava/util/Calendar;->hashCode()I

    move-result v0

    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    long-to-int v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public isLeapYear(I)Z
    .locals 6
    .param p1, "year"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 808
    and-int/lit8 v4, p1, 0x3

    if-eqz v4, :cond_0

    .line 809
    return v3

    .line 812
    :cond_0
    iget v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-le p1, v4, :cond_3

    .line 813
    rem-int/lit8 v4, p1, 0x64

    if-nez v4, :cond_1

    rem-int/lit16 v4, p1, 0x190

    if-nez v4, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0

    .line 815
    :cond_3
    iget v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ge p1, v4, :cond_4

    .line 816
    return v2

    .line 821
    :cond_4
    iget v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    iget v5, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ne v4, v5, :cond_7

    .line 822
    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    invoke-direct {p0, v4, v5}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    .line 823
    .local v0, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_6

    const/4 v1, 0x1

    .line 827
    .end local v0    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .local v1, "gregorian":Z
    :goto_1
    if-eqz v1, :cond_5

    rem-int/lit8 v4, p1, 0x64

    if-nez v4, :cond_5

    rem-int/lit16 v4, p1, 0x190

    if-nez v4, :cond_9

    :cond_5
    :goto_2
    return v2

    .line 823
    .end local v1    # "gregorian":Z
    .restart local v0    # "d":Lsun/util/calendar/BaseCalendar$Date;
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "gregorian":Z
    goto :goto_1

    .line 825
    .end local v0    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v1    # "gregorian":Z
    :cond_7
    iget v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-ne p1, v4, :cond_8

    const/4 v1, 0x1

    .restart local v1    # "gregorian":Z
    goto :goto_1

    .end local v1    # "gregorian":Z
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "gregorian":Z
    goto :goto_1

    :cond_9
    move v2, v3

    .line 827
    goto :goto_2
.end method

.method public final isWeekDateSupported()Z
    .locals 1

    .prologue
    .line 1995
    const/4 v0, 0x1

    return v0
.end method

.method public roll(II)V
    .locals 48
    .param p1, "field"    # I
    .param p2, "amount"    # I

    .prologue
    .line 1134
    if-nez p2, :cond_0

    .line 1135
    return-void

    .line 1138
    :cond_0
    if-ltz p1, :cond_1

    const/16 v43, 0xf

    move/from16 v0, p1

    move/from16 v1, v43

    if-lt v0, v1, :cond_2

    .line 1139
    :cond_1
    new-instance v43, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v43 .. v43}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v43

    .line 1143
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 1145
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->getMinimum(I)I

    move-result v23

    .line 1146
    .local v23, "min":I
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->getMaximum(I)I

    move-result v22

    .line 1148
    .local v22, "max":I
    packed-switch p1, :pswitch_data_0

    .line 1465
    :cond_3
    :goto_0
    :pswitch_0
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v43

    move/from16 v0, v43

    move/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    move-result v43

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1131
    return-void

    .line 1164
    :pswitch_1
    add-int/lit8 v35, v22, 0x1

    .line 1165
    .local v35, "unit":I
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v16

    .line 1166
    .local v16, "h":I
    add-int v43, v16, p2

    rem-int v31, v43, v35

    .line 1167
    .local v31, "nh":I
    if-gez v31, :cond_4

    .line 1168
    add-int v31, v31, v35

    .line 1170
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    move-wide/from16 v44, v0

    sub-int v43, v31, v16

    const v46, 0x36ee80

    mul-int v43, v43, v46

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v46, v0

    add-long v44, v44, v46

    move-wide/from16 v0, v44

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljava/util/GregorianCalendar;->time:J

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    move-wide/from16 v44, v0

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v46

    invoke-virtual/range {v43 .. v46}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v6

    .line 1177
    .local v6, "d":Lsun/util/calendar/CalendarDate;
    const/16 v43, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v43

    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v44

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_8

    .line 1178
    const/16 v43, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v43

    .line 1179
    const/16 v44, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v44

    add-int/lit8 v44, v44, 0x1

    .line 1180
    const/16 v45, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v45

    .line 1178
    move/from16 v0, v43

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v6, v0, v1, v2}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 1181
    const/16 v43, 0xa

    move/from16 v0, p1

    move/from16 v1, v43

    if-ne v0, v1, :cond_7

    .line 1182
    sget-boolean v43, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v43, :cond_6

    const/16 v43, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_5

    const/16 v43, 0x1

    :goto_1
    if-nez v43, :cond_6

    new-instance v43, Ljava/lang/AssertionError;

    invoke-direct/range {v43 .. v43}, Ljava/lang/AssertionError;-><init>()V

    throw v43

    :cond_5
    const/16 v43, 0x0

    goto :goto_1

    .line 1183
    :cond_6
    const/16 v43, 0xc

    move/from16 v0, v43

    invoke-virtual {v6, v0}, Lsun/util/calendar/CalendarDate;->addHours(I)Lsun/util/calendar/CalendarDate;

    .line 1185
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v44

    move-wide/from16 v0, v44

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljava/util/GregorianCalendar;->time:J

    .line 1187
    :cond_8
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getHours()I

    move-result v17

    .line 1188
    .local v17, "hourOfDay":I
    rem-int v43, v17, v35

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 1189
    const/16 v43, 0xa

    move/from16 v0, p1

    move/from16 v1, v43

    if-ne v0, v1, :cond_9

    .line 1190
    const/16 v43, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 1197
    :goto_2
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getZoneOffset()I

    move-result v42

    .line 1198
    .local v42, "zoneOffset":I
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDaylightSaving()I

    move-result v34

    .line 1199
    .local v34, "saving":I
    sub-int v43, v42, v34

    const/16 v44, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 1200
    const/16 v43, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 1201
    return-void

    .line 1192
    .end local v34    # "saving":I
    .end local v42    # "zoneOffset":I
    :cond_9
    div-int/lit8 v43, v17, 0xc

    const/16 v44, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 1193
    rem-int/lit8 v43, v17, 0xc

    const/16 v44, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    goto :goto_2

    .line 1210
    .end local v6    # "d":Lsun/util/calendar/CalendarDate;
    .end local v16    # "h":I
    .end local v17    # "hourOfDay":I
    .end local v31    # "nh":I
    .end local v35    # "unit":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v43

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v43

    if-nez v43, :cond_c

    .line 1211
    const/16 v43, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v43

    add-int v43, v43, p2

    rem-int/lit8 v24, v43, 0xc

    .line 1212
    .local v24, "mon":I
    if-gez v24, :cond_a

    .line 1213
    add-int/lit8 v24, v24, 0xc

    .line 1215
    :cond_a
    const/16 v43, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1220
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->monthLength(I)I

    move-result v25

    .line 1221
    .local v25, "monthLen":I
    const/16 v43, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v43

    move/from16 v0, v43

    move/from16 v1, v25

    if-le v0, v1, :cond_b

    .line 1222
    const/16 v43, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1238
    :cond_b
    :goto_3
    return-void

    .line 1227
    .end local v24    # "mon":I
    .end local v25    # "monthLen":I
    :cond_c
    const/16 v43, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v43

    add-int/lit8 v41, v43, 0x1

    .line 1228
    .local v41, "yearLength":I
    const/16 v43, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v43

    add-int v43, v43, p2

    rem-int v24, v43, v41

    .line 1229
    .restart local v24    # "mon":I
    if-gez v24, :cond_d

    .line 1230
    add-int v24, v24, v41

    .line 1232
    :cond_d
    const/16 v43, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1233
    const/16 v43, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v25

    .line 1234
    .restart local v25    # "monthLen":I
    const/16 v43, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v43

    move/from16 v0, v43

    move/from16 v1, v25

    if-le v0, v1, :cond_b

    .line 1235
    const/16 v43, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_3

    .line 1243
    .end local v24    # "mon":I
    .end local v25    # "monthLen":I
    .end local v41    # "yearLength":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v40

    .line 1244
    .local v40, "y":I
    const/16 v43, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v22

    .line 1245
    const/16 v43, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v43

    const/16 v44, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1246
    const/16 v43, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v38

    .line 1247
    .local v38, "woy":I
    add-int v36, v38, p2

    .line 1248
    .local v36, "value":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v43

    if-nez v43, :cond_10

    .line 1251
    move/from16 v0, v36

    move/from16 v1, v23

    if-le v0, v1, :cond_e

    move/from16 v0, v36

    move/from16 v1, v22

    if-ge v0, v1, :cond_e

    .line 1252
    const/16 v43, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1253
    return-void

    .line 1255
    :cond_e
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v14

    .line 1257
    .local v14, "fd":J
    sub-int v43, v38, v23

    mul-int/lit8 v43, v43, 0x7

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v44, v0

    sub-long v8, v14, v44

    .line 1258
    .local v8, "day1":J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v0, v8, v9}, Lsun/util/calendar/BaseCalendar;->getYearFromFixedDate(J)I

    move-result v43

    move/from16 v0, v43

    move/from16 v1, v40

    if-eq v0, v1, :cond_f

    .line 1259
    add-int/lit8 v23, v23, 0x1

    .line 1263
    :cond_f
    const/16 v43, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v43

    sub-int v43, v22, v43

    mul-int/lit8 v43, v43, 0x7

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v14, v14, v44

    .line 1264
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v0, v14, v15}, Lsun/util/calendar/BaseCalendar;->getYearFromFixedDate(J)I

    move-result v43

    move/from16 v0, v43

    move/from16 v1, v40

    if-eq v0, v1, :cond_3

    .line 1265
    add-int/lit8 v22, v22, -0x1

    goto/16 :goto_0

    .line 1271
    .end local v8    # "day1":J
    .end local v14    # "fd":J
    :cond_10
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v14

    .line 1273
    .restart local v14    # "fd":J
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v44, v0

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_13

    .line 1274
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCutoverCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v4

    .line 1280
    .local v4, "cal":Lsun/util/calendar/BaseCalendar;
    :goto_4
    sub-int v43, v38, v23

    mul-int/lit8 v43, v43, 0x7

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v44, v0

    sub-long v8, v14, v44

    .line 1282
    .restart local v8    # "day1":J
    invoke-virtual {v4, v8, v9}, Lsun/util/calendar/BaseCalendar;->getYearFromFixedDate(J)I

    move-result v43

    move/from16 v0, v43

    move/from16 v1, v40

    if-eq v0, v1, :cond_11

    .line 1283
    add-int/lit8 v23, v23, 0x1

    .line 1287
    :cond_11
    sub-int v43, v22, v38

    mul-int/lit8 v43, v43, 0x7

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v14, v14, v44

    .line 1288
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v44, v0

    cmp-long v43, v14, v44

    if-ltz v43, :cond_15

    sget-object v4, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    .line 1289
    :goto_5
    invoke-virtual {v4, v14, v15}, Lsun/util/calendar/BaseCalendar;->getYearFromFixedDate(J)I

    move-result v43

    move/from16 v0, v43

    move/from16 v1, v40

    if-eq v0, v1, :cond_12

    .line 1290
    add-int/lit8 v22, v22, -0x1

    .line 1294
    :cond_12
    move/from16 v0, v38

    move/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    move-result v43

    add-int/lit8 v36, v43, -0x1

    .line 1295
    mul-int/lit8 v43, v36, 0x7

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v44, v44, v8

    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v5

    .line 1296
    .local v5, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v43

    add-int/lit8 v43, v43, -0x1

    const/16 v44, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1297
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v43

    const/16 v44, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1298
    return-void

    .line 1275
    .end local v4    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v8    # "day1":J
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v43, v0

    move/from16 v0, v40

    move/from16 v1, v43

    if-ne v0, v1, :cond_14

    .line 1276
    sget-object v4, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    .restart local v4    # "cal":Lsun/util/calendar/BaseCalendar;
    goto/16 :goto_4

    .line 1278
    .end local v4    # "cal":Lsun/util/calendar/BaseCalendar;
    :cond_14
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v4

    .restart local v4    # "cal":Lsun/util/calendar/BaseCalendar;
    goto/16 :goto_4

    .line 1288
    .restart local v8    # "day1":J
    :cond_15
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v4

    goto :goto_5

    .line 1303
    .end local v4    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local v8    # "day1":J
    .end local v14    # "fd":J
    .end local v36    # "value":I
    .end local v38    # "woy":I
    .end local v40    # "y":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v43

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v18

    .line 1305
    .local v18, "isCutoverYear":Z
    const/16 v43, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v43

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v44

    sub-int v11, v43, v44

    .line 1306
    .local v11, "dow":I
    if-gez v11, :cond_16

    .line 1307
    add-int/lit8 v11, v11, 0x7

    .line 1310
    :cond_16
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v14

    .line 1313
    .restart local v14    # "fd":J
    if-eqz v18, :cond_19

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1, v14, v15}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v26

    .line 1315
    .local v26, "month1":J
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->actualMonthLength()I

    move-result v30

    .line 1322
    .local v30, "monthLength":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v43, v0

    const-wide/16 v44, 0x6

    add-long v44, v44, v26

    .line 1323
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v43

    .line 1322
    move-wide/from16 v0, v44

    move/from16 v2, v43

    invoke-static {v0, v1, v2}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v28

    .line 1326
    .local v28, "monthDay1st":J
    sub-long v44, v28, v26

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v43, v0

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v44

    move/from16 v0, v43

    move/from16 v1, v44

    if-lt v0, v1, :cond_17

    .line 1327
    const-wide/16 v44, 0x7

    sub-long v28, v28, v44

    .line 1329
    :cond_17
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v22

    .line 1332
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, p2

    move/from16 v2, v44

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    move-result v43

    add-int/lit8 v36, v43, -0x1

    .line 1335
    .restart local v36    # "value":I
    mul-int/lit8 v43, v36, 0x7

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v44, v44, v28

    int-to-long v0, v11

    move-wide/from16 v46, v0

    add-long v32, v44, v46

    .line 1339
    .local v32, "nfd":J
    cmp-long v43, v32, v26

    if-gez v43, :cond_1a

    .line 1340
    move-wide/from16 v32, v26

    .line 1345
    :cond_18
    :goto_7
    if-eqz v18, :cond_1b

    .line 1348
    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v5

    .line 1349
    .restart local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v7

    .line 1353
    .end local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .local v7, "dayOfMonth":I
    :goto_8
    const/16 v43, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1, v7}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1354
    return-void

    .line 1317
    .end local v7    # "dayOfMonth":I
    .end local v26    # "month1":J
    .end local v28    # "monthDay1st":J
    .end local v30    # "monthLength":I
    .end local v32    # "nfd":J
    .end local v36    # "value":I
    :cond_19
    const/16 v43, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v43

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v44, v0

    sub-long v44, v14, v44

    const-wide/16 v46, 0x1

    add-long v26, v44, v46

    .line 1318
    .restart local v26    # "month1":J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v30

    .restart local v30    # "monthLength":I
    goto/16 :goto_6

    .line 1341
    .restart local v28    # "monthDay1st":J
    .restart local v32    # "nfd":J
    .restart local v36    # "value":I
    :cond_1a
    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v44, v44, v26

    cmp-long v43, v32, v44

    if-ltz v43, :cond_18

    .line 1342
    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v44, v44, v26

    const-wide/16 v46, 0x1

    sub-long v32, v44, v46

    goto :goto_7

    .line 1351
    :cond_1b
    sub-long v44, v32, v26

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v43, v0

    add-int/lit8 v7, v43, 0x1

    .restart local v7    # "dayOfMonth":I
    goto :goto_8

    .line 1359
    .end local v7    # "dayOfMonth":I
    .end local v11    # "dow":I
    .end local v14    # "fd":J
    .end local v18    # "isCutoverYear":Z
    .end local v26    # "month1":J
    .end local v28    # "monthDay1st":J
    .end local v30    # "monthLength":I
    .end local v32    # "nfd":J
    .end local v36    # "value":I
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v43

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v43

    if-nez v43, :cond_1c

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v22

    goto/16 :goto_0

    .line 1365
    :cond_1c
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v14

    .line 1366
    .restart local v14    # "fd":J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1, v14, v15}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v26

    .line 1370
    .restart local v26    # "month1":J
    sub-long v44, v14, v26

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v43, v0

    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->actualMonthLength()I

    move-result v44

    add-int/lit8 v44, v44, -0x1

    const/16 v45, 0x0

    move/from16 v0, v43

    move/from16 v1, p2

    move/from16 v2, v45

    move/from16 v3, v44

    invoke-static {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    move-result v36

    .line 1371
    .restart local v36    # "value":I
    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v44, v44, v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v5

    .line 1372
    .restart local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    sget-boolean v43, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v43, :cond_1e

    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v43

    add-int/lit8 v43, v43, -0x1

    const/16 v44, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v44

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_1d

    const/16 v43, 0x1

    :goto_9
    if-nez v43, :cond_1e

    new-instance v43, Ljava/lang/AssertionError;

    invoke-direct/range {v43 .. v43}, Ljava/lang/AssertionError;-><init>()V

    throw v43

    :cond_1d
    const/16 v43, 0x0

    goto :goto_9

    .line 1373
    :cond_1e
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v43

    const/16 v44, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1374
    return-void

    .line 1379
    .end local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v14    # "fd":J
    .end local v26    # "month1":J
    .end local v36    # "value":I
    :pswitch_6
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v22

    .line 1380
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v43

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v43

    if-eqz v43, :cond_3

    .line 1385
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v14

    .line 1386
    .restart local v14    # "fd":J
    const/16 v43, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v43

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v44, v0

    sub-long v44, v14, v44

    const-wide/16 v46, 0x1

    add-long v20, v44, v46

    .line 1387
    .local v20, "jan1":J
    sub-long v44, v14, v20

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v43, v0

    add-int/lit8 v43, v43, 0x1

    move/from16 v0, v43

    move/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    move-result v36

    .line 1388
    .restart local v36    # "value":I
    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v44, v44, v20

    const-wide/16 v46, 0x1

    sub-long v44, v44, v46

    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v5

    .line 1389
    .restart local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v43

    add-int/lit8 v43, v43, -0x1

    const/16 v44, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1390
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v43

    const/16 v44, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1391
    return-void

    .line 1396
    .end local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v14    # "fd":J
    .end local v20    # "jan1":J
    .end local v36    # "value":I
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v43

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v43

    if-nez v43, :cond_1f

    .line 1399
    const/16 v43, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v37

    .line 1400
    .local v37, "weekOfYear":I
    const/16 v43, 0x1

    move/from16 v0, v37

    move/from16 v1, v43

    if-le v0, v1, :cond_1f

    const/16 v43, 0x34

    move/from16 v0, v37

    move/from16 v1, v43

    if-ge v0, v1, :cond_1f

    .line 1401
    const/16 v43, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1402
    const/16 v22, 0x7

    .line 1403
    goto/16 :goto_0

    .line 1411
    .end local v37    # "weekOfYear":I
    :cond_1f
    rem-int/lit8 p2, p2, 0x7

    .line 1412
    if-nez p2, :cond_20

    .line 1413
    return-void

    .line 1415
    :cond_20
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v14

    .line 1416
    .restart local v14    # "fd":J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v43, v0

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v43

    move/from16 v0, v43

    invoke-static {v14, v15, v0}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v12

    .line 1417
    .local v12, "dowFirst":J
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v14, v14, v44

    .line 1418
    cmp-long v43, v14, v12

    if-gez v43, :cond_22

    .line 1419
    const-wide/16 v44, 0x7

    add-long v14, v14, v44

    .line 1423
    :cond_21
    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v5

    .line 1424
    .restart local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v43

    if-gtz v43, :cond_23

    const/16 v43, 0x0

    :goto_b
    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1425
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v43

    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v44

    add-int/lit8 v44, v44, -0x1

    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v45

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;->set(III)V

    .line 1426
    return-void

    .line 1420
    .end local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    :cond_22
    const-wide/16 v44, 0x7

    add-long v44, v44, v12

    cmp-long v43, v14, v44

    if-ltz v43, :cond_21

    .line 1421
    const-wide/16 v44, 0x7

    sub-long v14, v14, v44

    goto :goto_a

    .line 1424
    .restart local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    :cond_23
    const/16 v43, 0x1

    goto :goto_b

    .line 1431
    .end local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v12    # "dowFirst":J
    .end local v14    # "fd":J
    :pswitch_8
    const/16 v23, 0x1

    .line 1432
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v43

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v43

    if-nez v43, :cond_25

    .line 1433
    const/16 v43, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v10

    .line 1434
    .local v10, "dom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v30

    .line 1435
    .restart local v30    # "monthLength":I
    rem-int/lit8 v19, v30, 0x7

    .line 1436
    .local v19, "lastDays":I
    div-int/lit8 v22, v30, 0x7

    .line 1437
    add-int/lit8 v43, v10, -0x1

    rem-int/lit8 v39, v43, 0x7

    .line 1438
    .local v39, "x":I
    move/from16 v0, v39

    move/from16 v1, v19

    if-ge v0, v1, :cond_24

    .line 1439
    add-int/lit8 v22, v22, 0x1

    .line 1441
    :cond_24
    const/16 v43, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v43

    const/16 v44, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_0

    .line 1446
    .end local v10    # "dom":I
    .end local v19    # "lastDays":I
    .end local v30    # "monthLength":I
    .end local v39    # "x":I
    :cond_25
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v14

    .line 1447
    .restart local v14    # "fd":J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1, v14, v15}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v26

    .line 1448
    .restart local v26    # "month1":J
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->actualMonthLength()I

    move-result v30

    .line 1449
    .restart local v30    # "monthLength":I
    rem-int/lit8 v19, v30, 0x7

    .line 1450
    .restart local v19    # "lastDays":I
    div-int/lit8 v22, v30, 0x7

    .line 1451
    sub-long v44, v14, v26

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v43, v0

    rem-int/lit8 v39, v43, 0x7

    .line 1452
    .restart local v39    # "x":I
    move/from16 v0, v39

    move/from16 v1, v19

    if-ge v0, v1, :cond_26

    .line 1453
    add-int/lit8 v22, v22, 0x1

    .line 1455
    :cond_26
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v43

    move/from16 v0, v43

    move/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    move-result v43

    add-int/lit8 v36, v43, -0x1

    .line 1456
    .restart local v36    # "value":I
    mul-int/lit8 v43, v36, 0x7

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v44, v44, v26

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v46, v0

    add-long v14, v44, v46

    .line 1457
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v44, v0

    cmp-long v43, v14, v44

    if-ltz v43, :cond_27

    sget-object v4, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    .line 1458
    .restart local v4    # "cal":Lsun/util/calendar/BaseCalendar;
    :goto_c
    sget-object v43, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v5

    check-cast v5, Lsun/util/calendar/BaseCalendar$Date;

    .line 1459
    .restart local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v4, v5, v14, v15}, Lsun/util/calendar/BaseCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 1460
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v43

    const/16 v44, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1461
    return-void

    .line 1457
    .end local v4    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    :cond_27
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v4

    .restart local v4    # "cal":Lsun/util/calendar/BaseCalendar;
    goto :goto_c

    .line 1148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public roll(IZ)V
    .locals 1
    .param p1, "field"    # I
    .param p2, "up"    # Z

    .prologue
    .line 1084
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/util/GregorianCalendar;->roll(II)V

    .line 1083
    return-void

    .line 1084
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setGregorianChange(Ljava/util/Date;)V
    .locals 4
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 745
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 746
    .local v0, "cutoverTime":J
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 747
    return-void

    .line 751
    :cond_0
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 752
    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(J)V

    .line 744
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 2
    .param p1, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 1975
    invoke-super {p0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1977
    iget-object v0, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    .line 1978
    iget-object v0, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    iget-object v1, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eq v0, v1, :cond_0

    .line 1979
    iget-object v0, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    .line 1974
    :cond_0
    return-void
.end method

.method public setWeekDate(III)V
    .locals 9
    .param p1, "weekYear"    # I
    .param p2, "weekOfYear"    # I
    .param p3, "dayOfWeek"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x7

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2143
    if-lt p3, v5, :cond_0

    if-le p3, v6, :cond_1

    .line 2144
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid dayOfWeek: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2149
    :cond_1
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/GregorianCalendar;

    .line 2150
    .local v2, "gc":Ljava/util/GregorianCalendar;
    invoke-virtual {v2, v5}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 2151
    invoke-virtual {v2, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 2152
    .local v1, "era":I
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->clear()V

    .line 2153
    const-string/jumbo v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2154
    invoke-virtual {v2, v4, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2155
    invoke-virtual {v2, v5, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2156
    invoke-virtual {v2, v7, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2157
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v3

    invoke-virtual {v2, v6, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2158
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v3

    sub-int v0, p3, v3

    .line 2159
    .local v0, "days":I
    if-gez v0, :cond_2

    .line 2160
    add-int/lit8 v0, v0, 0x7

    .line 2162
    :cond_2
    add-int/lit8 v3, p2, -0x1

    mul-int/lit8 v3, v3, 0x7

    add-int/2addr v0, v3

    .line 2163
    if-eqz v0, :cond_4

    .line 2164
    const/4 v3, 0x6

    invoke-virtual {v2, v3, v0}, Ljava/util/GregorianCalendar;->add(II)V

    .line 2169
    :goto_0
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v3

    if-nez v3, :cond_6

    .line 2170
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getWeekYear()I

    move-result v3

    if-ne v3, p1, :cond_3

    .line 2171
    invoke-virtual {v2, v7}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    if-eq v3, p2, :cond_5

    .line 2173
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 2166
    :cond_4
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->complete()V

    goto :goto_0

    .line 2172
    :cond_5
    invoke-virtual {v2, v6}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    if-ne v3, p3, :cond_3

    .line 2176
    :cond_6
    invoke-virtual {v2, v4}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    invoke-virtual {p0, v4, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2177
    invoke-virtual {v2, v5}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    invoke-virtual {p0, v5, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2178
    invoke-virtual {v2, v8}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    invoke-virtual {p0, v8, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2179
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {p0, v4, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2183
    invoke-virtual {p0, v7, p2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2184
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 2142
    return-void
.end method
