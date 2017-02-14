.class Landroid/text/format/Time$TimeCalculator;
.super Ljava/lang/Object;
.source "Time.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/format/Time;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeCalculator"
.end annotation


# instance fields
.field public timezone:Ljava/lang/String;

.field public final wallTime:Llibcore/util/ZoneInfo$WallTime;

.field private zoneInfo:Llibcore/util/ZoneInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/format/Time$TimeCalculator;->lookupZoneInfo(Ljava/lang/String;)Llibcore/util/ZoneInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    new-instance v0, Llibcore/util/ZoneInfo$WallTime;

    invoke-direct {v0}, Llibcore/util/ZoneInfo$WallTime;-><init>()V

    iput-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    return-void
.end method

.method public static compare(Landroid/text/format/Time$TimeCalculator;Landroid/text/format/Time$TimeCalculator;)I
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v5, 0x0

    iget-object v8, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    iget-object v9, p1, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v8}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result v8

    iget-object v9, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v9}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result v9

    sub-int v4, v8, v9

    if-eqz v4, :cond_0

    return v4

    :cond_0
    iget-object v8, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v8}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v8

    iget-object v9, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v9}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v9

    sub-int v4, v8, v9

    if-eqz v4, :cond_1

    return v4

    :cond_1
    iget-object v8, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v8}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    move-result v8

    iget-object v9, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v9}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    move-result v9

    sub-int v4, v8, v9

    if-eqz v4, :cond_2

    return v4

    :cond_2
    iget-object v8, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v8}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v8

    iget-object v9, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v9}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v9

    sub-int v4, v8, v9

    if-eqz v4, :cond_3

    return v4

    :cond_3
    iget-object v8, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v8}, Llibcore/util/ZoneInfo$WallTime;->getMinute()I

    move-result v8

    iget-object v9, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v9}, Llibcore/util/ZoneInfo$WallTime;->getMinute()I

    move-result v9

    sub-int v4, v8, v9

    if-eqz v4, :cond_4

    return v4

    :cond_4
    iget-object v8, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v8}, Llibcore/util/ZoneInfo$WallTime;->getSecond()I

    move-result v8

    iget-object v9, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v9}, Llibcore/util/ZoneInfo$WallTime;->getSecond()I

    move-result v9

    sub-int v4, v8, v9

    if-eqz v4, :cond_5

    return v4

    :cond_5
    return v5

    :cond_6
    invoke-virtual {p0, v5}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    move-result-wide v0

    invoke-virtual {p1, v5}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    move-result-wide v2

    sub-long v6, v0, v2

    cmp-long v8, v6, v10

    if-gez v8, :cond_8

    const/4 v5, -0x1

    :cond_7
    :goto_0
    return v5

    :cond_8
    cmp-long v8, v6, v10

    if-lez v8, :cond_7

    const/4 v5, 0x1

    goto :goto_0
.end method

.method private static lookupZoneInfo(Ljava/lang/String;)Llibcore/util/ZoneInfo;
    .locals 5

    :try_start_0
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v2

    invoke-virtual {v2, p0}, Llibcore/util/ZoneInfoDB$TzData;->makeTimeZone(Ljava/lang/String;)Llibcore/util/ZoneInfo;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v2

    const-string/jumbo v3, "GMT"

    invoke-virtual {v2, v3}, Llibcore/util/ZoneInfoDB$TzData;->makeTimeZone(Ljava/lang/String;)Llibcore/util/ZoneInfo;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "GMT not found: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error loading timezone: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    return-object v1
.end method

.method private toChar(I)C
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x30

    int-to-char v0, v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x20

    goto :goto_0
.end method

.method private updateZoneInfoFromTimeZone()V
    .locals 2

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo;->getID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/format/Time$TimeCalculator;->lookupZoneInfo(Ljava/lang/String;)Llibcore/util/ZoneInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    :cond_0
    return-void
.end method


# virtual methods
.method public copyFieldsFromTime(Landroid/text/format/Time;)V
    .locals 4

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget v1, p1, Landroid/text/format/Time;->second:I

    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setSecond(I)V

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget v1, p1, Landroid/text/format/Time;->minute:I

    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setMinute(I)V

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget v1, p1, Landroid/text/format/Time;->hour:I

    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setHour(I)V

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget v1, p1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setMonthDay(I)V

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget v1, p1, Landroid/text/format/Time;->month:I

    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setMonth(I)V

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget v1, p1, Landroid/text/format/Time;->year:I

    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setYear(I)V

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget v1, p1, Landroid/text/format/Time;->weekDay:I

    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setWeekDay(I)V

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget v1, p1, Landroid/text/format/Time;->yearDay:I

    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setYearDay(I)V

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget v1, p1, Landroid/text/format/Time;->isDst:I

    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setIsDst(I)V

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget-wide v2, p1, Landroid/text/format/Time;->gmtoff:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setGmtOffset(I)V

    iget-boolean v0, p1, Landroid/text/format/Time;->allDay:Z

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/text/format/Time;->second:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/text/format/Time;->minute:I

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "allDay is true but sec, min, hour are not 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p1, Landroid/text/format/Time;->hour:I

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v0, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/format/Time$TimeCalculator;->updateZoneInfoFromTimeZone()V

    return-void
.end method

