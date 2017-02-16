.class public Ljava/util/Date;
.super Ljava/lang/Object;
.source "Date.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field private static defaultCenturyStart:I = 0x0

.field private static final gcal:Lsun/util/calendar/BaseCalendar;

.field private static jcal:Lsun/util/calendar/BaseCalendar; = null

.field private static final serialVersionUID:J = 0x686a81014b597419L

.field private static final ttb:[I

.field private static final wtb:[Ljava/lang/String;


# instance fields
.field private transient cdate:Lsun/util/calendar/BaseCalendar$Date;

.field private transient fastTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 133
    invoke-static {}, Lsun/util/calendar/CalendarSystem;->getGregorianCalendar()Lsun/util/calendar/Gregorian;

    move-result-object v0

    .line 132
    sput-object v0, Ljava/util/Date;->gcal:Lsun/util/calendar/BaseCalendar;

    .line 635
    new-array v0, v3, [Ljava/lang/String;

    .line 636
    const-string/jumbo v1, "am"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "pm"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 637
    const-string/jumbo v1, "monday"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "tuesday"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "wednesday"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "thursday"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "friday"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 638
    const-string/jumbo v1, "saturday"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "sunday"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 639
    const-string/jumbo v1, "january"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "february"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "march"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "april"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "may"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "june"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 640
    const-string/jumbo v1, "july"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "august"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "september"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "october"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "november"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "december"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 641
    const-string/jumbo v1, "gmt"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "ut"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "utc"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "est"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "edt"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "cst"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "cdt"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 642
    const-string/jumbo v1, "mst"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "mdt"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "pst"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "pdt"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 635
    sput-object v0, Ljava/util/Date;->wtb:[Ljava/lang/String;

    .line 644
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljava/util/Date;->ttb:[I

    .line 129
    return-void

    .line 644
    :array_0
    .array-data 4
        0xe
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0x2710
        0x2710
        0x2710
        0x283c
        0x2800
        0x2878
        0x283c
        0x28b4
        0x2878
        0x28f0
        0x28b4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 162
    return-void
.end method

.method public constructor <init>(III)V
    .locals 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    .line 195
    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    .line 194
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hrs"    # I
    .param p5, "min"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 218
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    .line 217
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 5
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hrs"    # I
    .param p5, "min"    # I
    .param p6, "sec"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xc

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    add-int/lit16 v1, p1, 0x76c

    .line 244
    .local v1, "y":I
    if-lt p2, v3, :cond_1

    .line 245
    div-int/lit8 v2, p2, 0xc

    add-int/2addr v1, v2

    .line 246
    rem-int/lit8 p2, p2, 0xc

    .line 251
    :cond_0
    :goto_0
    invoke-static {v1}, Ljava/util/Date;->getCalendarSystem(I)Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    .line 252
    .local v0, "cal":Lsun/util/calendar/BaseCalendar;
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v2

    check-cast v2, Lsun/util/calendar/BaseCalendar$Date;

    iput-object v2, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 253
    iget-object v2, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v1, v3, p3}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedDate(III)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v2

    invoke-virtual {v2, p4, p5, p6, v4}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    .line 254
    invoke-direct {p0}, Ljava/util/Date;->getTimeImpl()J

    .line 255
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 241
    return-void

    .line 247
    .end local v0    # "cal":Lsun/util/calendar/BaseCalendar;
    :cond_1
    if-gez p2, :cond_0

    .line 248
    invoke-static {p2, v3}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 249
    invoke-static {p2, v3}, Lsun/util/calendar/CalendarUtils;->mod(II)I

    move-result p2

    goto :goto_0
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "date"    # J

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-wide p1, p0, Ljava/util/Date;->fastTime:J

    .line 175
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 272
    invoke-static {p1}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 271
    return-void
.end method

.method public static UTC(IIIIII)J
    .locals 8
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "date"    # I
    .param p3, "hrs"    # I
    .param p4, "min"    # I
    .param p5, "sec"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xc

    .line 317
    add-int/lit16 v4, p0, 0x76c

    .line 319
    .local v4, "y":I
    if-lt p1, v6, :cond_1

    .line 320
    div-int/lit8 v5, p1, 0xc

    add-int/2addr v4, v5

    .line 321
    rem-int/lit8 p1, p1, 0xc

    .line 326
    :cond_0
    :goto_0
    add-int/lit8 v2, p1, 0x1

    .line 327
    .local v2, "m":I
    invoke-static {v4}, Ljava/util/Date;->getCalendarSystem(I)Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    .line 328
    .local v0, "cal":Lsun/util/calendar/BaseCalendar;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v3

    check-cast v3, Lsun/util/calendar/BaseCalendar$Date;

    .line 329
    .local v3, "udate":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v3, v4, v2, p2}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedDate(III)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v5

    invoke-virtual {v5, p3, p4, p5, v7}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    .line 333
    new-instance v1, Ljava/util/Date;

    const-wide/16 v6, 0x0

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 334
    .local v1, "d":Ljava/util/Date;
    invoke-direct {v1, v3}, Ljava/util/Date;->normalize(Lsun/util/calendar/BaseCalendar$Date;)Lsun/util/calendar/BaseCalendar$Date;

    .line 335
    iget-wide v6, v1, Ljava/util/Date;->fastTime:J

    return-wide v6

    .line 322
    .end local v0    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local v1    # "d":Ljava/util/Date;
    .end local v2    # "m":I
    .end local v3    # "udate":Lsun/util/calendar/BaseCalendar$Date;
    :cond_1
    if-gez p1, :cond_0

    .line 323
    invoke-static {p1, v6}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 324
    invoke-static {p1, v6}, Lsun/util/calendar/CalendarUtils;->mod(II)I

    move-result p1

    goto :goto_0
.end method

.method private static final convertToAbbr(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1074
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1075
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1076
    return-object p0
.end method

.method private final getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;
    .locals 4

    .prologue
    .line 1196
    iget-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-nez v1, :cond_0

    .line 1197
    iget-wide v2, p0, Ljava/util/Date;->fastTime:J

    invoke-static {v2, v3}, Ljava/util/Date;->getCalendarSystem(J)Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    .line 1198
    .local v0, "cal":Lsun/util/calendar/BaseCalendar;
    iget-wide v2, p0, Ljava/util/Date;->fastTime:J

    .line 1199
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v1

    .line 1198
    invoke-virtual {v0, v2, v3, v1}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/BaseCalendar$Date;

    iput-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 1201
    .end local v0    # "cal":Lsun/util/calendar/BaseCalendar;
    :cond_0
    iget-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    return-object v1
.end method

.method private static final getCalendarSystem(I)Lsun/util/calendar/BaseCalendar;
    .locals 1
    .param p0, "year"    # I

    .prologue
    .line 1289
    const/16 v0, 0x62e

    if-lt p0, v0, :cond_0

    .line 1290
    sget-object v0, Ljava/util/Date;->gcal:Lsun/util/calendar/BaseCalendar;

    return-object v0

    .line 1292
    :cond_0
    invoke-static {}, Ljava/util/Date;->getJulianCalendar()Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    return-object v0
.end method

.method private static final getCalendarSystem(J)Lsun/util/calendar/BaseCalendar;
    .locals 4
    .param p0, "utc"    # J

    .prologue
    .line 1299
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 1301
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    .line 1300
    const-wide v2, -0xb1d069b5400L

    sub-long v0, v2, v0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    .line 1302
    :cond_0
    sget-object v0, Ljava/util/Date;->gcal:Lsun/util/calendar/BaseCalendar;

    return-object v0

    .line 1304
    :cond_1
    invoke-static {}, Ljava/util/Date;->getJulianCalendar()Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    return-object v0
.end method

.method private static final getCalendarSystem(Lsun/util/calendar/BaseCalendar$Date;)Lsun/util/calendar/BaseCalendar;
    .locals 1
    .param p0, "cdate"    # Lsun/util/calendar/BaseCalendar$Date;

    .prologue
    .line 1308
    sget-object v0, Ljava/util/Date;->jcal:Lsun/util/calendar/BaseCalendar;

    if-nez v0, :cond_0

    .line 1309
    sget-object v0, Ljava/util/Date;->gcal:Lsun/util/calendar/BaseCalendar;

    return-object v0

    .line 1311
    :cond_0
    invoke-virtual {p0}, Lsun/util/calendar/BaseCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1312
    sget-object v0, Ljava/util/Date;->jcal:Lsun/util/calendar/BaseCalendar;

    return-object v0

    .line 1314
    :cond_1
    sget-object v0, Ljava/util/Date;->gcal:Lsun/util/calendar/BaseCalendar;

    return-object v0
.end method

.method private static final declared-synchronized getJulianCalendar()Lsun/util/calendar/BaseCalendar;
    .locals 2

    .prologue
    const-class v1, Ljava/util/Date;

    monitor-enter v1

    .line 1318
    :try_start_0
    sget-object v0, Ljava/util/Date;->jcal:Lsun/util/calendar/BaseCalendar;

    if-nez v0, :cond_0

    .line 1319
    const-string/jumbo v0, "julian"

    invoke-static {v0}, Lsun/util/calendar/CalendarSystem;->forName(Ljava/lang/String;)Lsun/util/calendar/CalendarSystem;

    move-result-object v0

    check-cast v0, Lsun/util/calendar/BaseCalendar;

    sput-object v0, Ljava/util/Date;->jcal:Lsun/util/calendar/BaseCalendar;

    .line 1321
    :cond_0
    sget-object v0, Ljava/util/Date;->jcal:Lsun/util/calendar/BaseCalendar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static final getMillisOf(Ljava/util/Date;)J
    .locals 4
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 974
    iget-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->isNormalized()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 975
    :cond_0
    iget-wide v2, p0, Ljava/util/Date;->fastTime:J

    return-wide v2

    .line 977
    :cond_1
    iget-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    .line 978
    .local v0, "d":Lsun/util/calendar/BaseCalendar$Date;
    sget-object v1, Ljava/util/Date;->gcal:Lsun/util/calendar/BaseCalendar;

    invoke-virtual {v1, v0}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v2

    return-wide v2
.end method

.method private final getTimeImpl()J
    .locals 2

    .prologue
    .line 905
    iget-object v0, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->isNormalized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 908
    :cond_0
    :goto_0
    iget-wide v0, p0, Ljava/util/Date;->fastTime:J

    return-wide v0

    .line 906
    :cond_1
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    goto :goto_0
.end method

.method private final normalize()Lsun/util/calendar/BaseCalendar$Date;
    .locals 6

    .prologue
    .line 1205
    iget-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-nez v3, :cond_0

    .line 1206
    iget-wide v4, p0, Ljava/util/Date;->fastTime:J

    invoke-static {v4, v5}, Ljava/util/Date;->getCalendarSystem(J)Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    .line 1207
    .local v0, "cal":Lsun/util/calendar/BaseCalendar;
    iget-wide v4, p0, Ljava/util/Date;->fastTime:J

    .line 1208
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v3

    .line 1207
    invoke-virtual {v0, v4, v5, v3}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v3

    check-cast v3, Lsun/util/calendar/BaseCalendar$Date;

    iput-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 1209
    iget-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    return-object v3

    .line 1214
    .end local v0    # "cal":Lsun/util/calendar/BaseCalendar;
    :cond_0
    iget-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->isNormalized()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1215
    iget-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-direct {p0, v3}, Ljava/util/Date;->normalize(Lsun/util/calendar/BaseCalendar$Date;)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 1220
    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v2

    .line 1221
    .local v2, "tz":Ljava/util/TimeZone;
    iget-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getZone()Ljava/util/TimeZone;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 1222
    iget-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v3, v2}, Lsun/util/calendar/BaseCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    .line 1223
    iget-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-static {v3}, Ljava/util/Date;->getCalendarSystem(Lsun/util/calendar/BaseCalendar$Date;)Lsun/util/calendar/BaseCalendar;

    move-result-object v1

    .line 1224
    .local v1, "cal":Lsun/util/calendar/CalendarSystem;
    iget-wide v4, p0, Ljava/util/Date;->fastTime:J

    iget-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1, v4, v5, v3}, Lsun/util/calendar/CalendarSystem;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    .line 1226
    .end local v1    # "cal":Lsun/util/calendar/CalendarSystem;
    :cond_2
    iget-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    return-object v3
.end method

.method private final normalize(Lsun/util/calendar/BaseCalendar$Date;)Lsun/util/calendar/BaseCalendar$Date;
    .locals 14
    .param p1, "date"    # Lsun/util/calendar/BaseCalendar$Date;

    .prologue
    .line 1231
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v1

    .line 1232
    .local v1, "y":I
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v8

    .line 1233
    .local v8, "m":I
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v3

    .line 1234
    .local v3, "d":I
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getHours()I

    move-result v4

    .line 1235
    .local v4, "hh":I
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getMinutes()I

    move-result v5

    .line 1236
    .local v5, "mm":I
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getSeconds()I

    move-result v6

    .line 1237
    .local v6, "ss":I
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getMillis()I

    move-result v9

    .line 1238
    .local v9, "ms":I
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getZone()Ljava/util/TimeZone;

    move-result-object v11

    .line 1248
    .local v11, "tz":Ljava/util/TimeZone;
    const/16 v2, 0x62e

    if-eq v1, v2, :cond_0

    const v2, 0x10b07600

    if-le v1, v2, :cond_2

    .line 1249
    :cond_0
    if-nez v11, :cond_1

    .line 1250
    const-string/jumbo v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v11

    .line 1252
    :cond_1
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v11}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1253
    .local v0, "gc":Ljava/util/GregorianCalendar;
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->clear()V

    .line 1254
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v9}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1255
    add-int/lit8 v2, v8, -0x1

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 1256
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v12

    iput-wide v12, p0, Ljava/util/Date;->fastTime:J

    .line 1257
    iget-wide v12, p0, Ljava/util/Date;->fastTime:J

    invoke-static {v12, v13}, Ljava/util/Date;->getCalendarSystem(J)Lsun/util/calendar/BaseCalendar;

    move-result-object v7

    .line 1258
    .local v7, "cal":Lsun/util/calendar/BaseCalendar;
    iget-wide v12, p0, Ljava/util/Date;->fastTime:J

    invoke-virtual {v7, v12, v13, v11}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object p1

    .end local p1    # "date":Lsun/util/calendar/BaseCalendar$Date;
    check-cast p1, Lsun/util/calendar/BaseCalendar$Date;

    .line 1259
    .restart local p1    # "date":Lsun/util/calendar/BaseCalendar$Date;
    return-object p1

    .line 1248
    .end local v0    # "gc":Ljava/util/GregorianCalendar;
    .end local v7    # "cal":Lsun/util/calendar/BaseCalendar;
    :cond_2
    const v2, -0x10b07600

    if-lt v1, v2, :cond_0

    .line 1262
    invoke-static {v1}, Ljava/util/Date;->getCalendarSystem(I)Lsun/util/calendar/BaseCalendar;

    move-result-object v7

    .line 1263
    .restart local v7    # "cal":Lsun/util/calendar/BaseCalendar;
    invoke-static {p1}, Ljava/util/Date;->getCalendarSystem(Lsun/util/calendar/BaseCalendar$Date;)Lsun/util/calendar/BaseCalendar;

    move-result-object v2

    if-eq v7, v2, :cond_3

    .line 1264
    invoke-virtual {v7, v11}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object p1

    .end local p1    # "date":Lsun/util/calendar/BaseCalendar$Date;
    check-cast p1, Lsun/util/calendar/BaseCalendar$Date;

    .line 1265
    .restart local p1    # "date":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {p1, v1, v8, v3}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedDate(III)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v2

    invoke-virtual {v2, v4, v5, v6, v9}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    .line 1268
    :cond_3
    invoke-virtual {v7, p1}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v12

    iput-wide v12, p0, Ljava/util/Date;->fastTime:J

    .line 1272
    iget-wide v12, p0, Ljava/util/Date;->fastTime:J

    invoke-static {v12, v13}, Ljava/util/Date;->getCalendarSystem(J)Lsun/util/calendar/BaseCalendar;

    move-result-object v10

    .line 1273
    .local v10, "ncal":Lsun/util/calendar/BaseCalendar;
    if-eq v10, v7, :cond_4

    .line 1274
    invoke-virtual {v10, v11}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object p1

    .end local p1    # "date":Lsun/util/calendar/BaseCalendar$Date;
    check-cast p1, Lsun/util/calendar/BaseCalendar$Date;

    .line 1275
    .restart local p1    # "date":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {p1, v1, v8, v3}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedDate(III)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v2

    invoke-virtual {v2, v4, v5, v6, v9}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    .line 1276
    invoke-virtual {v10, p1}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v12

    iput-wide v12, p0, Ljava/util/Date;->fastTime:J

    .line 1278
    :cond_4
    return-object p1
