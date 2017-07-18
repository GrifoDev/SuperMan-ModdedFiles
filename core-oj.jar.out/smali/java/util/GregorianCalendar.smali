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

    const/16 v2, 0xc

    const/16 v1, 0x11

    const-class v0, Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljava/util/GregorianCalendar;->MONTH_LENGTH:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Ljava/util/GregorianCalendar;->LEAP_MONTH_LENGTH:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Ljava/util/GregorianCalendar;->MIN_VALUES:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Ljava/util/GregorianCalendar;->LEAST_MAX_VALUES:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Ljava/util/GregorianCalendar;->MAX_VALUES:[I

    invoke-static {}, Lsun/util/calendar/CalendarSystem;->getGregorianCalendar()Lsun/util/calendar/Gregorian;

    move-result-object v0

    sput-object v0, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

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

    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v0

    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->setZoneShared(Z)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 8

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Ljava/util/GregorianCalendar;-><init>(IIIIIII)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    invoke-direct/range {v0 .. v7}, Ljava/util/GregorianCalendar;-><init>(IIIIIII)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Ljava/util/GregorianCalendar;-><init>(IIIIIII)V

    return-void
.end method

.method constructor <init>(IIIIIII)V
    .locals 6

    const/16 v5, 0x62e

    const/16 v4, 0xc

    const/16 v3, 0xa

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/util/Calendar;-><init>()V

    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    const-wide/32 v0, 0x8d0c8

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    iput v5, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    iput v5, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    sget-object v0, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    iput-object v0, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {p0, v2, p1}, Ljava/util/GregorianCalendar;->set(II)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Ljava/util/GregorianCalendar;->set(II)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Ljava/util/GregorianCalendar;->set(II)V

    if-lt p4, v4, :cond_0

    const/16 v0, 0x17

    if-gt p4, v0, :cond_0

    const/16 v0, 0x9

    invoke-virtual {p0, v0, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    add-int/lit8 v0, p4, -0xc

    invoke-virtual {p0, v3, v0}, Ljava/util/GregorianCalendar;->internalSet(II)V

    :goto_0
    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->setFieldsComputed(I)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0, p4}, Ljava/util/GregorianCalendar;->set(II)V

    invoke-virtual {p0, v4, p5}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v0, 0xd

    invoke-virtual {p0, v0, p6}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {p0, v0, p7}, Ljava/util/GregorianCalendar;->internalSet(II)V

    return-void

    :cond_0
    invoke-virtual {p0, v3, p4}, Ljava/util/GregorianCalendar;->internalSet(II)V

    goto :goto_0
.end method

.method constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {p0, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->setZoneShared(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 1

    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 3

    const/16 v2, 0x62e

    invoke-direct {p0, p1, p2}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    const-wide/32 v0, 0x8d0c8

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    iput v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    iput v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    sget-object v0, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v0, p1}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    iput-object v0, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    return-void
.end method

.method private final actualMonthLength()I
    .locals 10

    iget-object v8, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v8}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v1

    iget v8, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-eq v1, v8, :cond_0

    iget v8, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-eq v1, v8, :cond_0

    iget-object v8, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    iget-object v9, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v8, v9}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v8

    return v8

    :cond_0
    iget-object v8, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v8}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    iget-object v8, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    invoke-virtual {v8, v0}, Lsun/util/calendar/BaseCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v4

    iget-object v8, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    invoke-virtual {v8, v0}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v8

    int-to-long v8, v8

    add-long v6, v4, v8

    iget-wide v8, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v8, v6, v8

    if-gez v8, :cond_1

    sub-long v8, v6, v4

    long-to-int v8, v8

    return v8

    :cond_1
    iget-object v8, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    iget-object v9, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eq v8, v9, :cond_2

    sget-object v8, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    sget-object v9, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v8, v9}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    :cond_2
    sget-object v8, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v8, v0, v6, v7}, Lsun/util/calendar/Gregorian;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    invoke-direct {p0, v0, v6, v7}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v6

    sub-long v8, v6, v4

    long-to-int v8, v8

    return v8
.end method

.method private adjustDstOffsetForInvalidWallClock(JLjava/util/TimeZone;I)I
    .locals 5

    if-eqz p4, :cond_0

    new-instance v0, Ljava/util/Date;

    int-to-long v2, p4

    sub-long v2, p1, v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p4, 0x0

    :cond_0
    return p4
.end method

