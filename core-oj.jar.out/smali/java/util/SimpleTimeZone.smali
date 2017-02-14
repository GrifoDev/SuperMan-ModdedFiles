.class public Ljava/util/SimpleTimeZone;
.super Ljava/util/TimeZone;
.source "SimpleTimeZone.java"


# static fields
.field private static final DOM_MODE:I = 0x1

.field private static final DOW_GE_DOM_MODE:I = 0x3

.field private static final DOW_IN_MONTH_MODE:I = 0x2

.field private static final DOW_LE_DOM_MODE:I = 0x4

.field public static final STANDARD_TIME:I = 0x1

.field public static final UTC_TIME:I = 0x2

.field public static final WALL_TIME:I = 0x0

.field static final currentSerialVersion:I = 0x2

.field private static final gcal:Lsun/util/calendar/Gregorian;

.field private static final millisPerDay:I = 0x5265c00

.field private static final millisPerHour:I = 0x36ee80

.field static final serialVersionUID:J = -0x598a29f2ea10a5aL

.field private static final staticLeapMonthLength:[B

.field private static final staticMonthLength:[B


# instance fields
.field private transient cacheEnd:J

.field private transient cacheStart:J

.field private transient cacheYear:J

.field private dstSavings:I

.field private endDay:I

.field private endDayOfWeek:I

.field private endMode:I

.field private endMonth:I

.field private endTime:I

.field private endTimeMode:I

.field private final monthLength:[B

.field private rawOffset:I

.field private serialVersionOnStream:I

.field private startDay:I

.field private startDayOfWeek:I

.field private startMode:I

.field private startMonth:I

.field private startTime:I

.field private startTimeMode:I

.field private startYear:I

.field private useDaylight:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0xc

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Ljava/util/SimpleTimeZone;->staticMonthLength:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Ljava/util/SimpleTimeZone;->staticLeapMonthLength:[B

    invoke-static {}, Lsun/util/calendar/CalendarSystem;->getGregorianCalendar()Lsun/util/calendar/Gregorian;

    move-result-object v0

    sput-object v0, Ljava/util/SimpleTimeZone;->gcal:Lsun/util/calendar/Gregorian;

    return-void

    nop

    :array_0
    .array-data 1
        0x1ft
        0x1ct
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
    .end array-data

    :array_1
    .array-data 1
        0x1ft
        0x1dt
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
    .end array-data
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/TimeZone;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    sget-object v0, Ljava/util/SimpleTimeZone;->staticMonthLength:[B

    iput-object v0, p0, Ljava/util/SimpleTimeZone;->monthLength:[B

    const/4 v0, 0x2

    iput v0, p0, Ljava/util/SimpleTimeZone;->serialVersionOnStream:I

    iput p1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    invoke-virtual {p0, p2}, Ljava/util/SimpleTimeZone;->setID(Ljava/lang/String;)V

    const v0, 0x36ee80

    iput v0, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIII)V
    .locals 14

    const/4 v7, 0x0

    const/4 v12, 0x0

    const v13, 0x36ee80

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v13}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;IIIIIIIIIII)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIIII)V
    .locals 14

    const/4 v7, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v13, p11

    invoke-direct/range {v0 .. v13}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;IIIIIIIIIII)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIIIIII)V
    .locals 4

    invoke-direct {p0}, Ljava/util/TimeZone;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    sget-object v1, Ljava/util/SimpleTimeZone;->staticMonthLength:[B

    iput-object v1, p0, Ljava/util/SimpleTimeZone;->monthLength:[B

    const/4 v1, 0x2

    iput v1, p0, Ljava/util/SimpleTimeZone;->serialVersionOnStream:I

    invoke-virtual {p0, p2}, Ljava/util/SimpleTimeZone;->setID(Ljava/lang/String;)V

    iput p1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    iput p3, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iput p4, p0, Ljava/util/SimpleTimeZone;->startDay:I

    iput p5, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    iput p6, p0, Ljava/util/SimpleTimeZone;->startTime:I

    iput p7, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    iput p8, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iput p9, p0, Ljava/util/SimpleTimeZone;->endDay:I

    iput p10, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    iput p11, p0, Ljava/util/SimpleTimeZone;->endTime:I

    move/from16 v0, p12

    iput v0, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    move/from16 v0, p13

    iput v0, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->decodeRules()V

    if-gtz p13, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Illegal daylight saving value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p13

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method private decodeEndRule()V
    .locals 4

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-eqz v2, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_c

    iget v0, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    if-ltz v0, :cond_1

    iget v0, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    const/16 v2, 0xb

    if-le v0, v2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal end month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    if-ltz v0, :cond_3

    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    const v2, 0x5265c00

    if-le v0, v2, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal end time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/SimpleTimeZone;->endTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    if-nez v0, :cond_7

    iput v1, p0, Ljava/util/SimpleTimeZone;->endMode:I

    :cond_5
    iget v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-ne v0, v3, :cond_a

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    const/4 v1, -0x5

    if-lt v0, v1, :cond_6

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_c

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal end day of week in month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    if-lez v0, :cond_8

    iput v3, p0, Ljava/util/SimpleTimeZone;->endMode:I

    :goto_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    const/4 v2, 0x7

    if-le v0, v2, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal end day of week "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    neg-int v0, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-lez v0, :cond_9

    const/4 v0, 0x3

    iput v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    goto :goto_0

    :cond_9
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    neg-int v0, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    const/4 v0, 0x4

    iput v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    goto :goto_0

    :cond_a
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-lt v0, v1, :cond_b

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    sget-object v1, Ljava/util/SimpleTimeZone;->staticMonthLength:[B

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    aget-byte v1, v1, v2

    if-le v0, v1, :cond_c

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal end day "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method private decodeRules()V
    .locals 0

    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->decodeStartRule()V

    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->decodeEndRule()V

    return-void
.end method

.method private decodeStartRule()V
    .locals 4

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-eqz v2, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-eqz v0, :cond_c

    iget v0, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    if-ltz v0, :cond_1

    iget v0, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    const/16 v2, 0xb

    if-le v0, v2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal start month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    if-ltz v0, :cond_3

    iget v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    const v2, 0x5265c00

    if-le v0, v2, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal start time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/SimpleTimeZone;->startTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    if-nez v0, :cond_7

    iput v1, p0, Ljava/util/SimpleTimeZone;->startMode:I

    :cond_5
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v0, v3, :cond_a

    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    const/4 v1, -0x5

    if-lt v0, v1, :cond_6

    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_c

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal start day of week in month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    if-lez v0, :cond_8

    iput v3, p0, Ljava/util/SimpleTimeZone;->startMode:I

    :goto_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    const/4 v2, 0x7

    if-le v0, v2, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal start day of week "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    neg-int v0, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-lez v0, :cond_9

    const/4 v0, 0x3

    iput v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    goto :goto_0

    :cond_9
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    neg-int v0, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    const/4 v0, 0x4

    iput v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    goto :goto_0

    :cond_a
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-lt v0, v1, :cond_b

    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    sget-object v1, Ljava/util/SimpleTimeZone;->staticMonthLength:[B

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    aget-byte v1, v1, v2

    if-le v0, v1, :cond_c

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal start day "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method private getEnd(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;I)J
    .locals 9

    iget v8, p0, Ljava/util/SimpleTimeZone;->endTime:I

    iget v0, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    sub-int/2addr v8, v0

    :cond_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    if-nez v0, :cond_1

    iget v0, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    sub-int/2addr v8, v0

    :cond_1
    iget v3, p0, Ljava/util/SimpleTimeZone;->endMode:I

    iget v5, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iget v6, p0, Ljava/util/SimpleTimeZone;->endDay:I

    iget v7, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Ljava/util/SimpleTimeZone;->getTransition(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;IIIIII)J

    move-result-wide v0

    return-wide v0
.end method

.method private getOffset(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;IJ)I
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-wide v6, p0, Ljava/util/SimpleTimeZone;->cacheStart:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    iget-wide v6, p0, Ljava/util/SimpleTimeZone;->cacheStart:J

    cmp-long v3, p4, v6

    if-ltz v3, :cond_0

    iget-wide v6, p0, Ljava/util/SimpleTimeZone;->cacheEnd:J

    cmp-long v3, p4, v6

    if-gez v3, :cond_0

    iget v3, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    iget v6, p0, Ljava/util/SimpleTimeZone;->dstSavings:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v3, v6

    monitor-exit p0

    return v3

    :cond_0
    int-to-long v6, p3

    :try_start_1
    iget-wide v8, p0, Ljava/util/SimpleTimeZone;->cacheYear:J

    cmp-long v3, v6, v8

    if-nez v3, :cond_1

    iget v3, p0, Ljava/util/SimpleTimeZone;->rawOffset:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v3

    :cond_1
    monitor-exit p0

    invoke-direct {p0, p1, p2, p3}, Ljava/util/SimpleTimeZone;->getStart(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;I)J

    move-result-wide v4

    invoke-direct {p0, p1, p2, p3}, Ljava/util/SimpleTimeZone;->getEnd(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;I)J

    move-result-wide v0

    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    cmp-long v3, v4, v0

    if-gtz v3, :cond_4

    cmp-long v3, p4, v4

    if-ltz v3, :cond_2

    cmp-long v3, p4, v0

    if-gez v3, :cond_2

    iget v3, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    add-int/2addr v2, v3

    :cond_2
    monitor-enter p0

    int-to-long v6, p3

    :try_start_2
    iput-wide v6, p0, Ljava/util/SimpleTimeZone;->cacheYear:J

    iput-wide v4, p0, Ljava/util/SimpleTimeZone;->cacheStart:J

    iput-wide v0, p0, Ljava/util/SimpleTimeZone;->cacheEnd:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    monitor-exit p0

    :cond_3
    return v2

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_4
    cmp-long v3, p4, v0

    if-gez v3, :cond_6

    add-int/lit8 v3, p3, -0x1

    invoke-direct {p0, p1, p2, v3}, Ljava/util/SimpleTimeZone;->getStart(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;I)J

    move-result-wide v4

    cmp-long v3, p4, v4

    if-ltz v3, :cond_5

    iget v3, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    add-int/2addr v2, v3

    :cond_5
    :goto_1
    cmp-long v3, v4, v0

    if-gtz v3, :cond_3

    monitor-enter p0

    :try_start_3
    iget v3, p0, Ljava/util/SimpleTimeZone;->startYear:I

    int-to-long v6, v3

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, p0, Ljava/util/SimpleTimeZone;->cacheYear:J

    iput-wide v4, p0, Ljava/util/SimpleTimeZone;->cacheStart:J

    iput-wide v0, p0, Ljava/util/SimpleTimeZone;->cacheEnd:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_6
    cmp-long v3, p4, v4

    if-ltz v3, :cond_5

    add-int/lit8 v3, p3, 0x1

    invoke-direct {p0, p1, p2, v3}, Ljava/util/SimpleTimeZone;->getEnd(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;I)J

    move-result-wide v0

    cmp-long v3, p4, v0

    if-gez v3, :cond_5

    iget v3, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    add-int/2addr v2, v3

    goto :goto_1
.end method

.method private getStart(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;I)J
    .locals 9

    iget v8, p0, Ljava/util/SimpleTimeZone;->startTime:I

    iget v0, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    sub-int/2addr v8, v0

    :cond_0
    iget v3, p0, Ljava/util/SimpleTimeZone;->startMode:I

    iget v5, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iget v6, p0, Ljava/util/SimpleTimeZone;->startDay:I

    iget v7, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Ljava/util/SimpleTimeZone;->getTransition(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;IIIIII)J

    move-result-wide v0

    return-wide v0
.end method

.method private getTransition(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;IIIIII)J
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p2, p4}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    add-int/lit8 v0, p5, 0x1

    invoke-virtual {p2, v0}, Lsun/util/calendar/BaseCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    packed-switch p3, :pswitch_data_0

    :goto_0
    invoke-virtual {p1, p2}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v0

    int-to-long v2, p8

    add-long/2addr v0, v2

    return-wide v0

    :pswitch_0
    invoke-virtual {p2, p6}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2, v1}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    if-gez p6, :cond_0

    invoke-virtual {p1, p2}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v0

    invoke-virtual {p2, v0}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    :cond_0
    invoke-virtual {p1, p6, p7, p2}, Lsun/util/calendar/BaseCalendar;->getNthDayOfWeek(IILsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    move-result-object p2

    check-cast p2, Lsun/util/calendar/BaseCalendar$Date;

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2, p6}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    invoke-virtual {p1, v1, p7, p2}, Lsun/util/calendar/BaseCalendar;->getNthDayOfWeek(IILsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    move-result-object p2

    check-cast p2, Lsun/util/calendar/BaseCalendar$Date;

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2, p6}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    const/4 v0, -0x1

    invoke-virtual {p1, v0, p7, p2}, Lsun/util/calendar/BaseCalendar;->getNthDayOfWeek(IILsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    move-result-object p2

    check-cast p2, Lsun/util/calendar/BaseCalendar$Date;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized invalidateCache()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->startYear:I

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    iput-wide v0, p0, Ljava/util/SimpleTimeZone;->cacheYear:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/SimpleTimeZone;->cacheEnd:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/SimpleTimeZone;->cacheStart:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private makeRulesCompatible()V
    .locals 5

    const/16 v4, 0x1e

    const/4 v2, -0x1

    const v3, 0x5265c00

    const/4 v1, 0x1

    iget v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    packed-switch v0, :pswitch_data_1

    :cond_1
    :goto_1
    :pswitch_1
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    packed-switch v0, :pswitch_data_2

    :goto_2
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    if-gez v0, :cond_4

    iget v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    add-int/2addr v0, v3

    iput v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    goto :goto_2

    :pswitch_2
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    iput v1, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    goto :goto_0

    :pswitch_3
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    goto :goto_0

    :pswitch_4
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-lt v0, v4, :cond_2

    iput v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    goto :goto_0

    :cond_2
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    goto :goto_0

    :pswitch_5
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    iput v1, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    goto :goto_1

    :pswitch_6
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    goto :goto_1

    :pswitch_7
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-lt v0, v4, :cond_3

    iput v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    goto :goto_1

    :cond_3
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    goto :goto_1

    :pswitch_8
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    iget v1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    goto :goto_2

    :cond_4
    :goto_3
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    if-lt v0, v3, :cond_5

    iget v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    sub-int/2addr v0, v3

    iput v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    goto :goto_3

    :cond_5
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    packed-switch v0, :pswitch_data_3

    :goto_4
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    if-gez v0, :cond_6

    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    add-int/2addr v0, v3

    iput v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    goto :goto_4

    :pswitch_9
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    iget v1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    iget v2, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    goto :goto_4

    :pswitch_a
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    iget v1, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    goto :goto_4

    :cond_6
    :goto_5
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    if-lt v0, v3, :cond_7

    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    sub-int/2addr v0, v3

    iput v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    goto :goto_5

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private packRules()[B
    .locals 3

    const/4 v1, 0x6

    new-array v0, v1, [B

    iget v1, p0, Ljava/util/SimpleTimeZone;->startDay:I

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    iget v1, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    iget v1, p0, Ljava/util/SimpleTimeZone;->endDay:I

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    iget v1, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    iget v1, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    iget v1, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    return-object v0
.end method

.method private packTimes()[I
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [I

    iget v1, p0, Ljava/util/SimpleTimeZone;->startTime:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Ljava/util/SimpleTimeZone;->endTime:I

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget v3, p0, Ljava/util/SimpleTimeZone;->serialVersionOnStream:I

    if-ge v3, v5, :cond_3

    iget v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    if-nez v3, :cond_0

    iput v5, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    :cond_0
    iget v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    if-nez v3, :cond_1

    iput v5, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    :cond_1
    iput v4, p0, Ljava/util/SimpleTimeZone;->endMode:I

    iput v4, p0, Ljava/util/SimpleTimeZone;->startMode:I

    const v3, 0x36ee80

    iput v3, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    :goto_0
    iget v3, p0, Ljava/util/SimpleTimeZone;->serialVersionOnStream:I

    if-lt v3, v4, :cond_2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-direct {p0, v2}, Ljava/util/SimpleTimeZone;->unpackTimes([I)V

    :cond_2
    iput v4, p0, Ljava/util/SimpleTimeZone;->serialVersionOnStream:I

    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    new-array v1, v0, [B

    invoke-virtual {p1, v1}, Ljava/io/ObjectInputStream;->readFully([B)V

    invoke-direct {p0, v1}, Ljava/util/SimpleTimeZone;->unpackRules([B)V

    goto :goto_0
.end method

.method private unpackRules([B)V
    .locals 2

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    const/4 v0, 0x1

    aget-byte v0, p1, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    const/4 v0, 0x2

    aget-byte v0, p1, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    const/4 v0, 0x3

    aget-byte v0, p1, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    array-length v0, p1

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    const/4 v0, 0x4

    aget-byte v0, p1, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    const/4 v0, 0x5

    aget-byte v0, p1, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    :cond_0
    return-void
.end method

.method private unpackTimes([I)V
    .locals 1

    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->packRules()[B

    move-result-object v0

    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->packTimes()[I

    move-result-object v1

    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->makeRulesCompatible()V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    array-length v2, v0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ljava/util/SimpleTimeZone;->unpackRules([B)V

    invoke-direct {p0, v1}, Ljava/util/SimpleTimeZone;->unpackTimes([I)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v2, p1, Ljava/util/SimpleTimeZone;

    if-nez v2, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/util/SimpleTimeZone;

    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/SimpleTimeZone;->hasSameRules(Ljava/util/TimeZone;)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public getDSTSavings()I
    .locals 1

    iget-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOffset(IIIIII)I
    .locals 14

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    if-eqz p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Illegal era "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move/from16 v5, p2

    if-nez p1, :cond_1

    rsub-int/lit8 v5, p2, 0x1

    :cond_1
    const v2, 0x116bd2d2

    if-lt v5, v2, :cond_5

    rem-int/lit16 v2, v5, 0xaf0

    add-int/lit16 v5, v2, 0xaf0

    :cond_2
    :goto_0
    add-int/lit8 v8, p3, 0x1

    sget-object v3, Ljava/util/SimpleTimeZone;->gcal:Lsun/util/calendar/Gregorian;

    sget-object v2, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v3, v2}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v4

    check-cast v4, Lsun/util/calendar/BaseCalendar$Date;

    move/from16 v0, p4

    invoke-virtual {v4, v5, v8, v0}, Lsun/util/calendar/BaseCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    invoke-virtual {v3, v4}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v6

    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    sub-int v2, p6, v2

    int-to-long v10, v2

    add-long/2addr v6, v10

    const-wide v10, -0xb1d069b5400L

    cmp-long v2, v6, v10

    if-gez v2, :cond_3

    const-string/jumbo v2, "julian"

    invoke-static {v2}, Lsun/util/calendar/CalendarSystem;->forName(Ljava/lang/String;)Lsun/util/calendar/CalendarSystem;

    move-result-object v3

    check-cast v3, Lsun/util/calendar/BaseCalendar;

    sget-object v2, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v3, v2}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v4

    check-cast v4, Lsun/util/calendar/BaseCalendar$Date;

    move/from16 v0, p4

    invoke-virtual {v4, v5, v8, v0}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedDate(III)Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v3, v4}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v10

    move/from16 v0, p6

    int-to-long v12, v0

    add-long/2addr v10, v12

    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    int-to-long v12, v2

    sub-long v6, v10, v12

    :cond_3
    invoke-virtual {v4}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v2

    if-ne v2, v5, :cond_4

    invoke-virtual {v4}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v2

    if-eq v2, v8, :cond_6

    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_5
    const v2, -0x116babfe

    if-gt v5, v2, :cond_2

    int-to-long v10, v5

    const-wide/16 v12, 0x1c

    invoke-static {v10, v11, v12, v13}, Lsun/util/calendar/CalendarUtils;->mod(JJ)J

    move-result-wide v10

    long-to-int v5, v10

    goto :goto_0

    :cond_6
    invoke-virtual {v4}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v2

    move/from16 v0, p4

    if-ne v2, v0, :cond_4

    const/4 v2, 0x1

    move/from16 v0, p5

    if-lt v0, v2, :cond_4

    const/4 v2, 0x7

    move/from16 v0, p5

    if-gt v0, v2, :cond_4

    if-ltz p6, :cond_4

    const v2, 0x5265c00

    move/from16 v0, p6

    if-ge v0, v2, :cond_4

    iget-boolean v2, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v2, :cond_7

    iget v2, p0, Ljava/util/SimpleTimeZone;->startYear:I

    move/from16 v0, p2

    if-ge v0, v2, :cond_8

    :cond_7
    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    return v2

    :cond_8
    const/4 v2, 0x1

    if-ne p1, v2, :cond_7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Ljava/util/SimpleTimeZone;->getOffset(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;IJ)I

    move-result v2

    return v2
.end method

.method public getOffset(J)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/SimpleTimeZone;->getOffsets(J[I)I

    move-result v0

    return v0
.end method

.method getOffsets(J[I)I
    .locals 11

    const/4 v7, 0x0

    iget v6, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    iget-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v0, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide v4, p0, Ljava/util/SimpleTimeZone;->cacheStart:J

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-eqz v0, :cond_2

    iget-wide v4, p0, Ljava/util/SimpleTimeZone;->cacheStart:J

    cmp-long v0, p1, v4

    if-ltz v0, :cond_2

    iget-wide v4, p0, Ljava/util/SimpleTimeZone;->cacheEnd:J

    cmp-long v0, p1, v4

    if-gez v0, :cond_2

    iget v0, p0, Ljava/util/SimpleTimeZone;->dstSavings:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v6, v0

    monitor-exit p0

    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    aput v0, p3, v7

    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    sub-int v0, v6, v0

    const/4 v4, 0x1

    aput v0, p3, v4

    :cond_1
    return v6

    :cond_2
    monitor-exit p0

    const-wide v4, -0xb1d069b5400L

    cmp-long v0, p1, v4

    if-ltz v0, :cond_3

    sget-object v1, Ljava/util/SimpleTimeZone;->gcal:Lsun/util/calendar/Gregorian;

    :goto_1
    sget-object v0, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v1, v0}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v2

    check-cast v2, Lsun/util/calendar/BaseCalendar$Date;

    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    int-to-long v4, v0

    add-long/2addr v4, p1

    invoke-virtual {v1, v4, v5, v2}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    invoke-virtual {v2}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v3

    iget v0, p0, Ljava/util/SimpleTimeZone;->startYear:I

    if-lt v3, v0, :cond_0

    invoke-virtual {v2, v7, v7, v7, v7}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    move-object v0, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/SimpleTimeZone;->getOffset(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;IJ)I

    move-result v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    const-string/jumbo v0, "julian"

    invoke-static {v0}, Lsun/util/calendar/CalendarSystem;->forName(Ljava/lang/String;)Lsun/util/calendar/CalendarSystem;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/BaseCalendar;

    goto :goto_1
.end method

.method public getRawOffset()I
    .locals 1

    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    return v0
.end method

.method public hasSameRules(Ljava/util/TimeZone;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    instance-of v3, p1, Ljava/util/SimpleTimeZone;

    if-nez v3, :cond_1

    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/util/SimpleTimeZone;

    iget v3, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->rawOffset:I

    if-ne v3, v4, :cond_5

    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    iget-boolean v4, v0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-ne v3, v4, :cond_5

    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v3, :cond_2

    iget v3, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->dstSavings:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->startMode:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->startMonth:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->startDay:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->startDay:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->startTime:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->startTime:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->endMode:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->endMode:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->endMonth:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->endDay:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->endDay:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->endTime:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->endTime:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->startYear:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->startYear:I

    if-ne v3, v4, :cond_3

    :cond_2
    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method public declared-synchronized hashCode()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iget v1, p0, Ljava/util/SimpleTimeZone;->startDay:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/util/SimpleTimeZone;->startTime:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/util/SimpleTimeZone;->endDay:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/util/SimpleTimeZone;->endTime:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/SimpleTimeZone;->getOffset(J)I

    move-result v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public observesDaylightTime()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v0

    return v0
.end method

.method public setDSTSavings(I)V
    .locals 3

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal daylight saving value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    return-void
.end method

.method public setEndRule(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Ljava/util/SimpleTimeZone;->setEndRule(IIII)V

    return-void
.end method

.method public setEndRule(IIII)V
    .locals 1

    iput p1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iput p2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    iput p3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    iput p4, p0, Ljava/util/SimpleTimeZone;->endTime:I

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->decodeEndRule()V

    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->invalidateCache()V

    return-void
.end method

.method public setEndRule(IIIIZ)V
    .locals 2

    if-eqz p5, :cond_0

    neg-int v0, p3

    invoke-virtual {p0, p1, p2, v0, p4}, Ljava/util/SimpleTimeZone;->setEndRule(IIII)V

    :goto_0
    return-void

    :cond_0
    neg-int v0, p2

    neg-int v1, p3

    invoke-virtual {p0, p1, v0, v1, p4}, Ljava/util/SimpleTimeZone;->setEndRule(IIII)V

    goto :goto_0
.end method

.method public setRawOffset(I)V
    .locals 0

    iput p1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    return-void
.end method

.method public setStartRule(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Ljava/util/SimpleTimeZone;->setStartRule(IIII)V

    return-void
.end method

.method public setStartRule(IIII)V
    .locals 1

    iput p1, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iput p2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    iput p3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    iput p4, p0, Ljava/util/SimpleTimeZone;->startTime:I

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->decodeStartRule()V

    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->invalidateCache()V

    return-void
.end method

.method public setStartRule(IIIIZ)V
    .locals 2

    if-eqz p5, :cond_0

    neg-int v0, p3

    invoke-virtual {p0, p1, p2, v0, p4}, Ljava/util/SimpleTimeZone;->setStartRule(IIII)V

    :goto_0
    return-void

    :cond_0
    neg-int v0, p2

    neg-int v1, p3

    invoke-virtual {p0, p1, v0, v1, p4}, Ljava/util/SimpleTimeZone;->setStartRule(IIII)V

    goto :goto_0
.end method

.method public setStartYear(I)V
    .locals 0

    iput p1, p0, Ljava/util/SimpleTimeZone;->startYear:I

    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->invalidateCache()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",dstSavings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",useDaylight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",startYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->startYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",startMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->startMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",startMonth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",startDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->startDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",startDayOfWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->startTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",startTimeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",endMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->endMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",endMonth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",endDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->endDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",endDayOfWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->endTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",endTimeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useDaylightTime()Z
    .locals 1

    iget-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    return v0
.end method