.end method

.method public static parse(Ljava/lang/String;)J
    .locals 31
    .param p0, "s"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 453
    const/high16 v30, -0x80000000

    .line 454
    .local v30, "year":I
    const/16 v23, -0x1

    .line 455
    .local v23, "mon":I
    const/16 v19, -0x1

    .line 456
    .local v19, "mday":I
    const/4 v14, -0x1

    .line 457
    .local v14, "hour":I
    const/16 v21, -0x1

    .line 458
    .local v21, "min":I
    const/16 v26, -0x1

    .line 459
    .local v26, "sec":I
    const/16 v20, -0x1

    .line 460
    .local v20, "millis":I
    const/4 v11, -0x1

    .line 461
    .local v11, "c":I
    const/4 v15, 0x0

    .line 462
    .local v15, "i":I
    const/16 v24, -0x1

    .line 463
    .local v24, "n":I
    const/16 v29, -0x1

    .line 464
    .local v29, "wst":I
    const/16 v27, -0x1

    .line 465
    .local v27, "tzoffset":I
    const/16 v25, 0x0

    .line 468
    .local v25, "prevc":I
    if-nez p0, :cond_1

    .line 633
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 470
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    .line 471
    .local v18, "limit":I
    :cond_2
    :goto_0
    move/from16 v0, v18

    if-ge v15, v0, :cond_23

    .line 472
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 473
    add-int/lit8 v15, v15, 0x1

    .line 474
    const/16 v4, 0x20

    if-le v11, v4, :cond_2

    const/16 v4, 0x2c

    if-eq v11, v4, :cond_2

    .line 476
    const/16 v4, 0x28

    if-ne v11, v4, :cond_5

    .line 477
    const/4 v13, 0x1

    .line 478
    .local v13, "depth":I
    :cond_3
    :goto_1
    move/from16 v0, v18

    if-ge v15, v0, :cond_2

    .line 479
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 480
    add-int/lit8 v15, v15, 0x1

    .line 481
    const/16 v4, 0x28

    if-ne v11, v4, :cond_4

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 482
    :cond_4
    const/16 v4, 0x29

    if-ne v11, v4, :cond_3

    .line 483
    add-int/lit8 v13, v13, -0x1

    if-gtz v13, :cond_3

    goto :goto_0

    .line 488
    .end local v13    # "depth":I
    :cond_5
    const/16 v4, 0x30

    if-gt v4, v11, :cond_18

    const/16 v4, 0x39

    if-gt v11, v4, :cond_18

    .line 489
    add-int/lit8 v24, v11, -0x30

    .line 490
    :goto_2
    move/from16 v0, v18

    if-ge v15, v0, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v4, 0x30

    if-gt v4, v11, :cond_6

    const/16 v4, 0x39

    if-gt v11, v4, :cond_6

    .line 491
    mul-int/lit8 v4, v24, 0xa

    add-int/lit8 v5, v11, -0x30

    add-int v24, v4, v5

    .line 492
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 494
    :cond_6
    const/16 v4, 0x2b

    move/from16 v0, v25

    if-eq v0, v4, :cond_7

    const/16 v4, 0x2d

    move/from16 v0, v25

    if-ne v0, v4, :cond_c

    const/high16 v4, -0x80000000

    move/from16 v0, v30

    if-eq v0, v4, :cond_c

    .line 495
    :cond_7
    if-eqz v27, :cond_8

    const/4 v4, -0x1

    move/from16 v0, v27

    if-ne v0, v4, :cond_0

    .line 499
    :cond_8
    const/16 v4, 0x18

    move/from16 v0, v24

    if-ge v0, v4, :cond_b

    .line 500
    mul-int/lit8 v24, v24, 0x3c

    .line 505
    const/16 v22, 0x0

    .line 506
    .local v22, "minutesPart":I
    move/from16 v0, v18

    if-ge v15, v0, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_9

    .line 507
    add-int/lit8 v15, v15, 0x1

    .line 508
    :goto_3
    move/from16 v0, v18

    if-ge v15, v0, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v4, 0x30

    if-gt v4, v11, :cond_9

    const/16 v4, 0x39

    if-gt v11, v4, :cond_9

    .line 509
    mul-int/lit8 v4, v22, 0xa

    add-int/lit8 v5, v11, -0x30

    add-int v22, v4, v5

    .line 510
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 514
    :cond_9
    add-int v24, v24, v22

    .line 519
    .end local v22    # "minutesPart":I
    :goto_4
    const/16 v4, 0x2b

    move/from16 v0, v25

    if-ne v0, v4, :cond_a

    .line 520
    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    .line 522
    :cond_a
    move/from16 v27, v24

    .line 558
    :goto_5
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 516
    :cond_b
    rem-int/lit8 v4, v24, 0x64

    div-int/lit8 v5, v24, 0x64

    mul-int/lit8 v5, v5, 0x3c

    add-int v24, v4, v5

    goto :goto_4

    .line 523
    :cond_c
    const/16 v4, 0x46

    move/from16 v0, v24

    if-lt v0, v4, :cond_f

    .line 524
    const/high16 v4, -0x80000000

    move/from16 v0, v30

    if-ne v0, v4, :cond_0

    .line 526
    const/16 v4, 0x20

    if-le v11, v4, :cond_d

    const/16 v4, 0x2c

    if-ne v11, v4, :cond_e

    .line 528
    :cond_d
    :goto_6
    move/from16 v30, v24

    goto :goto_5

    .line 526
    :cond_e
    const/16 v4, 0x2f

    if-eq v11, v4, :cond_d

    move/from16 v0, v18

    if-lt v15, v0, :cond_0

    goto :goto_6

    .line 531
    :cond_f
    const/16 v4, 0x3a

    if-ne v11, v4, :cond_11

    .line 532
    if-gez v14, :cond_10

    .line 533
    move/from16 v0, v24

    int-to-byte v14, v0

    goto :goto_5

    .line 534
    :cond_10
    if-gez v21, :cond_0

    .line 535
    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v21, v0

    goto :goto_5

    .line 538
    :cond_11
    const/16 v4, 0x2f

    if-ne v11, v4, :cond_13

    .line 539
    if-gez v23, :cond_12

    .line 540
    add-int/lit8 v4, v24, -0x1

    int-to-byte v0, v4

    move/from16 v23, v0

    goto :goto_5

    .line 541
    :cond_12
    if-gez v19, :cond_0

    .line 542
    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v19, v0

    goto :goto_5

    .line 545
    :cond_13
    move/from16 v0, v18

    if-ge v15, v0, :cond_14

    const/16 v4, 0x2c

    if-eq v11, v4, :cond_14

    const/16 v4, 0x20

    if-le v11, v4, :cond_14

    const/16 v4, 0x2d

    if-ne v11, v4, :cond_0

    .line 547
    :cond_14
    if-ltz v14, :cond_15

    if-gez v21, :cond_15

    .line 548
    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v21, v0

    goto :goto_5

    .line 549
    :cond_15
    if-ltz v21, :cond_16

    if-gez v26, :cond_16

    .line 550
    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v26, v0

    goto :goto_5

    .line 551
    :cond_16
    if-gez v19, :cond_17

    .line 552
    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v19, v0

    goto :goto_5

    .line 554
    :cond_17
    const/high16 v4, -0x80000000

    move/from16 v0, v30

    if-ne v0, v4, :cond_0

    if-ltz v23, :cond_0

    if-ltz v19, :cond_0

    .line 555
    move/from16 v30, v24

    goto/16 :goto_5

    .line 559
    :cond_18
    const/16 v4, 0x2f

    if-eq v11, v4, :cond_19

    const/16 v4, 0x3a

    if-ne v11, v4, :cond_1a

    .line 560
    :cond_19
    move/from16 v25, v11

    goto/16 :goto_0

    .line 559
    :cond_1a
    const/16 v4, 0x2b

    if-eq v11, v4, :cond_19

    const/16 v4, 0x2d

    if-eq v11, v4, :cond_19

    .line 562
    add-int/lit8 v8, v15, -0x1

    .line 563
    .local v8, "st":I
    :goto_7
    move/from16 v0, v18

    if-ge v15, v0, :cond_1c

    .line 564
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 565
    const/16 v4, 0x41

    if-gt v4, v11, :cond_1b

    const/16 v4, 0x5a

    if-le v11, v4, :cond_1f

    :cond_1b
    const/16 v4, 0x61

    if-gt v4, v11, :cond_1c

    const/16 v4, 0x7a

    if-le v11, v4, :cond_1f

    .line 569
    :cond_1c
    add-int/lit8 v4, v8, 0x1

    if-le v15, v4, :cond_0

    .line 572
    sget-object v4, Ljava/util/Date;->wtb:[Ljava/lang/String;

    array-length v0, v4

    move/from16 v16, v0

    .local v16, "k":I
    :cond_1d
    add-int/lit8 v16, v16, -0x1

    if-ltz v16, :cond_1e

    .line 573
    sget-object v4, Ljava/util/Date;->wtb:[Ljava/lang/String;

    aget-object v4, v4, v16

    sub-int v9, v15, v8

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 574
    sget-object v4, Ljava/util/Date;->ttb:[I

    aget v10, v4, v16

    .line 575
    .local v10, "action":I
    if-eqz v10, :cond_1e

    .line 576
    const/4 v4, 0x1

    if-ne v10, v4, :cond_20

    .line 577
    const/16 v4, 0xc

    if-gt v14, v4, :cond_0

    const/4 v4, 0x1

    if-lt v14, v4, :cond_0

    .line 579
    const/16 v4, 0xc

    if-ge v14, v4, :cond_1e

    .line 580
    add-int/lit8 v14, v14, 0xc

    .line 597
    .end local v10    # "action":I
    :cond_1e
    :goto_8
    if-ltz v16, :cond_0

    .line 599
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 567
    .end local v16    # "k":I
    :cond_1f
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 581
    .restart local v10    # "action":I
    .restart local v16    # "k":I
    :cond_20
    const/16 v4, 0xe

    if-ne v10, v4, :cond_21

    .line 582
    const/16 v4, 0xc

    if-gt v14, v4, :cond_0

    const/4 v4, 0x1

    if-lt v14, v4, :cond_0

    .line 584
    const/16 v4, 0xc

    if-ne v14, v4, :cond_1e

    .line 585
    const/4 v14, 0x0

    goto :goto_8

    .line 586
    :cond_21
    const/16 v4, 0xd

    if-gt v10, v4, :cond_22

    .line 587
    if-gez v23, :cond_0

    .line 588
    add-int/lit8 v4, v10, -0x2

    int-to-byte v0, v4

    move/from16 v23, v0

    goto :goto_8

    .line 592
    :cond_22
    add-int/lit16 v0, v10, -0x2710

    move/from16 v27, v0

    goto :goto_8

    .line 602
    .end local v8    # "st":I
    .end local v10    # "action":I
    .end local v16    # "k":I
    :cond_23
    const/high16 v4, -0x80000000

    move/from16 v0, v30

    if-eq v0, v4, :cond_0

    if-ltz v23, :cond_0

    if-ltz v19, :cond_0

    .line 605
    const/16 v4, 0x64

    move/from16 v0, v30

    if-ge v0, v4, :cond_25

    .line 606
    const-class v5, Ljava/util/Date;

    monitor-enter v5

    .line 607
    :try_start_0
    sget v4, Ljava/util/Date;->defaultCenturyStart:I

    if-nez v4, :cond_24

    .line 608
    sget-object v4, Ljava/util/Date;->gcal:Lsun/util/calendar/BaseCalendar;

    invoke-virtual {v4}, Lsun/util/calendar/BaseCalendar;->getCalendarDate()Lsun/util/calendar/CalendarDate;

    move-result-object v4

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v4

    add-int/lit8 v4, v4, -0x50

    sput v4, Ljava/util/Date;->defaultCenturyStart:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_24
    monitor-exit v5

    .line 611
    sget v4, Ljava/util/Date;->defaultCenturyStart:I

    div-int/lit8 v4, v4, 0x64

    mul-int/lit8 v4, v4, 0x64

    add-int v30, v30, v4

    .line 612
    sget v4, Ljava/util/Date;->defaultCenturyStart:I

    move/from16 v0, v30

    if-ge v0, v4, :cond_25

    add-int/lit8 v30, v30, 0x64

    .line 614
    :cond_25
    if-gez v26, :cond_26

    .line 615
    const/16 v26, 0x0

    .line 616
    :cond_26
    if-gez v21, :cond_27

    .line 617
    const/16 v21, 0x0

    .line 618
    :cond_27
    if-gez v14, :cond_28

    .line 619
    const/4 v14, 0x0

    .line 620
    :cond_28
    invoke-static/range {v30 .. v30}, Ljava/util/Date;->getCalendarSystem(I)Lsun/util/calendar/BaseCalendar;

    move-result-object v12

    .line 621
    .local v12, "cal":Lsun/util/calendar/BaseCalendar;
    const/4 v4, -0x1

    move/from16 v0, v27

    if-ne v0, v4, :cond_29

    .line 622
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v12, v4}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v17

    check-cast v17, Lsun/util/calendar/BaseCalendar$Date;

    .line 623
    .local v17, "ldate":Lsun/util/calendar/BaseCalendar$Date;
    add-int/lit8 v4, v23, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v30

    move/from16 v2, v19

    invoke-virtual {v0, v1, v4, v2}, Lsun/util/calendar/BaseCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 624
    const/4 v4, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v26

    invoke-virtual {v0, v14, v1, v2, v4}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    .line 625
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v4

    return-wide v4

    .line 606
    .end local v12    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local v17    # "ldate":Lsun/util/calendar/BaseCalendar$Date;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 627
    .restart local v12    # "cal":Lsun/util/calendar/BaseCalendar;
    :cond_29
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v28

    check-cast v28, Lsun/util/calendar/BaseCalendar$Date;

    .line 628
    .local v28, "udate":Lsun/util/calendar/BaseCalendar$Date;
    add-int/lit8 v4, v23, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v19

    invoke-virtual {v0, v1, v4, v2}, Lsun/util/calendar/BaseCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 629
    const/4 v4, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v21

    move/from16 v2, v26

    invoke-virtual {v0, v14, v1, v2, v4}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    .line 630
    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v4

    const v6, 0xea60

    mul-int v6, v6, v27

    int-to-long v6, v6

    add-long/2addr v4, v6

    return-wide v4
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1343
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/Date;->fastTime:J

    .line 1341
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1334
    invoke-direct {p0}, Ljava/util/Date;->getTimeImpl()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 1332
    return-void
.end method


# virtual methods
.method public after(Ljava/util/Date;)Z
    .locals 4
    .param p1, "when"    # Ljava/util/Date;

    .prologue
    .line 947
    invoke-static {p0}, Ljava/util/Date;->getMillisOf(Ljava/util/Date;)J

    move-result-wide v0

    invoke-static {p1}, Ljava/util/Date;->getMillisOf(Ljava/util/Date;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public before(Ljava/util/Date;)Z
    .locals 4
    .param p1, "when"    # Ljava/util/Date;

    .prologue
    .line 933
    invoke-static {p0}, Ljava/util/Date;->getMillisOf(Ljava/util/Date;)J

    move-result-wide v0

    invoke-static {p1}, Ljava/util/Date;->getMillisOf(Ljava/util/Date;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 279
    const/4 v1, 0x0

    .line 281
    .local v1, "d":Ljava/util/Date;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/Date;

    move-object v1, v0

    .line 282
    .local v1, "d":Ljava/util/Date;
    iget-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eqz v3, :cond_0

    .line 283
    iget-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/util/calendar/BaseCalendar$Date;

    iput-object v3, v1, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .end local v1    # "d":Ljava/util/Date;
    :cond_0
    :goto_0
    return-object v1

    .line 285
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "anotherDate"    # Ljava/lang/Object;

    .prologue
    .line 992
    check-cast p1, Ljava/util/Date;

    .end local p1    # "anotherDate":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/util/Date;)I
    .locals 5
    .param p1, "anotherDate"    # Ljava/util/Date;

    .prologue
    .line 993
    invoke-static {p0}, Ljava/util/Date;->getMillisOf(Ljava/util/Date;)J

    move-result-wide v2

    .line 994
    .local v2, "thisTime":J
    invoke-static {p1}, Ljava/util/Date;->getMillisOf(Ljava/util/Date;)J

    move-result-wide v0

    .line 995
    .local v0, "anotherTime":J
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    const/4 v4, -0x1

    :goto_0
    return v4

    :cond_0
    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 966
    instance-of v1, p1, Ljava/util/Date;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    check-cast p1, Ljava/util/Date;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getDate()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 752
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public getDay()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 791
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getHours()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 808
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getHours()I

    move-result v0

    return v0
.end method

.method public getMinutes()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 840
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMinutes()I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 703
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getSeconds()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 873
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getSeconds()I

    move-result v0

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 901
    invoke-direct {p0}, Ljava/util/Date;->getTimeImpl()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimezoneOffset()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1185
    iget-object v2, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-nez v2, :cond_0

    .line 1186
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v2, p0, Ljava/util/Date;->fastTime:J

    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 1187
    .local v0, "cal":Ljava/util/GregorianCalendar;
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int v1, v2, v3

    .line 1192
    .end local v0    # "cal":Ljava/util/GregorianCalendar;
    .local v1, "zoneOffset":I
    :goto_0
    neg-int v2, v1

    const v3, 0xea60

    div-int/2addr v2, v3

    return v2

    .line 1189
    .end local v1    # "zoneOffset":I
    :cond_0
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    .line 1190
    iget-object v2, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v2}, Lsun/util/calendar/BaseCalendar$Date;->getZoneOffset()I

    move-result v1

    .restart local v1    # "zoneOffset":I
    goto :goto_0
.end method

.method public getYear()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 667
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, -0x76c

    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 1009
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1010
    .local v0, "ht":J
    long-to-int v2, v0

    const/16 v3, 0x20

    shr-long v4, v0, v3

    long-to-int v3, v4

    xor-int/2addr v2, v3

    return v2
.end method

.method public setDate(I)V
    .locals 1
    .param p1, "date"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 772
    invoke-direct {p0}, Ljava/util/Date;->getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 771
    return-void
.end method

.method public setHours(I)V
    .locals 1
    .param p1, "hours"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 825
    invoke-direct {p0}, Ljava/util/Date;->getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setHours(I)Lsun/util/calendar/CalendarDate;

    .line 824
    return-void
.end method

.method public setMinutes(I)V
    .locals 1
    .param p1, "minutes"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 857
    invoke-direct {p0}, Ljava/util/Date;->getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setMinutes(I)Lsun/util/calendar/CalendarDate;

    .line 856
    return-void
.end method

.method public setMonth(I)V
    .locals 3
    .param p1, "month"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v2, 0xc

    .line 722
    const/4 v1, 0x0

    .line 723
    .local v1, "y":I
    if-lt p1, v2, :cond_2

    .line 724
    div-int/lit8 v1, p1, 0xc

    .line 725
    rem-int/lit8 p1, p1, 0xc

    .line 730
    :cond_0
    :goto_0
    invoke-direct {p0}, Ljava/util/Date;->getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    .line 731
    .local v0, "d":Lsun/util/calendar/BaseCalendar$Date;
    if-eqz v1, :cond_1

    .line 732
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    .line 734
    :cond_1
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Lsun/util/calendar/BaseCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    .line 721
    return-void

    .line 726
    .end local v0    # "d":Lsun/util/calendar/BaseCalendar$Date;
    :cond_2
    if-gez p1, :cond_0

    .line 727
    invoke-static {p1, v2}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v1

    .line 728
    invoke-static {p1, v2}, Lsun/util/calendar/CalendarUtils;->mod(II)I

    move-result p1

    goto :goto_0
.end method

.method public setSeconds(I)V
    .locals 1
    .param p1, "seconds"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 890
    invoke-direct {p0}, Ljava/util/Date;->getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setSeconds(I)Lsun/util/calendar/CalendarDate;

    .line 889
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 918
    iput-wide p1, p0, Ljava/util/Date;->fastTime:J

    .line 919
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 917
    return-void
.end method

.method public setYear(I)V
    .locals 2
    .param p1, "year"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 687
    invoke-direct {p0}, Ljava/util/Date;->getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    add-int/lit16 v1, p1, 0x76c

    invoke-virtual {v0, v1}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    .line 686
    return-void
.end method

.method public toGMTString()Ljava/lang/String;
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v10, 0x3a

    const/4 v9, 0x2

    const/16 v8, 0x20

    .line 1135
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 1136
    .local v4, "t":J
    invoke-static {v4, v5}, Ljava/util/Date;->getCalendarSystem(J)Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    .line 1138
    .local v0, "cal":Lsun/util/calendar/BaseCalendar;
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const/4 v3, 0x0

    check-cast v3, Ljava/util/TimeZone;

    invoke-virtual {v0, v6, v7, v3}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/BaseCalendar$Date;

    .line 1139
    .local v1, "date":Lsun/util/calendar/BaseCalendar$Date;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1140
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v3

    const/4 v6, 0x1

    invoke-static {v2, v3, v6}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1141
    sget-object v3, Ljava/util/Date;->wtb:[Ljava/lang/String;

    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x7

    aget-object v3, v3, v6

    invoke-static {v2, v3}, Ljava/util/Date;->convertToAbbr(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1142
    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1143
    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->getHours()I

    move-result v3

    invoke-static {v2, v3, v9}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1144
    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->getMinutes()I

    move-result v3

    invoke-static {v2, v3, v9}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1145
    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->getSeconds()I

    move-result v3

    invoke-static {v2, v3, v9}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 1146
    const-string/jumbo v3, " GMT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public toLocaleString()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1097
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 1098
    .local v0, "formatter":Ljava/text/DateFormat;
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x3a

    const/4 v6, 0x2

    const/16 v7, 0x20

    .line 1045
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    .line 1046
    .local v0, "date":Lsun/util/calendar/BaseCalendar$Date;
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x1c

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1047
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    move-result v1

    .line 1048
    .local v1, "index":I
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 1049
    const/16 v1, 0x8

    .line 1051
    :cond_0
    sget-object v4, Ljava/util/Date;->wtb:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v2, v4}, Ljava/util/Date;->convertToAbbr(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1052
    sget-object v4, Ljava/util/Date;->wtb:[Ljava/lang/String;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x7

    aget-object v4, v4, v5

    invoke-static {v2, v4}, Ljava/util/Date;->convertToAbbr(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1053
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v4

    invoke-static {v2, v4, v6}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1055
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getHours()I

    move-result v4

    invoke-static {v2, v4, v6}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1056
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMinutes()I

    move-result v4

    invoke-static {v2, v4, v6}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1057
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getSeconds()I

    move-result v4

    invoke-static {v2, v4, v6}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1058
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 1059
    .local v3, "zi":Ljava/util/TimeZone;
    if-eqz v3, :cond_1

    .line 1060
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->isDaylightTime()Z

    move-result v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    :goto_0
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1065
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1062
    :cond_1
    const-string/jumbo v4, "GMT"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