.method private adjustForZoneAndDaylightSavingsTime(IJLjava/util/TimeZone;)J
    .locals 14

    const/16 v12, 0x10

    const/4 v11, 0x0

    const/16 v10, 0xf

    const/4 v7, 0x0

    const/4 v2, 0x0

    const v8, 0x18000

    if-eq p1, v8, :cond_1

    iget-object v8, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    if-nez v8, :cond_0

    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    :cond_0
    invoke-static {p1, v10}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p0, v10}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    :goto_0
    int-to-long v8, v3

    sub-long v4, p2, v8

    move-object/from16 v0, p4

    instance-of v8, v0, Llibcore/util/ZoneInfo;

    if-eqz v8, :cond_5

    move-object/from16 v6, p4

    check-cast v6, Llibcore/util/ZoneInfo;

    iget-object v8, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    invoke-virtual {v6, v4, v5, v8}, Llibcore/util/ZoneInfo;->getOffsetsByUtcTime(J[I)I

    :goto_1
    iget-object v8, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    aget v7, v8, v11

    iget-object v8, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    const/4 v9, 0x1

    aget v2, v8, v9

    move-object/from16 v0, p4

    invoke-direct {p0, v4, v5, v0, v2}, Ljava/util/GregorianCalendar;->adjustDstOffsetForInvalidWallClock(JLjava/util/TimeZone;I)I

    move-result v2

    :cond_1
    if-eqz p1, :cond_3

    invoke-static {p1, v10}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0, v10}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v7

    :cond_2
    invoke-static {p1, v12}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0, v12}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    :cond_3
    int-to-long v8, v7

    sub-long v4, p2, v8

    int-to-long v8, v2

    sub-long v8, v4, v8

    return-wide v8

    :cond_4
    invoke-virtual/range {p4 .. p4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    goto :goto_0

    :cond_5
    iget-object v8, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5, v8}, Ljava/util/TimeZone;->getOffsets(J[I)I

    goto :goto_1
.end method

.method private computeFields(II)I
    .locals 50

    const/16 v42, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    move-object/from16 v43, v0

    if-nez v43, :cond_0

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    :cond_0
    const v43, 0x18000

    move/from16 v0, p2

    move/from16 v1, v43

    if-eq v0, v1, :cond_1

    move-object/from16 v0, v38

    instance-of v0, v0, Llibcore/util/ZoneInfo;

    move/from16 v43, v0

    if-eqz v43, :cond_6

    move-object/from16 v41, v38

    check-cast v41, Llibcore/util/ZoneInfo;

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

    :cond_1
    :goto_0
    if-eqz p2, :cond_4

    const/16 v43, 0xf

    move/from16 v0, p2

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v43

    if-eqz v43, :cond_2

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

    :cond_2
    const/16 v43, 0x10

    move/from16 v0, p2

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v43

    if-eqz v43, :cond_3

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

    :cond_4
    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v44, v0

    const-wide/32 v46, 0x5265c00

    div-long v14, v44, v46

    const v43, 0x5265c00

    rem-int v37, v42, v43

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    move-wide/from16 v44, v0

    const-wide/32 v46, 0x5265c00

    div-long v44, v44, v46

    add-long v14, v14, v44

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    move-wide/from16 v44, v0

    const-wide/32 v46, 0x5265c00

    rem-long v44, v44, v46

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v43, v0

    add-int v37, v37, v43

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v44, v0

    const-wide/32 v46, 0x5265c00

    cmp-long v43, v44, v46

    if-ltz v43, :cond_7

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v44, v0

    const-wide/32 v46, 0x5265c00

    sub-long v44, v44, v46

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v37, v0

    const-wide/16 v44, 0x1

    add-long v14, v14, v44

    :cond_5
    const-wide/32 v44, 0xaf93b

    add-long v14, v14, v44

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v44, v0

    cmp-long v43, v14, v44

    if-ltz v43, :cond_10

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

    const-string/jumbo v44, "cache control: not normalized"

    invoke-direct/range {v43 .. v44}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v43

    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    move-wide/from16 v44, v0

    move-object/from16 v0, v38

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v42

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    move-object/from16 v43, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v44

    const/16 v45, 0x0

    aput v44, v43, v45

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

    :cond_7
    :goto_2
    if-gez v37, :cond_5

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v44, v0

    const-wide/32 v46, 0x5265c00

    add-long v44, v44, v46

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v37, v0

    const-wide/16 v44, 0x1

    sub-long v14, v14, v44

    goto :goto_2

    :cond_8
    const/16 v43, 0x1

    goto :goto_1

    :cond_9
    sget-boolean v43, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v43, :cond_c

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    move-wide/from16 v44, v0

    const-wide/high16 v46, -0x8000000000000000L

    cmp-long v43, v44, v46

    if-eqz v43, :cond_a

    sget-object v43, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v44

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v45

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v47, v0

    invoke-virtual/range {v43 .. v47}, Lsun/util/calendar/Gregorian;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v44

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    move-wide/from16 v46, v0

    cmp-long v43, v44, v46

    if-nez v43, :cond_b

    const/16 v43, 0x1

    :goto_3
    if-nez v43, :cond_c

    new-instance v43, Ljava/lang/AssertionError;

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "cache control: inconsictency, cachedFixedDate="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    move-wide/from16 v46, v0

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, ", computed="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    sget-object v45, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v47

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v48

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v49, v0

    invoke-virtual/range {v45 .. v49}, Lsun/util/calendar/Gregorian;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v46

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, ", date="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v43

    :cond_a
    const/16 v43, 0x1

    goto :goto_3

    :cond_b
    const/16 v43, 0x0

    goto :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    move-wide/from16 v44, v0

    cmp-long v43, v14, v44

    if-eqz v43, :cond_d

    sget-object v43, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v0, v1, v14, v15}, Lsun/util/calendar/Gregorian;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    move-object/from16 v0, p0

    iput-wide v14, v0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v40

    if-gtz v40, :cond_e

    rsub-int/lit8 v40, v40, 0x1

    const/4 v12, 0x0

    :cond_e
    sget-object v43, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

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

    :cond_10
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    sget-object v43, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lsun/util/calendar/JulianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    sget-object v43, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v0, v1, v14, v15}, Lsun/util/calendar/JulianCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v11

    sget-object v43, Ljava/util/GregorianCalendar;->jeras:[Lsun/util/calendar/Era;

    const/16 v44, 0x0

    aget-object v43, v43, v44

    move-object/from16 v0, v43

    if-ne v11, v0, :cond_11

    const/4 v12, 0x0

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v40

    :cond_12
    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1, v12}, Ljava/util/GregorianCalendar;->internalSet(II)V

    const/16 v43, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    or-int/lit8 v22, p1, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v43

    add-int/lit8 v23, v43, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v9

    move/from16 v0, p1

    and-int/lit16 v0, v0, 0xa4

    move/from16 v43, v0

    if-eqz v43, :cond_13

    const/16 v43, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    const/16 v43, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1, v9}, Ljava/util/GregorianCalendar;->internalSet(II)V

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

    move/from16 v0, v22

    or-int/lit16 v0, v0, 0xa4

    move/from16 v22, v0

    :cond_13
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x7e00

    move/from16 v43, v0

    if-eqz v43, :cond_14

    if-eqz v37, :cond_1b

    const v43, 0x36ee80

    div-int v13, v37, v43

    const/16 v43, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1, v13}, Ljava/util/GregorianCalendar;->internalSet(II)V

    div-int/lit8 v43, v13, 0xc

    const/16 v44, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    rem-int/lit8 v43, v13, 0xc

    const/16 v44, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    const v43, 0x36ee80

    rem-int v34, v37, v43

    const v43, 0xea60

    div-int v43, v34, v43

    const/16 v44, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    const v43, 0xea60

    rem-int v34, v34, v43

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v43, v0

    const/16 v44, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    move/from16 v0, v34

    rem-int/lit16 v0, v0, 0x3e8

    move/from16 v43, v0

    const/16 v44, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    :goto_5
    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x7e00

    move/from16 v22, v0

    :cond_14
    const v43, 0x18000

    and-int v43, v43, p1

    if-eqz v43, :cond_15

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

    const v43, 0x18000

    or-int v22, v22, v43

    :cond_15
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x158

    move/from16 v43, v0

    if-eqz v43, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v30

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

    sub-long v44, v14, v16

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v43, v0

    add-int/lit8 v10, v43, 0x1

    int-to-long v0, v9

    move-wide/from16 v44, v0

    sub-long v44, v14, v44

    const-wide/16 v46, 0x1

    add-long v18, v44, v46

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v43, v0

    sget-object v44, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    if-ne v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    :goto_6
    add-int/lit8 v36, v9, -0x1

    move/from16 v0, v30

    if-ne v0, v8, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v44, v0

    move/from16 v0, v43

    move/from16 v1, v44

    if-gt v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1, v14, v15}, Ljava/util/GregorianCalendar;->getFixedDateJan1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v44, v0

    cmp-long v43, v14, v44

    if-ltz v43, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1, v14, v15}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v18

    :cond_16
    sub-long v44, v14, v16

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v43, v0

    add-int/lit8 v35, v43, 0x1

    sub-int v7, v10, v35

    move/from16 v10, v35

    sub-long v44, v14, v18

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v36, v0

    :cond_17
    const/16 v43, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1, v10}, Ljava/util/GregorianCalendar;->internalSet(II)V

    div-int/lit8 v43, v36, 0x7

    add-int/lit8 v43, v43, 0x1

    const/16 v44, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2, v14, v15}, Ljava/util/GregorianCalendar;->getWeekNumber(JJ)I

    move-result v39

    if-nez v39, :cond_21

    const-wide/16 v44, 0x1

    sub-long v20, v16, v44

    const-wide/16 v44, 0x16d

    sub-long v32, v16, v44

    add-int/lit8 v43, v8, 0x1

    move/from16 v0, v30

    move/from16 v1, v43

    if-le v0, v1, :cond_1d

    add-int/lit8 v43, v30, -0x1

    invoke-static/range {v43 .. v43}, Lsun/util/calendar/CalendarUtils;->isGregorianLeapYear(I)Z

    move-result v43

    if-eqz v43, :cond_18

    const-wide/16 v44, 0x1

    sub-long v32, v32, v44

    :cond_18
    :goto_7
    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    move-wide/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/GregorianCalendar;->getWeekNumber(JJ)I

    move-result v39

    :cond_19
    :goto_8
    const/16 v43, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2, v14, v15}, Ljava/util/GregorianCalendar;->getWeekNumber(JJ)I

    move-result v43

    const/16 v44, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x158

    move/from16 v22, v0

    :cond_1a
    return v22

    :cond_1b
    const/16 v43, 0xb

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    const/16 v43, 0x9

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    const/16 v43, 0xa

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    const/16 v43, 0xc

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    const/16 v43, 0xd

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    const/16 v43, 0xe

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    goto/16 :goto_5

    :cond_1c
    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    goto/16 :goto_6

    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v43, v0

    move/from16 v0, v30

    move/from16 v1, v43

    if-gt v0, v1, :cond_1e

    add-int/lit8 v43, v30, -0x1

    invoke-static/range {v43 .. v43}, Lsun/util/calendar/CalendarUtils;->isJulianLeapYear(I)Z

    move-result v43

    if-eqz v43, :cond_18

    const-wide/16 v44, 0x1

    sub-long v32, v32, v44

    goto/16 :goto_7

    :cond_1e
    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v43, v0

    move/from16 v0, v31

    move/from16 v1, v43

    if-ne v0, v1, :cond_20

    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCutoverCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v6

    sget-object v43, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    move-object/from16 v0, v43

    if-ne v6, v0, :cond_1f

    const/16 v43, 0x1

    const/16 v44, 0x1

    const/16 v45, 0x0

    move/from16 v0, v31

    move/from16 v1, v43

    move/from16 v2, v44

    move-object/from16 v3, v45

    invoke-virtual {v6, v0, v1, v2, v3}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v32

    goto/16 :goto_7

    :cond_1f
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v32, v0

    sget-object v6, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    goto/16 :goto_7

    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v43, v0

    move/from16 v0, v31

    move/from16 v1, v43

    if-gt v0, v1, :cond_18

    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v6

    const/16 v43, 0x1

    const/16 v44, 0x1

    const/16 v45, 0x0

    move/from16 v0, v31

    move/from16 v1, v43

    move/from16 v2, v44

    move-object/from16 v3, v45

    invoke-virtual {v6, v0, v1, v2, v3}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v32

    goto/16 :goto_7

    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v43, v0

    move/from16 v0, v30

    move/from16 v1, v43

    if-gt v0, v1, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x1

    move/from16 v0, v30

    move/from16 v1, v43

    if-ge v0, v1, :cond_24

    :cond_22
    const/16 v43, 0x34

    move/from16 v0, v39

    move/from16 v1, v43

    if-lt v0, v1, :cond_19

    const-wide/16 v44, 0x16d

    add-long v26, v16, v44

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->isLeapYear()Z

    move-result v43

    if-eqz v43, :cond_23

    const-wide/16 v44, 0x1

    add-long v26, v26, v44

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v43, v0

    const-wide/16 v44, 0x6

    add-long v44, v44, v26

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v43

    move-wide/from16 v0, v44

    move/from16 v2, v43

    invoke-static {v0, v1, v2}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v28

    sub-long v44, v28, v26

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v43

    move/from16 v0, v24

    move/from16 v1, v43

    if-lt v0, v1, :cond_19

    const-wide/16 v44, 0x7

    sub-long v44, v28, v44

    cmp-long v43, v14, v44

    if-ltz v43, :cond_19

    const/16 v39, 0x1

    goto/16 :goto_8

    :cond_24
    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    add-int/lit8 v25, v30, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, 0x1

    move/from16 v0, v25

    move/from16 v1, v43

    if-ne v0, v1, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v43, v0

    move/from16 v0, v25

    move/from16 v1, v43

    if-ge v0, v1, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v25, v0

    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v43, v0

    move/from16 v0, v25

    move/from16 v1, v43

    if-ne v0, v1, :cond_26

    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCutoverCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v6

    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v43, v0

    move/from16 v0, v25

    move/from16 v1, v43

    if-gt v0, v1, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v44, v0

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_28

    :cond_27
    const/16 v43, 0x1

    const/16 v44, 0x1

    const/16 v45, 0x0

    move/from16 v0, v25

    move/from16 v1, v43

    move/from16 v2, v44

    move-object/from16 v3, v45

    invoke-virtual {v6, v0, v1, v2, v3}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v26

    :goto_9
    const-wide/16 v44, 0x6

    add-long v44, v44, v26

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v43

    move-wide/from16 v0, v44

    move/from16 v2, v43

    invoke-static {v0, v1, v2}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v28

    sub-long v44, v28, v26

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v43

    move/from16 v0, v24

    move/from16 v1, v43

    if-lt v0, v1, :cond_19

    const-wide/16 v44, 0x7

    sub-long v44, v28, v44

    cmp-long v43, v14, v44

    if-ltz v43, :cond_19

    const/16 v39, 0x1

    goto/16 :goto_8

    :cond_28
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v43, v0

    move/from16 v0, v25

    move/from16 v1, v43

    if-eq v0, v1, :cond_27

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v26, v0

    sget-object v6, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    goto :goto_9