.method public copyFieldsToTime(Landroid/text/format/Time;)V
    .locals 2

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getSecond()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->second:I

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getMinute()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->minute:I

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->hour:I

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->monthDay:I

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->month:I

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->year:I

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->weekDay:I

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->yearDay:I

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getIsDst()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->isDst:I

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getGmtOffset()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Landroid/text/format/Time;->gmtoff:J

    return-void
.end method

.method public format(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string/jumbo p1, "%c"

    :cond_0
    new-instance v0, Landroid/text/format/TimeFormatter;

    invoke-direct {v0}, Landroid/text/format/TimeFormatter;-><init>()V

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    invoke-virtual {v0, p1, v1, v2}, Landroid/text/format/TimeFormatter;->format(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public format2445(Z)Ljava/lang/String;
    .locals 8

    const/16 v3, 0x10

    const/16 v7, 0xf

    const/16 v4, 0x8

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    move v2, v3

    :goto_0
    new-array v0, v2, [C

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result v1

    div-int/lit16 v2, v1, 0x3e8

    invoke-direct {p0, v2}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v2

    aput-char v2, v0, v6

    rem-int/lit16 v1, v1, 0x3e8

    div-int/lit8 v2, v1, 0x64

    invoke-direct {p0, v2}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v2

    const/4 v5, 0x1

    aput-char v2, v0, v5

    rem-int/lit8 v1, v1, 0x64

    div-int/lit8 v2, v1, 0xa

    invoke-direct {p0, v2}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v2

    const/4 v5, 0x2

    aput-char v2, v0, v5

    rem-int/lit8 v1, v1, 0xa

    invoke-direct {p0, v1}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v2

    const/4 v5, 0x3

    aput-char v2, v0, v5

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    div-int/lit8 v2, v1, 0xa

    invoke-direct {p0, v2}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v2

    const/4 v5, 0x4

    aput-char v2, v0, v5

    rem-int/lit8 v2, v1, 0xa

    invoke-direct {p0, v2}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v2

    const/4 v5, 0x5

    aput-char v2, v0, v5

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    move-result v1

    div-int/lit8 v2, v1, 0xa

    invoke-direct {p0, v2}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v2

    const/4 v5, 0x6

    aput-char v2, v0, v5

    rem-int/lit8 v2, v1, 0xa

    invoke-direct {p0, v2}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v2

    const/4 v5, 0x7

    aput-char v2, v0, v5

    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v6, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    const/16 v2, 0x54

    aput-char v2, v0, v4

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v1

    div-int/lit8 v2, v1, 0xa

    invoke-direct {p0, v2}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v2

    const/16 v4, 0x9

    aput-char v2, v0, v4

    rem-int/lit8 v2, v1, 0xa

    invoke-direct {p0, v2}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v2

    const/16 v4, 0xa

    aput-char v2, v0, v4

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getMinute()I

    move-result v1

    div-int/lit8 v2, v1, 0xa

    invoke-direct {p0, v2}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v2

    const/16 v4, 0xb

    aput-char v2, v0, v4

    rem-int/lit8 v2, v1, 0xa

    invoke-direct {p0, v2}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v2

    const/16 v4, 0xc

    aput-char v2, v0, v4

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getSecond()I

    move-result v1

    div-int/lit8 v2, v1, 0xa

    invoke-direct {p0, v2}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v2

    const/16 v4, 0xd

    aput-char v2, v0, v4

    rem-int/lit8 v2, v1, 0xa

    invoke-direct {p0, v2}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v2

    const/16 v4, 0xe

    aput-char v2, v0, v4

    const-string/jumbo v2, "UTC"

    iget-object v4, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x5a

    aput-char v2, v0, v7

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v6, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v6, v7}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method public setTimeInMillis(J)V
    .locals 5

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    invoke-direct {p0}, Landroid/text/format/Time$TimeCalculator;->updateZoneInfoFromTimeZone()V

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    invoke-virtual {v1, v0, v2}, Llibcore/util/ZoneInfo$WallTime;->localtime(ILlibcore/util/ZoneInfo;)V

    return-void
.end method

.method public switchTimeZone(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    invoke-virtual {v1, v2}, Llibcore/util/ZoneInfo$WallTime;->mktime(Llibcore/util/ZoneInfo;)I

    move-result v0

    iput-object p1, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/format/Time$TimeCalculator;->updateZoneInfoFromTimeZone()V

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    invoke-virtual {v1, v0, v2}, Llibcore/util/ZoneInfo$WallTime;->localtime(ILlibcore/util/ZoneInfo;)V

    return-void
.end method

.method public toMillis(Z)J
    .locals 6

    const/4 v3, -0x1

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v1, v3}, Llibcore/util/ZoneInfo$WallTime;->setIsDst(I)V

    :cond_0
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    invoke-virtual {v1, v2}, Llibcore/util/ZoneInfo$WallTime;->mktime(Llibcore/util/ZoneInfo;)I

    move-result v0

    if-ne v0, v3, :cond_1

    const-wide/16 v2, -0x1

    return-wide v2

    :cond_1
    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    return-wide v2
.end method

.method public toStringInternal()Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    const-string/jumbo v0, "%04d%02d%02dT%02d%02d%02d%s(%d,%d,%d,%d,%d)"

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getMinute()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getSecond()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getGmtOffset()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getIsDst()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    invoke-virtual {p0, v4}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