.end method

.method private final getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;
    .locals 5

    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    sget-object v0, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    :goto_0
    sget-object v2, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v2}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/calendar/BaseCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    return-object v1

    :cond_0
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    goto :goto_0
.end method

.method private final getCurrentFixedDate()J
    .locals 2

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

    iget v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    iget v1, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-ge v0, v1, :cond_0

    sget-object v0, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    return-object v0
.end method

.method private getFixedDate(Lsun/util/calendar/BaseCalendar;II)J
    .locals 16

    const/4 v9, 0x0

    const/4 v11, 0x2

    move/from16 v0, p3

    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v9

    const/16 v11, 0xb

    if-le v9, v11, :cond_2

    div-int/lit8 v11, v9, 0xc

    add-int p2, p2, v11

    rem-int/lit8 v9, v9, 0xc

    :cond_0
    :goto_0
    add-int/lit8 v12, v9, 0x1

    sget-object v11, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, p1

    if-ne v0, v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    :goto_1
    const/4 v13, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v12, v13, v11}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v6

    const/4 v11, 0x2

    move/from16 v0, p3

    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v11, 0x5

    move/from16 v0, p3

    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->isSet(I)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v11

    int-to-long v12, v11

    add-long/2addr v6, v12

    const-wide/16 v12, 0x1

    sub-long/2addr v6, v12

    :cond_1
    :goto_2
    return-wide v6

    :cond_2
    if-gez v9, :cond_0

    const/4 v11, 0x1

    new-array v10, v11, [I

    const/16 v11, 0xc

    invoke-static {v9, v11, v10}, Lsun/util/calendar/CalendarUtils;->floorDivide(II[I)I

    move-result v11

    add-int p2, p2, v11

    const/4 v11, 0x0

    aget v9, v10, v11

    goto :goto_0

    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    :cond_4
    const/4 v11, 0x4

    move/from16 v0, p3

    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_7

    const-wide/16 v12, 0x6

    add-long/2addr v12, v6

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v11

    invoke-static {v12, v13, v11}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v4

    sub-long v12, v4, v6

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v11

    int-to-long v14, v11

    cmp-long v11, v12, v14

    if-ltz v11, :cond_5

    const-wide/16 v12, 0x7

    sub-long/2addr v4, v12

    :cond_5
    const/4 v11, 0x7

    move/from16 v0, p3

    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_6

    const-wide/16 v12, 0x6

    add-long/2addr v12, v4

    const/4 v11, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v11

    invoke-static {v12, v13, v11}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v4

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

    :cond_7
    const/4 v11, 0x7

    move/from16 v0, p3

    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v11, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    :goto_3
    const/16 v11, 0x8

    move/from16 v0, p3

    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_9

    const/16 v11, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    :goto_4
    if-ltz v3, :cond_a

    mul-int/lit8 v11, v3, 0x7

    int-to-long v12, v11

    add-long/2addr v12, v6

    const-wide/16 v14, 0x1

    sub-long/2addr v12, v14

    invoke-static {v12, v13, v2}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v6

    goto/16 :goto_2

    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v2

    goto :goto_3

    :cond_9
    const/4 v3, 0x1

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v9, v1}, Ljava/util/GregorianCalendar;->monthLength(II)I

    move-result v11

    add-int/lit8 v12, v3, 0x1

    mul-int/lit8 v12, v12, 0x7

    add-int v8, v11, v12

    int-to-long v12, v8

    add-long/2addr v12, v6

    const-wide/16 v14, 0x1

    sub-long/2addr v12, v14

    invoke-static {v12, v13, v2}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v6

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget v11, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v0, p2

    if-ne v0, v11, :cond_c

    sget-object v11, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, p1

    if-ne v0, v11, :cond_c

    move-object/from16 v0, p0

    iget-wide v12, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v11, v6, v12

    if-gez v11, :cond_c

    move-object/from16 v0, p0

    iget v11, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move-object/from16 v0, p0

    iget v12, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-eq v11, v12, :cond_c

    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    :cond_c
    const/4 v11, 0x6

    move/from16 v0, p3

    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_d

    const/4 v11, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v11

    int-to-long v12, v11

    add-long/2addr v6, v12

    const-wide/16 v12, 0x1

    sub-long/2addr v6, v12

    goto/16 :goto_2

    :cond_d
    const-wide/16 v12, 0x6

    add-long/2addr v12, v6

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v11

    invoke-static {v12, v13, v11}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v4

    sub-long v12, v4, v6

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v11

    int-to-long v14, v11

    cmp-long v11, v12, v14

    if-ltz v11, :cond_e

    const-wide/16 v12, 0x7

    sub-long/2addr v4, v12

    :cond_e
    const/4 v11, 0x7

    move/from16 v0, p3

    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_f

    const/4 v11, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v11

    if-eq v2, v11, :cond_f

    const-wide/16 v12, 0x6

    add-long/2addr v12, v4

    invoke-static {v12, v13, v2}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v4

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

    const/4 v2, 0x1

    sget-boolean v1, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v1

    iget v3, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-eq v1, v3, :cond_0

    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v1

    iget v3, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ne v1, v3, :cond_1

    move v1, v2

    :goto_0
    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget v1, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    iget v3, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-eq v1, v3, :cond_3

    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v1, p2, v4

    if-ltz v1, :cond_3

    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    return-wide v2

    :cond_3
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v2, v3}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v2

    return-wide v2
.end method

.method private final getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J
    .locals 10

    const-wide/16 v8, 0x1

    const/4 v5, 0x1

    sget-boolean v4, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v4

    iget v6, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-eq v4, v6, :cond_0

    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v4

    iget v6, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ne v4, v6, :cond_1

    move v4, v5

    :goto_0
    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_0
    move v4, v5

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getGregorianCutoverDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v2

    invoke-virtual {v2}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v4

    if-ne v4, v5, :cond_3

    invoke-virtual {v2}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v4

    if-ne v4, v5, :cond_3

    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v4

    int-to-long v4, v4

    sub-long v4, p2, v4

    add-long/2addr v4, v8

    return-wide v4

    :cond_3
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v4

    invoke-virtual {v2}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v6

    if-ne v4, v6, :cond_5

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getLastJulianDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v3

    iget v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    iget v6, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ne v4, v6, :cond_4

    invoke-virtual {v2}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v4

    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v6

    if-ne v4, v6, :cond_4

    sget-object v4, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v6

    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v5, v8}, Lsun/util/calendar/JulianCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v0

    :goto_1
    return-wide v0

    :cond_4
    iget-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v4

    int-to-long v4, v4

    sub-long v4, p2, v4

    add-long v0, v4, v8

    goto :goto_1
.end method

.method private final getGregorianCutoverDate()Lsun/util/calendar/BaseCalendar$Date;
    .locals 2

    iget-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method private static final declared-synchronized getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;
    .locals 2

    const-class v1, Ljava/util/GregorianCalendar;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    if-nez v0, :cond_0

    const-string/jumbo v0, "julian"

    invoke-static {v0}, Lsun/util/calendar/CalendarSystem;->forName(Ljava/lang/String;)Lsun/util/calendar/CalendarSystem;

    move-result-object v0

    check-cast v0, Lsun/util/calendar/JulianCalendar;

    sput-object v0, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    sget-object v0, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    invoke-virtual {v0}, Lsun/util/calendar/JulianCalendar;->getEras()[Lsun/util/calendar/Era;

    move-result-object v0

    sput-object v0, Ljava/util/GregorianCalendar;->jeras:[Lsun/util/calendar/Era;

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

    iget-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method private final getNormalizedCalendar()Ljava/util/GregorianCalendar;
    .locals 2

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->isFullyNormalized()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->complete()V

    goto :goto_0
.end method

.method private static final getRolledValue(IIII)I
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

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

    :cond_1
    sub-int v4, p3, p2

    add-int/lit8 v1, v4, 0x1

    rem-int/2addr p1, v1

    add-int v0, p0, p1

    if-le v0, p3, :cond_3

    sub-int/2addr v0, v1

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

    :cond_3
    if-ge v0, p2, :cond_2

    add-int/2addr v0, v1

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    return v0
.end method

.method private final getWeekNumber(JJ)I
    .locals 9

    const/4 v8, 0x7

    const/4 v4, 0x0

    sget-object v5, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    const-wide/16 v6, 0x6

    add-long/2addr v6, p1

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v5

    invoke-static {v6, v7, v5}, Lsun/util/calendar/Gregorian;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v0

    sub-long v6, v0, p1

    long-to-int v2, v6

    sget-boolean v5, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v5, :cond_1

    if-gt v2, v8, :cond_0

    const/4 v4, 0x1

    :cond_0
    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_1
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v4

    if-lt v2, v4, :cond_2

    const-wide/16 v4, 0x7

    sub-long/2addr v0, v4

    :cond_2
    sub-long v4, p3, v0

    long-to-int v3, v4

    if-ltz v3, :cond_3

    div-int/lit8 v4, v3, 0x7

    add-int/lit8 v4, v4, 0x1

    return v4

    :cond_3
    invoke-static {v3, v8}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    return v4
.end method

.method private final getYearOffsetInMillis()J
    .locals 6

    const-wide/16 v4, 0x3c

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x18

    int-to-long v0, v2

    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    mul-long/2addr v0, v4

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    mul-long/2addr v0, v4

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    const/16 v4, 0xf

    invoke-virtual {p0, v4}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v4

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v5

    add-int/2addr v4, v5

    int-to-long v4, v4

    sub-long/2addr v2, v4

    return-wide v2
.end method

.method private final internalGetEra()I
    .locals 2

    const/4 v1, 0x0

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

    iget-object v1, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    sget-object v2, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    if-ne v1, v2, :cond_0

    iget v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    :goto_0
    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    iget v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private final monthLength(I)I
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v0

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->internalGetEra()I

    move-result v1

    if-nez v1, :cond_0

    rsub-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-direct {p0, p1, v0}, Ljava/util/GregorianCalendar;->monthLength(II)I

    move-result v1

    return v1
.end method

.method private final monthLength(II)I
    .locals 1

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

    const/4 v5, 0x5

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    iget v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-gt v3, v4, :cond_0

    iget v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ge v3, v4, :cond_2

    :cond_0
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v4

    invoke-direct {p0, v4}, Ljava/util/GregorianCalendar;->monthLength(I)I

    move-result v2

    :goto_0
    invoke-virtual {p0, v5}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v0

    if-le v0, v2, :cond_1

    invoke-virtual {p0, v5, v2}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getNormalizedCalendar()Ljava/util/GregorianCalendar;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v2

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object v0, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    iput-object v0, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    :cond_0
    iget-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(J)V

    return-void
.end method

.method private setGregorianChange(J)V
    .locals 9

    const-wide/16 v6, 0x1

    iput-wide p1, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    const-wide/32 v2, 0x5265c00

    invoke-static {p1, p2, v2, v3}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v2

    const-wide/32 v4, 0xaf93b

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    :cond_0
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getGregorianCutoverDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v2

    iput v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v1

    sget-object v2, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v0

    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    sub-long/2addr v2, v6

    invoke-virtual {v1, v0, v2, v3}, Lsun/util/calendar/BaseCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v2

    iput v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    iget-wide v2, p0, Ljava/util/GregorianCalendar;->time:J

    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->setUnnormalized()V

    :cond_1
    return-void
.end method

.method private final yearLength()I
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v0

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->internalGetEra()I

    move-result v1

    if-nez v1, :cond_0

    rsub-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Ljava/util/GregorianCalendar;->yearLength(I)I

    move-result v1

    return v1
.end method

.method private final yearLength(I)I
    .locals 1

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

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    const/16 v19, 0xf

    move/from16 v0, p1

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    :cond_1
    new-instance v19, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v19 .. v19}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v19

    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    const/16 v19, 0x1

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v18

    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->internalGetEra()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    add-int v18, v18, p2

    if-lez v18, :cond_3

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    :goto_0
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->pinDayOfMonth()V

    :goto_1
    return-void

    :cond_3
    rsub-int/lit8 v19, v18, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_0

    :cond_4
    sub-int v18, v18, p2

    if-lez v18, :cond_5

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_0

    :cond_5
    rsub-int/lit8 v19, v18, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_0

    :cond_6
    const/16 v19, 0x2

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v19

    add-int v7, v19, p2

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v18

    if-ltz v7, :cond_8

    div-int/lit8 v15, v7, 0xc

    :goto_2
    if-eqz v15, :cond_7

    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->internalGetEra()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    add-int v18, v18, v15

    if-lez v18, :cond_9

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_7
    :goto_3
    if-ltz v7, :cond_c

    rem-int/lit8 v19, v7, 0xc

    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    :goto_4
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->pinDayOfMonth()V

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v19, v7, 0x1

    div-int/lit8 v19, v19, 0xc

    add-int/lit8 v15, v19, -0x1

    goto :goto_2

    :cond_9
    rsub-int/lit8 v19, v18, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_3

    :cond_a
    sub-int v18, v18, v15

    if-lez v18, :cond_b

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_3

    :cond_b
    rsub-int/lit8 v19, v18, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_3

    :cond_c
    rem-int/lit8 v7, v7, 0xc

    if-gez v7, :cond_d

    add-int/lit8 v7, v7, 0xc

    :cond_d
    add-int/lit8 v19, v7, 0x0

    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_4

    :cond_e
    if-nez p1, :cond_11

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v19

    add-int v6, v19, p2

    if-gez v6, :cond_f

    const/4 v6, 0x0

    :cond_f
    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v6, v0, :cond_10

    const/4 v6, 0x1

    :cond_10
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1

    :cond_11
    move/from16 v0, p2

    int-to-long v4, v0

    const-wide/16 v12, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_5
    :pswitch_0
    const/16 v19, 0xa

    move/from16 v0, p1

    move/from16 v1, v19

    if-lt v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    move-wide/from16 v20, v0

    add-long v20, v20, v4

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    return-void

    :pswitch_1
    const-wide/32 v20, 0x36ee80

    mul-long v4, v4, v20

    goto :goto_5

    :pswitch_2
    const-wide/32 v20, 0xea60

    mul-long v4, v4, v20

    goto :goto_5

    :pswitch_3
    const-wide/16 v20, 0x3e8

    mul-long v4, v4, v20

    goto :goto_5

    :pswitch_4
    const-wide/16 v20, 0x7

    mul-long v4, v4, v20

    goto :goto_5

    :pswitch_5
    div-int/lit8 v19, p2, 0x2

    move/from16 v0, v19

    int-to-long v4, v0

    rem-int/lit8 v19, p2, 0x2

    mul-int/lit8 v19, v19, 0xc

    move/from16 v0, v19

    int-to-long v12, v0

    goto :goto_5

    :cond_12
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v8

    const/16 v19, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v12, v12, v20

    const-wide/16 v20, 0x3c

    mul-long v12, v12, v20

    const/16 v19, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v12, v12, v20

    const-wide/16 v20, 0x3c

    mul-long v12, v12, v20

    const/16 v19, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v12, v12, v20

    const-wide/16 v20, 0x3e8

    mul-long v12, v12, v20

    const/16 v19, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v12, v12, v20

    const-wide/32 v20, 0x5265c00

    cmp-long v19, v12, v20

    if-ltz v19, :cond_14

    const-wide/16 v20, 0x1

    add-long v8, v8, v20

    const-wide/32 v20, 0x5265c00

    sub-long v12, v12, v20

    :cond_13
    :goto_6
    add-long/2addr v8, v4

    const-wide/32 v20, 0xaf93b

    sub-long v20, v8, v20

    const-wide/32 v22, 0x5265c00

    mul-long v20, v20, v22

    add-long v16, v20, v12

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v19

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-object/from16 v3, v19

    invoke-direct {v0, v14, v1, v2, v3}, Ljava/util/GregorianCalendar;->adjustForZoneAndDaylightSavingsTime(IJLjava/util/TimeZone;)J

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    goto/16 :goto_1

    :cond_14
    const-wide/16 v20, 0x0

    cmp-long v19, v12, v20

    if-gez v19, :cond_13

    const-wide/16 v20, 0x1

    sub-long v8, v8, v20

    const-wide/32 v20, 0x5265c00

    add-long v12, v12, v20

    goto :goto_6

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

    const/4 v3, 0x0

    invoke-super {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    iget-object v1, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/BaseCalendar$Date;

    iput-object v1, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    iget-object v2, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/BaseCalendar$Date;

    iput-object v1, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    :cond_0
    :goto_0
    iput-object v3, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    iput-object v3, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    return-object v0

    :cond_1
    iget-object v1, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    iput-object v1, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    goto :goto_0
.end method

.method protected computeFields()V
    .locals 5

    const v4, 0x1ffff

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->isPartiallyNormalized()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getSetStateFields()I

    move-result v1

    not-int v3, v1

    and-int v0, v3, v4

    if-nez v0, :cond_0

    iget-object v3, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    if-nez v3, :cond_3

    :cond_0
    const v3, 0x18000

    and-int/2addr v3, v1

    invoke-direct {p0, v0, v3}, Ljava/util/GregorianCalendar;->computeFields(II)I

    move-result v3

    or-int/2addr v1, v3

    sget-boolean v3, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v3, :cond_3

    if-ne v1, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_2
    const v1, 0x1ffff

    invoke-direct {p0, v1, v2}, Ljava/util/GregorianCalendar;->computeFields(II)I

    :cond_3
    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->setFieldsComputed(I)V

    return-void
.end method

.method protected computeTime()V
    .locals 30

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v25

    if-nez v25, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    move-object/from16 v25, v0

    if-nez v25, :cond_0

    const/16 v25, 0x11

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/GregorianCalendar;->originalFields:[I

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/16 v25, 0x11

    move/from16 v0, v25

    if-ge v7, v0, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v22

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->isExternallySet(I)Z

    move-result v25

    if-eqz v25, :cond_2

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

    :cond_1
    new-instance v25, Ljava/lang/IllegalArgumentException;

    invoke-static {v7}, Ljava/util/GregorianCalendar;->getFieldName(I)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v25

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    move-object/from16 v25, v0

    aput v22, v25, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->selectFields()I

    move-result v8

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

    :goto_1
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->internalGetEra()I

    move-result v6

    if-nez v6, :cond_8

    rsub-int/lit8 v23, v23, 0x1

    :cond_4
    if-gtz v23, :cond_5

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isSet(I)Z

    move-result v25

    if-eqz v25, :cond_9

    :cond_5
    :goto_2
    const/16 v25, 0xb

    move/from16 v0, v25

    invoke-static {v8, v0}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v25

    if-eqz v25, :cond_a

    const/16 v25, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    add-long v20, v28, v26

    :cond_6
    :goto_3
    const-wide/16 v26, 0x3c

    mul-long v20, v20, v26

    const/16 v25, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v20, v20, v26

    const-wide/16 v26, 0x3c

    mul-long v20, v20, v26

    const/16 v25, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v20, v20, v26

    const-wide/16 v26, 0x3e8

    mul-long v20, v20, v26

    const/16 v25, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v20, v20, v26

    const-wide/32 v26, 0x5265c00

    div-long v10, v20, v26

    const-wide/32 v26, 0x5265c00

    rem-long v20, v20, v26

    :goto_4
    const-wide/16 v26, 0x0

    cmp-long v25, v20, v26

    if-gez v25, :cond_b

    const-wide/32 v26, 0x5265c00

    add-long v20, v20, v26

    const-wide/16 v26, 0x1

    sub-long v10, v10, v26

    goto :goto_4

    :cond_7
    const/16 v23, 0x7b2

    goto/16 :goto_1

    :cond_8
    const/16 v25, 0x1

    move/from16 v0, v25

    if-eq v6, v0, :cond_4

    new-instance v25, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v26, "Invalid era"

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v25

    :cond_9
    or-int/lit8 v8, v8, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setFieldsComputed(I)V

    goto/16 :goto_2

    :cond_a
    const/16 v25, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    add-long v20, v28, v26

    const/16 v25, 0x9

    move/from16 v0, v25

    invoke-static {v8, v0}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v25

    if-eqz v25, :cond_6

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

    sget-object v25, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v8}, Ljava/util/GregorianCalendar;->getFixedDate(Lsun/util/calendar/BaseCalendar;II)J

    move-result-wide v26

    add-long v12, v10, v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v26, v0

    cmp-long v25, v12, v26

    if-ltz v25, :cond_d

    move-wide v10, v12

    :goto_5
    const-wide/32 v26, 0xaf93b

    sub-long v26, v10, v26

    const-wide/32 v28, 0x5265c00

    mul-long v26, v26, v28

    add-long v16, v26, v20

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v24

    const v25, 0x18000

    and-int v19, v8, v25

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-wide/from16 v2, v16

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/GregorianCalendar;->adjustForZoneAndDaylightSavingsTime(IJLjava/util/TimeZone;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljava/util/GregorianCalendar;->time:J

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getSetStateFields()I

    move-result v25

    or-int v25, v25, v8

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->computeFields(II)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v25

    if-nez v25, :cond_1b

    const/4 v7, 0x0

    :goto_6
    const/16 v25, 0x11

    move/from16 v0, v25

    if-ge v7, v0, :cond_1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->isExternallySet(I)Z

    move-result v25

    if-nez v25, :cond_1a

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_d
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v8}, Ljava/util/GregorianCalendar;->getFixedDate(Lsun/util/calendar/BaseCalendar;II)J

    move-result-wide v26

    add-long v14, v10, v26

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

    move-wide v10, v14

    goto/16 :goto_5

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

    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v8}, Ljava/util/GregorianCalendar;->getFixedDate(Lsun/util/calendar/BaseCalendar;II)J

    move-result-wide v26

    add-long v14, v10, v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v26, v0

    cmp-long v25, v14, v26

    if-gez v25, :cond_10

    move-wide v10, v14

    goto/16 :goto_5

    :cond_10
    move-wide v12, v14

    goto :goto_7

    :cond_11
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v8}, Ljava/util/GregorianCalendar;->getFixedDate(Lsun/util/calendar/BaseCalendar;II)J

    move-result-wide v26

    add-long v14, v10, v26

    sget-object v25, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v8}, Ljava/util/GregorianCalendar;->getFixedDate(Lsun/util/calendar/BaseCalendar;II)J

    move-result-wide v26

    add-long v12, v10, v26

    goto :goto_7

    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_13

    move-wide v10, v12

    goto/16 :goto_5

    :cond_13
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v26, v0

    cmp-long v25, v12, v26

    if-ltz v25, :cond_17

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v26, v0

    cmp-long v25, v14, v26

    if-ltz v25, :cond_14

    move-wide v10, v12

    goto/16 :goto_5

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

    :cond_15
    move-wide v10, v12

    goto/16 :goto_5

    :cond_16
    move-wide v10, v14

    goto/16 :goto_5

    :cond_17
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v26, v0

    cmp-long v25, v14, v26

    if-gez v25, :cond_18

    move-wide v10, v14

    goto/16 :goto_5

    :cond_18
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v25

    if-nez v25, :cond_19

    new-instance v25, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v26, "the specified date doesn\'t exist"

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v25

    :cond_19
    move-wide v10, v14

    goto/16 :goto_5

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

    :cond_1b
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->setFieldsNormalized(I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/util/GregorianCalendar;

    if-eqz v1, :cond_0

    invoke-super {p0, p1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    check-cast p1, Ljava/util/GregorianCalendar;

    iget-wide v4, p1, Ljava/util/GregorianCalendar;->gregorianCutover:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getActualMaximum(I)I
    .locals 44

    const v18, 0x1fe81

    const/16 v39, 0x1

    shl-int v39, v39, p1

    const v40, 0x1fe81

    and-int v39, v39, v40

    if-eqz v39, :cond_0

    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->getMaximum(I)I

    move-result v39

    return v39

    :cond_0
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getNormalizedCalendar()Ljava/util/GregorianCalendar;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v12, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v0, v19

    iget-object v6, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v33

    const/16 v36, -0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v39, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object/from16 v0, v39

    move/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v39

    :pswitch_1
    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v39

    if-nez v39, :cond_2

    const/16 v36, 0xb

    :cond_1
    :goto_0
    return v36

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

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v40, v0

    cmp-long v39, v34, v40

    if-ltz v39, :cond_2

    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lsun/util/calendar/BaseCalendar$Date;

    const-wide/16 v40, 0x1

    sub-long v40, v34, v40

    move-wide/from16 v0, v40

    invoke-virtual {v6, v10, v0, v1}, Lsun/util/calendar/BaseCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    invoke-virtual {v10}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v39

    add-int/lit8 v36, v39, -0x1

    goto :goto_0

    :pswitch_2
    invoke-virtual {v6, v12}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v36

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

    invoke-direct/range {v19 .. v19}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v40, v0

    cmp-long v39, v16, v40

    if-gez v39, :cond_1

    invoke-direct/range {v19 .. v19}, Ljava/util/GregorianCalendar;->actualMonthLength()I

    move-result v30

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

    move-object/from16 v0, v19

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v10

    invoke-virtual {v10}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v36

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v39

    if-nez v39, :cond_3

    invoke-virtual {v6, v12}, Lsun/util/calendar/BaseCalendar;->getYearLength(Lsun/util/calendar/CalendarDate;)I

    move-result v36

    goto/16 :goto_0

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

    invoke-direct/range {v19 .. v19}, Ljava/util/GregorianCalendar;->getCutoverCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v7

    const/16 v39, 0x1

    const/16 v40, 0x1

    const/16 v41, 0x0

    move/from16 v0, v33

    move/from16 v1, v39

    move/from16 v2, v40

    move-object/from16 v3, v41

    invoke-virtual {v7, v0, v1, v2, v3}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v20

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

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v40, v0

    cmp-long v39, v34, v40

    if-gez v39, :cond_4

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v34, v0

    :cond_4
    sget-boolean v39, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v39, :cond_8

    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v39

    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v40

    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v41

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

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v39, v0

    move/from16 v0, v33

    move/from16 v1, v39

    if-ne v0, v1, :cond_6

    const/16 v39, 0x1

    const/16 v40, 0x1

    const/16 v41, 0x0

    move/from16 v0, v33

    move/from16 v1, v39

    move/from16 v2, v40

    move-object/from16 v3, v41

    invoke-virtual {v6, v0, v1, v2, v3}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v20

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v20, v0

    goto :goto_1

    :cond_7
    const/16 v39, 0x0

    goto :goto_2

    :cond_8
    sget-boolean v39, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    if-nez v39, :cond_a

    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v39

    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v40

    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v41

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

    :cond_a
    sub-long v40, v34, v20

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v36, v0

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v39

    if-nez v39, :cond_d

    sget-object v39, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v11

    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v39

    const/16 v40, 0x1

    const/16 v41, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v11, v0, v1, v2}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    invoke-virtual {v6, v11}, Lsun/util/calendar/BaseCalendar;->getDayOfWeek(Lsun/util/calendar/CalendarDate;)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v39

    sub-int v13, v13, v39

    if-gez v13, :cond_b

    add-int/lit8 v13, v13, 0x7

    :cond_b
    const/16 v36, 0x34

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v39

    add-int v39, v39, v13

    add-int/lit8 v23, v39, -0x1

    const/16 v39, 0x6

    move/from16 v0, v23

    move/from16 v1, v39

    if-eq v0, v1, :cond_c

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

    :cond_c
    const/16 v36, 0x35

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_e

    invoke-virtual/range {v19 .. v19}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/GregorianCalendar;

    :cond_e
    const/16 v39, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v24

    const/16 v39, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v39

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v39, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v36

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

    add-int/lit8 v39, v24, -0x7

    const/16 v40, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v40

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v39, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v36

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v39

    if-nez v39, :cond_11

    const/16 v39, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v11

    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v39

    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v11, v0, v1, v2}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    invoke-virtual {v6, v11}, Lsun/util/calendar/BaseCalendar;->getDayOfWeek(Lsun/util/calendar/CalendarDate;)I

    move-result v13

    invoke-virtual {v6, v11}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v39

    sub-int v13, v13, v39

    if-gez v13, :cond_f

    add-int/lit8 v13, v13, 0x7

    :cond_f
    rsub-int/lit8 v31, v13, 0x7

    const/16 v36, 0x3

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v39

    move/from16 v0, v31

    move/from16 v1, v39

    if-lt v0, v1, :cond_10

    const/16 v36, 0x4

    :cond_10
    add-int/lit8 v39, v31, 0x15

    sub-int v30, v30, v39

    if-lez v30, :cond_1

    add-int/lit8 v36, v36, 0x1

    const/16 v39, 0x7

    move/from16 v0, v30

    move/from16 v1, v39

    if-le v0, v1, :cond_1

    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_12

    invoke-virtual/range {v19 .. v19}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/GregorianCalendar;

    :cond_12
    const/16 v39, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v38

    const/16 v39, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v22

    :goto_4
    const/16 v39, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v36

    const/16 v39, 0x4

    const/16 v40, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->add(II)V

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

    :pswitch_6
    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    move-result v14

    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v39

    if-nez v39, :cond_14

    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v6, v10}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v32

    const/16 v39, 0x1

    move/from16 v0, v39

    invoke-virtual {v10, v0}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    invoke-virtual {v6, v10}, Lsun/util/calendar/BaseCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    invoke-virtual {v10}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    move-result v15

    :goto_5
    sub-int v37, v14, v15

    if-gez v37, :cond_13

    add-int/lit8 v37, v37, 0x7

    :cond_13
    sub-int v32, v32, v37

    add-int/lit8 v39, v32, 0x6

    div-int/lit8 v36, v39, 0x7

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_15

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/GregorianCalendar;

    :cond_15
    invoke-direct/range {v19 .. v19}, Ljava/util/GregorianCalendar;->actualMonthLength()I

    move-result v32

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

    const/16 v39, 0x7

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v15

    goto :goto_5

    :pswitch_7
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_16

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/GregorianCalendar;

    :cond_16
    invoke-direct/range {v19 .. v19}, Ljava/util/GregorianCalendar;->getYearOffsetInMillis()J

    move-result-wide v8

    invoke-direct/range {v19 .. v19}, Ljava/util/GregorianCalendar;->internalGetEra()I

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_17

    const-wide v40, 0x7fffffffffffffffL

    move-object/from16 v0, v19

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    const/16 v39, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v36

    invoke-direct/range {v19 .. v19}, Ljava/util/GregorianCalendar;->getYearOffsetInMillis()J

    move-result-wide v26

    cmp-long v39, v8, v26

    if-lez v39, :cond_1

    add-int/lit8 v36, v36, -0x1

    goto/16 :goto_0

    :cond_17
    invoke-virtual/range {v19 .. v19}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v40

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move-wide/from16 v42, v0

    cmp-long v39, v40, v42

    if-ltz v39, :cond_18

    sget-object v25, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    :goto_6
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v39

    const-wide/high16 v40, -0x8000000000000000L

    move-object/from16 v0, v25

    move-wide/from16 v1, v40

    move-object/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/CalendarSystem;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v11

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

    const-wide/16 v40, 0x3c

    mul-long v26, v26, v40

    invoke-virtual {v11}, Lsun/util/calendar/CalendarDate;->getMinutes()I

    move-result v39

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v40, v0

    add-long v26, v26, v40

    const-wide/16 v40, 0x3c

    mul-long v26, v26, v40

    invoke-virtual {v11}, Lsun/util/calendar/CalendarDate;->getSeconds()I

    move-result v39

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v40, v0

    add-long v26, v26, v40

    const-wide/16 v40, 0x3e8

    mul-long v26, v26, v40

    invoke-virtual {v11}, Lsun/util/calendar/CalendarDate;->getMillis()I

    move-result v39

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v40, v0

    add-long v26, v26, v40

    invoke-virtual {v11}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v36

    if-gtz v36, :cond_1b

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

    :cond_18
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v25

    goto :goto_6

    :cond_19
    const/16 v39, 0x0

    goto :goto_7

    :cond_1a
    rsub-int/lit8 v36, v36, 0x1

    :cond_1b
    cmp-long v39, v8, v26

    if-gez v39, :cond_1

    add-int/lit8 v36, v36, -0x1

    goto/16 :goto_0

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

    const/4 v5, 0x5

    if-ne p1, v5, :cond_1

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getNormalizedCalendar()Ljava/util/GregorianCalendar;

    move-result-object v1

    iget-object v5, v1, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v4

    iget v5, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-eq v4, v5, :cond_0

    iget v5, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ne v4, v5, :cond_1

    :cond_0
    iget-object v5, v1, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    iget-object v6, v1, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    iget-object v7, v1, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v6, v7}, Lsun/util/calendar/BaseCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v6

    invoke-direct {p0, v5, v6, v7}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v5

    return v5

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->getMinimum(I)I

    move-result v5

    return v5
.end method

.method public getGreatestMinimum(I)I
    .locals 6

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getGregorianCutoverDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    invoke-direct {p0, v0, v4, v5}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    sget-object v1, Ljava/util/GregorianCalendar;->MIN_VALUES:[I

    aget v1, v1, p1

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    :cond_0
    sget-object v1, Ljava/util/GregorianCalendar;->MIN_VALUES:[I

    aget v1, v1, p1

    return v1
.end method

.method public final getGregorianChange()Ljava/util/Date;
    .locals 4

    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getLeastMaximum(I)I
    .locals 8

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget-object v3, Ljava/util/GregorianCalendar;->LEAST_MAX_VALUES:[I

    aget v3, v3, p1

    return v3

    :pswitch_1
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-virtual {v0, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v1

    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v2

    sget-object v3, Ljava/util/GregorianCalendar;->LEAST_MAX_VALUES:[I

    aget v3, v3, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    return v3

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

    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    sget-object v3, Ljava/util/GregorianCalendar;->MAX_VALUES:[I

    aget v3, v3, p1

    return v3

    :pswitch_1
    iget v3, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    const/16 v4, 0xc8

    if-gt v3, v4, :cond_0

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-virtual {v0, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v1

    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v2

    sget-object v3, Ljava/util/GregorianCalendar;->MAX_VALUES:[I

    aget v3, v3, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3

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

    sget-object v0, Ljava/util/GregorianCalendar;->MIN_VALUES:[I

    aget v0, v0, p1

    return v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 3

    invoke-super {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    iget-object v1, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1, v0}, Lsun/util/calendar/BaseCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    iget-object v2, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1, v0}, Lsun/util/calendar/BaseCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    :cond_0
    return-object v0
.end method

.method public getWeekYear()I
    .locals 15

    const/4 v14, 0x7

    const/4 v13, 0x1

    const/4 v12, 0x6

    invoke-virtual {p0, v13}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->internalGetEra()I

    move-result v10

    if-nez v10, :cond_0

    rsub-int/lit8 v9, v9, 0x1

    :cond_0
    iget v10, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    add-int/lit8 v10, v10, 0x1

    if-le v9, v10, :cond_3

    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v8

    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v10

    if-nez v10, :cond_2

    const/16 v10, 0x34

    if-lt v8, v10, :cond_1

    add-int/lit8 v9, v9, -0x1

    :cond_1
    :goto_0
    return v9

    :cond_2
    if-ne v8, v13, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v12}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v1

    invoke-virtual {p0, v12}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v5

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v7

    if-le v1, v7, :cond_4

    add-int/lit8 v10, v5, -0x6

    if-ge v1, v10, :cond_4

    return v9

    :cond_4
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    invoke-virtual {v0, v13}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    const-string/jumbo v10, "GMT"

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0, v12, v13}, Ljava/util/GregorianCalendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->complete()V

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v10

    invoke-virtual {v0, v14}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v11

    sub-int v4, v10, v11

    if-eqz v4, :cond_6

    if-gez v4, :cond_5

    add-int/lit8 v4, v4, 0x7

    :cond_5
    invoke-virtual {v0, v12, v4}, Ljava/util/GregorianCalendar;->add(II)V

    :cond_6
    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    if-ge v1, v6, :cond_8

    if-gt v6, v7, :cond_7

    add-int/lit8 v9, v9, -0x1

    :cond_7
    :goto_1
    return v9

    :cond_8
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v0, v13, v10}, Ljava/util/GregorianCalendar;->set(II)V

    invoke-virtual {v0, v12, v13}, Ljava/util/GregorianCalendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->complete()V

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v10

    invoke-virtual {v0, v14}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v11

    sub-int v3, v10, v11

    if-eqz v3, :cond_a

    if-gez v3, :cond_9

    add-int/lit8 v3, v3, 0x7

    :cond_9
    invoke-virtual {v0, v12, v3}, Ljava/util/GregorianCalendar;->add(II)V

    :cond_a
    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v10

    add-int/lit8 v6, v10, -0x1

    if-nez v6, :cond_b

    const/4 v6, 0x7

    :cond_b
    if-lt v6, v7, :cond_7

    sub-int v10, v5, v1

    add-int/lit8 v2, v10, 0x1

    rsub-int/lit8 v10, v6, 0x7

    if-gt v2, v10, :cond_7

    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method public getWeeksInWeekYear()I
    .locals 5

    const/4 v4, 0x3

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getNormalizedCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getWeekYear()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v2

    return v2

    :cond_0
    if-ne v0, p0, :cond_1

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    :cond_1
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/GregorianCalendar;->setWeekDate(III)V

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v2

    return v2
.end method

.method public hashCode()I
    .locals 4

    invoke-super {p0}, Ljava/util/Calendar;->hashCode()I

    move-result v0

    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    long-to-int v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public isLeapYear(I)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    and-int/lit8 v4, p1, 0x3

    if-eqz v4, :cond_0

    return v3

    :cond_0
    iget v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-le p1, v4, :cond_3

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

    :cond_3
    iget v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ge p1, v4, :cond_4

    return v2

    :cond_4
    iget v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    iget v5, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ne v4, v5, :cond_7

    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    invoke-direct {p0, v4, v5}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_6

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_5

    rem-int/lit8 v4, p1, 0x64

    if-nez v4, :cond_5

    rem-int/lit16 v4, p1, 0x190

    if-nez v4, :cond_9

    :cond_5
    :goto_2
    return v2

    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    :cond_7
    iget v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-ne p1, v4, :cond_8

    const/4 v1, 0x1

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    goto :goto_1

    :cond_9
    move v2, v3

    goto :goto_2
.end method

.method public final isWeekDateSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public roll(II)V
    .locals 48

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    const/16 v43, 0xf

    move/from16 v0, p1

    move/from16 v1, v43

    if-lt v0, v1, :cond_2

    :cond_1
    new-instance v43, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v43 .. v43}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v43

    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->getMinimum(I)I

    move-result v23

    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->getMaximum(I)I

    move-result v22

    packed-switch p1, :pswitch_data_0

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

    return-void

    :pswitch_1
    add-int/lit8 v35, v22, 0x1

    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v16

    add-int v43, v16, p2

    rem-int v31, v43, v35

    if-gez v31, :cond_4

    add-int v31, v31, v35

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

    const/16 v43, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v43

    const/16 v44, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v44

    add-int/lit8 v44, v44, 0x1

    const/16 v45, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v45

    move/from16 v0, v43

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v6, v0, v1, v2}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    const/16 v43, 0xa

    move/from16 v0, p1

    move/from16 v1, v43

    if-ne v0, v1, :cond_7

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

    :cond_6
    const/16 v43, 0xc

    move/from16 v0, v43

    invoke-virtual {v6, v0}, Lsun/util/calendar/CalendarDate;->addHours(I)Lsun/util/calendar/CalendarDate;

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

    :cond_8
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getHours()I

    move-result v17

    rem-int v43, v17, v35

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    const/16 v43, 0xa

    move/from16 v0, p1

    move/from16 v1, v43

    if-ne v0, v1, :cond_9

    const/16 v43, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    :goto_2
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getZoneOffset()I

    move-result v42

    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDaylightSaving()I

    move-result v34

    sub-int v43, v42, v34

    const/16 v44, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    const/16 v43, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    return-void

    :cond_9
    div-int/lit8 v43, v17, 0xc

    const/16 v44, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    rem-int/lit8 v43, v17, 0xc

    const/16 v44, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    goto :goto_2

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

    const/16 v43, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v43

    add-int v43, v43, p2

    rem-int/lit8 v24, v43, 0xc

    if-gez v24, :cond_a

    add-int/lit8 v24, v24, 0xc

    :cond_a
    const/16 v43, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->monthLength(I)I

    move-result v25

    const/16 v43, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v43

    move/from16 v0, v43

    move/from16 v1, v25

    if-le v0, v1, :cond_b

    const/16 v43, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_b
    :goto_3
    return-void

    :cond_c
    const/16 v43, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v43

    add-int/lit8 v41, v43, 0x1

    const/16 v43, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v43

    add-int v43, v43, p2

    rem-int v24, v43, v41

    if-gez v24, :cond_d

    add-int v24, v24, v41

    :cond_d
    const/16 v43, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v43, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v25

    const/16 v43, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v43

    move/from16 v0, v43

    move/from16 v1, v25

    if-le v0, v1, :cond_b

    const/16 v43, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_3

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v40

    const/16 v43, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v22

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

    const/16 v43, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v38

    add-int v36, v38, p2

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v43

    if-nez v43, :cond_10

    move/from16 v0, v36

    move/from16 v1, v23

    if-le v0, v1, :cond_e

    move/from16 v0, v36

    move/from16 v1, v22

    if-ge v0, v1, :cond_e

    const/16 v43, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    return-void

    :cond_e
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v14

    sub-int v43, v38, v23

    mul-int/lit8 v43, v43, 0x7

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v44, v0

    sub-long v8, v14, v44

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v0, v8, v9}, Lsun/util/calendar/BaseCalendar;->getYearFromFixedDate(J)I

    move-result v43

    move/from16 v0, v43

    move/from16 v1, v40

    if-eq v0, v1, :cond_f

    add-int/lit8 v23, v23, 0x1

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

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v0, v14, v15}, Lsun/util/calendar/BaseCalendar;->getYearFromFixedDate(J)I

    move-result v43

    move/from16 v0, v43

    move/from16 v1, v40

    if-eq v0, v1, :cond_3

    add-int/lit8 v22, v22, -0x1

    goto/16 :goto_0

    :cond_10
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v44, v0

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_13

    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCutoverCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v4

    :goto_4
    sub-int v43, v38, v23

    mul-int/lit8 v43, v43, 0x7

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v44, v0

    sub-long v8, v14, v44

    invoke-virtual {v4, v8, v9}, Lsun/util/calendar/BaseCalendar;->getYearFromFixedDate(J)I

    move-result v43

    move/from16 v0, v43

    move/from16 v1, v40

    if-eq v0, v1, :cond_11

    add-int/lit8 v23, v23, 0x1

    :cond_11
    sub-int v43, v22, v38

    mul-int/lit8 v43, v43, 0x7

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v14, v14, v44

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v44, v0

    cmp-long v43, v14, v44

    if-ltz v43, :cond_15

    sget-object v4, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    :goto_5
    invoke-virtual {v4, v14, v15}, Lsun/util/calendar/BaseCalendar;->getYearFromFixedDate(J)I

    move-result v43

    move/from16 v0, v43

    move/from16 v1, v40

    if-eq v0, v1, :cond_12

    add-int/lit8 v22, v22, -0x1

    :cond_12
    move/from16 v0, v38

    move/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    move-result v43

    add-int/lit8 v36, v43, -0x1

    mul-int/lit8 v43, v36, 0x7

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v44, v44, v8

    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v5

    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v43

    add-int/lit8 v43, v43, -0x1

    const/16 v44, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v43

    const/16 v44, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    return-void

    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move/from16 v43, v0

    move/from16 v0, v40

    move/from16 v1, v43

    if-ne v0, v1, :cond_14

    sget-object v4, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    goto/16 :goto_4

    :cond_14
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v4

    goto/16 :goto_4

    :cond_15
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v4

    goto :goto_5

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

    const/16 v43, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v43

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v44

    sub-int v11, v43, v44

    if-gez v11, :cond_16

    add-int/lit8 v11, v11, 0x7

    :cond_16
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v14

    if-eqz v18, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1, v14, v15}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v26

    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->actualMonthLength()I

    move-result v30

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v43, v0

    const-wide/16 v44, 0x6

    add-long v44, v44, v26

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v43

    move-wide/from16 v0, v44

    move/from16 v2, v43

    invoke-static {v0, v1, v2}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v28

    sub-long v44, v28, v26

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v43, v0

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v44

    move/from16 v0, v43

    move/from16 v1, v44

    if-lt v0, v1, :cond_17

    const-wide/16 v44, 0x7

    sub-long v28, v28, v44

    :cond_17
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v22

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

    mul-int/lit8 v43, v36, 0x7

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v44, v44, v28

    int-to-long v0, v11

    move-wide/from16 v46, v0

    add-long v32, v44, v46

    cmp-long v43, v32, v26

    if-gez v43, :cond_1a

    move-wide/from16 v32, v26

    :cond_18
    :goto_7
    if-eqz v18, :cond_1b

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v5

    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v7

    :goto_8
    const/16 v43, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1, v7}, Ljava/util/GregorianCalendar;->set(II)V

    return-void

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

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v30

    goto/16 :goto_6

    :cond_1a
    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v44, v44, v26

    cmp-long v43, v32, v44

    if-ltz v43, :cond_18

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v44, v44, v26

    const-wide/16 v46, 0x1

    sub-long v32, v44, v46

    goto :goto_7

    :cond_1b
    sub-long v44, v32, v26

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v43, v0

    add-int/lit8 v7, v43, 0x1

    goto :goto_8

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

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v22

    goto/16 :goto_0

    :cond_1c
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1, v14, v15}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v26

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

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v44, v44, v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v5

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

    :cond_1e
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v43

    const/16 v44, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    return-void

    :pswitch_6
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v22

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

    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v14

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

    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v43

    add-int/lit8 v43, v43, -0x1

    const/16 v44, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v43

    const/16 v44, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    return-void

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

    const/16 v43, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v37

    const/16 v43, 0x1

    move/from16 v0, v37

    move/from16 v1, v43

    if-le v0, v1, :cond_1f

    const/16 v43, 0x34

    move/from16 v0, v37

    move/from16 v1, v43

    if-ge v0, v1, :cond_1f

    const/16 v43, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v22, 0x7

    goto/16 :goto_0

    :cond_1f
    rem-int/lit8 p2, p2, 0x7

    if-nez p2, :cond_20

    return-void

    :cond_20
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v43, v0

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v43

    move/from16 v0, v43

    invoke-static {v14, v15, v0}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v12

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v14, v14, v44

    cmp-long v43, v14, v12

    if-gez v43, :cond_22

    const-wide/16 v44, 0x7

    add-long v14, v14, v44

    :cond_21
    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v5

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

    return-void

    :cond_22
    const-wide/16 v44, 0x7

    add-long v44, v44, v12

    cmp-long v43, v14, v44

    if-ltz v43, :cond_21

    const-wide/16 v44, 0x7

    sub-long v14, v14, v44

    goto :goto_a

    :cond_23
    const/16 v43, 0x1

    goto :goto_b

    :pswitch_8
    const/16 v23, 0x1

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

    const/16 v43, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v30

    rem-int/lit8 v19, v30, 0x7

    div-int/lit8 v22, v30, 0x7

    add-int/lit8 v43, v10, -0x1

    rem-int/lit8 v39, v43, 0x7

    move/from16 v0, v39

    move/from16 v1, v19

    if-ge v0, v1, :cond_24

    add-int/lit8 v22, v22, 0x1

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

    :cond_25
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1, v14, v15}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v26

    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->actualMonthLength()I

    move-result v30

    rem-int/lit8 v19, v30, 0x7

    div-int/lit8 v22, v30, 0x7

    sub-long v44, v14, v26

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v43, v0

    rem-int/lit8 v39, v43, 0x7

    move/from16 v0, v39

    move/from16 v1, v19

    if-ge v0, v1, :cond_26

    add-int/lit8 v22, v22, 0x1

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

    mul-int/lit8 v43, v36, 0x7

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v44, v44, v26

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v46, v0

    add-long v14, v44, v46

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    move-wide/from16 v44, v0

    cmp-long v43, v14, v44

    if-ltz v43, :cond_27

    sget-object v4, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    :goto_c
    sget-object v43, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v5

    check-cast v5, Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v4, v5, v14, v15}, Lsun/util/calendar/BaseCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v43

    const/16 v44, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    return-void

    :cond_27
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v4

    goto :goto_c

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

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/util/GregorianCalendar;->roll(II)V

    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setGregorianChange(Ljava/util/Date;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(J)V

    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 2

    invoke-super {p0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v0, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    iget-object v0, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    iget-object v1, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    :cond_0
    return-void
.end method

.method public setWeekDate(III)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x7

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-lt p3, v5, :cond_0

    if-le p3, v6, :cond_1

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

    :cond_1
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/GregorianCalendar;

    invoke-virtual {v2, v5}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    invoke-virtual {v2, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->clear()V

    const-string/jumbo v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v2, v4, v1}, Ljava/util/GregorianCalendar;->set(II)V

    invoke-virtual {v2, v5, p1}, Ljava/util/GregorianCalendar;->set(II)V

    invoke-virtual {v2, v7, v5}, Ljava/util/GregorianCalendar;->set(II)V

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v3

    invoke-virtual {v2, v6, v3}, Ljava/util/GregorianCalendar;->set(II)V

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v3

    sub-int v0, p3, v3

    if-gez v0, :cond_2

    add-int/lit8 v0, v0, 0x7

    :cond_2
    add-int/lit8 v3, p2, -0x1

    mul-int/lit8 v3, v3, 0x7

    add-int/2addr v0, v3

    if-eqz v0, :cond_4

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v0}, Ljava/util/GregorianCalendar;->add(II)V

    :goto_0
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getWeekYear()I

    move-result v3

    if-ne v3, p1, :cond_3

    invoke-virtual {v2, v7}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    if-eq v3, p2, :cond_5

    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_4
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->complete()V

    goto :goto_0

    :cond_5
    invoke-virtual {v2, v6}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    if-ne v3, p3, :cond_3

    :cond_6
    invoke-virtual {v2, v4}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    invoke-virtual {p0, v4, v3}, Ljava/util/GregorianCalendar;->set(II)V

    invoke-virtual {v2, v5}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    invoke-virtual {p0, v5, v3}, Ljava/util/GregorianCalendar;->set(II)V

    invoke-virtual {v2, v8}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    invoke-virtual {p0, v8, v3}, Ljava/util/GregorianCalendar;->set(II)V

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {p0, v4, v3}, Ljava/util/GregorianCalendar;->set(II)V

    invoke-virtual {p0, v7, p2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    return-void
.end method
