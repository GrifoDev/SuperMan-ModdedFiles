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

    .prologue
    const/16 v1, 0xc

    .line 1128
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Ljava/util/SimpleTimeZone;->staticMonthLength:[B

    .line 1129
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Ljava/util/SimpleTimeZone;->staticLeapMonthLength:[B

    .line 1199
    invoke-static {}, Lsun/util/calendar/CalendarSystem;->getGregorianCalendar()Lsun/util/calendar/Gregorian;

    move-result-object v0

    sput-object v0, Ljava/util/SimpleTimeZone;->gcal:Lsun/util/calendar/Gregorian;

    .line 150
    return-void

    .line 1128
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

    .line 1129
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
    .param p1, "rawOffset"    # I
    .param p2, "ID"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/util/TimeZone;-><init>()V

    .line 1114
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    .line 1127
    sget-object v0, Ljava/util/SimpleTimeZone;->staticMonthLength:[B

    iput-object v0, p0, Ljava/util/SimpleTimeZone;->monthLength:[B

    .line 1279
    const/4 v0, 0x2

    iput v0, p0, Ljava/util/SimpleTimeZone;->serialVersionOnStream:I

    .line 160
    iput p1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 161
    invoke-virtual {p0, p2}, Ljava/util/SimpleTimeZone;->setID(Ljava/lang/String;)V

    .line 162
    const v0, 0x36ee80

    iput v0, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    .line 158
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIII)V
    .locals 14
    .param p1, "rawOffset"    # I
    .param p2, "ID"    # Ljava/lang/String;
    .param p3, "startMonth"    # I
    .param p4, "startDay"    # I
    .param p5, "startDayOfWeek"    # I
    .param p6, "startTime"    # I
    .param p7, "endMonth"    # I
    .param p8, "endDay"    # I
    .param p9, "endDayOfWeek"    # I
    .param p10, "endTime"    # I

    .prologue
    .line 219
    const/4 v7, 0x0

    .line 220
    const/4 v12, 0x0

    .line 221
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

    .line 218
    invoke-direct/range {v0 .. v13}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;IIIIIIIIIII)V

    .line 216
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIIII)V
    .locals 14
    .param p1, "rawOffset"    # I
    .param p2, "ID"    # Ljava/lang/String;
    .param p3, "startMonth"    # I
    .param p4, "startDay"    # I
    .param p5, "startDayOfWeek"    # I
    .param p6, "startTime"    # I
    .param p7, "endMonth"    # I
    .param p8, "endDay"    # I
    .param p9, "endDayOfWeek"    # I
    .param p10, "endTime"    # I
    .param p11, "dstSavings"    # I

    .prologue
    .line 278
    const/4 v7, 0x0

    .line 279
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

    .line 277
    invoke-direct/range {v0 .. v13}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;IIIIIIIIIII)V

    .line 275
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIIIIII)V
    .locals 4
    .param p1, "rawOffset"    # I
    .param p2, "ID"    # Ljava/lang/String;
    .param p3, "startMonth"    # I
    .param p4, "startDay"    # I
    .param p5, "startDayOfWeek"    # I
    .param p6, "startTime"    # I
    .param p7, "startTimeMode"    # I
    .param p8, "endMonth"    # I
    .param p9, "endDay"    # I
    .param p10, "endDayOfWeek"    # I
    .param p11, "endTime"    # I
    .param p12, "endTimeMode"    # I
    .param p13, "dstSavings"    # I

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/util/TimeZone;-><init>()V

    .line 1114
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    .line 1127
    sget-object v1, Ljava/util/SimpleTimeZone;->staticMonthLength:[B

    iput-object v1, p0, Ljava/util/SimpleTimeZone;->monthLength:[B

    .line 1279
    const/4 v1, 0x2

    iput v1, p0, Ljava/util/SimpleTimeZone;->serialVersionOnStream:I

    .line 335
    invoke-virtual {p0, p2}, Ljava/util/SimpleTimeZone;->setID(Ljava/lang/String;)V

    .line 336
    iput p1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 337
    iput p3, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    .line 338
    iput p4, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 339
    iput p5, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 340
    iput p6, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 341
    iput p7, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    .line 342
    iput p8, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    .line 343
    iput p9, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 344
    iput p10, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 345
    iput p11, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 346
    move/from16 v0, p12

    iput v0, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    .line 347
    move/from16 v0, p13

    iput v0, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    .line 350
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->decodeRules()V

    .line 351
    if-gtz p13, :cond_0

    .line 352
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

    .line 333
    :cond_0
    return-void
.end method

.method private decodeEndRule()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1427
    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-eqz v2, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    .line 1428
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_c

    .line 1429
    iget v0, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    if-ltz v0, :cond_1

    iget v0, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    const/16 v2, 0xb

    if-le v0, v2, :cond_2

    .line 1430
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1431
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

    .line 1430
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1433
    :cond_2
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    if-ltz v0, :cond_3

    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    const v2, 0x5265c00

    if-le v0, v2, :cond_4

    .line 1434
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1435
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

    .line 1434
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1437
    :cond_4
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    if-nez v0, :cond_7

    .line 1438
    iput v1, p0, Ljava/util/SimpleTimeZone;->endMode:I

    .line 1456
    :cond_5
    iget v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-ne v0, v3, :cond_a

    .line 1457
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    const/4 v1, -0x5

    if-lt v0, v1, :cond_6

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_c

    .line 1458
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1459
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

    .line 1458
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1440
    :cond_7
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    if-lez v0, :cond_8

    .line 1441
    iput v3, p0, Ljava/util/SimpleTimeZone;->endMode:I

    .line 1451
    :goto_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    const/4 v2, 0x7

    if-le v0, v2, :cond_5

    .line 1452
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1453
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

    .line 1452
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1443
    :cond_8
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    neg-int v0, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 1444
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-lez v0, :cond_9

    .line 1445
    const/4 v0, 0x3

    iput v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    goto :goto_0

    .line 1447
    :cond_9
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    neg-int v0, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 1448
    const/4 v0, 0x4

    iput v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    goto :goto_0

    .line 1461
    :cond_a
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-lt v0, v1, :cond_b

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    sget-object v1, Ljava/util/SimpleTimeZone;->staticMonthLength:[B

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    aget-byte v1, v1, v2

    if-le v0, v1, :cond_c

    .line 1462
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1463
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

    .line 1462
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1426
    :cond_c
    return-void
.end method

.method private decodeRules()V
    .locals 0

    .prologue
    .line 1351
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->decodeStartRule()V

    .line 1352
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->decodeEndRule()V

    .line 1349
    return-void
.end method

.method private decodeStartRule()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1380
    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-eqz v2, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    .line 1381
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-eqz v0, :cond_c

    .line 1382
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    if-ltz v0, :cond_1

    iget v0, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    const/16 v2, 0xb

    if-le v0, v2, :cond_2

    .line 1383
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1384
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

    .line 1383
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1386
    :cond_2
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    if-ltz v0, :cond_3

    iget v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    const v2, 0x5265c00

    if-le v0, v2, :cond_4

    .line 1387
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1388
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

    .line 1387
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1390
    :cond_4
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    if-nez v0, :cond_7

    .line 1391
    iput v1, p0, Ljava/util/SimpleTimeZone;->startMode:I

    .line 1409
    :cond_5
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v0, v3, :cond_a

    .line 1410
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    const/4 v1, -0x5

    if-lt v0, v1, :cond_6

    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_c

    .line 1411
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1412
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

    .line 1411
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1393
    :cond_7
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    if-lez v0, :cond_8

    .line 1394
    iput v3, p0, Ljava/util/SimpleTimeZone;->startMode:I

    .line 1404
    :goto_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    const/4 v2, 0x7

    if-le v0, v2, :cond_5

    .line 1405
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1406
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

    .line 1405
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1396
    :cond_8
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    neg-int v0, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 1397
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-lez v0, :cond_9

    .line 1398
    const/4 v0, 0x3

    iput v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    goto :goto_0

    .line 1400
    :cond_9
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    neg-int v0, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 1401
    const/4 v0, 0x4

    iput v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    goto :goto_0

    .line 1414
    :cond_a
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-lt v0, v1, :cond_b

    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    sget-object v1, Ljava/util/SimpleTimeZone;->staticMonthLength:[B

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    aget-byte v1, v1, v2

    if-le v0, v1, :cond_c

    .line 1415
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1416
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

    .line 1415
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1379
    :cond_c
    return-void
.end method

.method private getEnd(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;I)J
    .locals 9
    .param p1, "cal"    # Lsun/util/calendar/BaseCalendar;
    .param p2, "cdate"    # Lsun/util/calendar/BaseCalendar$Date;
    .param p3, "year"    # I

    .prologue
    .line 734
    iget v8, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 735
    .local v8, "time":I
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 736
    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    sub-int/2addr v8, v0

    .line 738
    :cond_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    if-nez v0, :cond_1

    .line 739
    iget v0, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    sub-int/2addr v8, v0

    .line 741
    :cond_1
    iget v3, p0, Ljava/util/SimpleTimeZone;->endMode:I

    iget v5, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iget v6, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 742
    iget v7, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    .line 741
    invoke-direct/range {v0 .. v8}, Ljava/util/SimpleTimeZone;->getTransition(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;IIIIII)J

    move-result-wide v0

    return-wide v0
.end method

.method private getOffset(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;IJ)I
    .locals 10
    .param p1, "cal"    # Lsun/util/calendar/BaseCalendar;
    .param p2, "cdate"    # Lsun/util/calendar/BaseCalendar$Date;
    .param p3, "year"    # I
    .param p4, "time"    # J

    .prologue
    .line 673
    monitor-enter p0

    .line 674
    :try_start_0
    iget-wide v6, p0, Ljava/util/SimpleTimeZone;->cacheStart:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    .line 675
    iget-wide v6, p0, Ljava/util/SimpleTimeZone;->cacheStart:J

    cmp-long v3, p4, v6

    if-ltz v3, :cond_0

    iget-wide v6, p0, Ljava/util/SimpleTimeZone;->cacheEnd:J

    cmp-long v3, p4, v6

    if-gez v3, :cond_0

    .line 676
    iget v3, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    iget v6, p0, Ljava/util/SimpleTimeZone;->dstSavings:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v3, v6

    monitor-exit p0

    return v3

    .line 678
    :cond_0
    int-to-long v6, p3

    :try_start_1
    iget-wide v8, p0, Ljava/util/SimpleTimeZone;->cacheYear:J

    cmp-long v3, v6, v8

    if-nez v3, :cond_1

    .line 679
    iget v3, p0, Ljava/util/SimpleTimeZone;->rawOffset:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v3

    :cond_1
    monitor-exit p0

    .line 684
    invoke-direct {p0, p1, p2, p3}, Ljava/util/SimpleTimeZone;->getStart(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;I)J

    move-result-wide v4

    .line 685
    .local v4, "start":J
    invoke-direct {p0, p1, p2, p3}, Ljava/util/SimpleTimeZone;->getEnd(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;I)J

    move-result-wide v0

    .line 686
    .local v0, "end":J
    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 687
    .local v2, "offset":I
    cmp-long v3, v4, v0

    if-gtz v3, :cond_4

    .line 688
    cmp-long v3, p4, v4

    if-ltz v3, :cond_2

    cmp-long v3, p4, v0

    if-gez v3, :cond_2

    .line 689
    iget v3, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    add-int/2addr v2, v3

    .line 691
    :cond_2
    monitor-enter p0

    .line 692
    int-to-long v6, p3

    :try_start_2
    iput-wide v6, p0, Ljava/util/SimpleTimeZone;->cacheYear:J

    .line 693
    iput-wide v4, p0, Ljava/util/SimpleTimeZone;->cacheStart:J

    .line 694
    iput-wide v0, p0, Ljava/util/SimpleTimeZone;->cacheEnd:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    monitor-exit p0

    .line 721
    :cond_3
    return v2

    .line 673
    .end local v0    # "end":J
    .end local v2    # "offset":I
    .end local v4    # "start":J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 691
    .restart local v0    # "end":J
    .restart local v2    # "offset":I
    .restart local v4    # "start":J
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 697
    :cond_4
    cmp-long v3, p4, v0

    if-gez v3, :cond_6

    .line 700
    add-int/lit8 v3, p3, -0x1

    invoke-direct {p0, p1, p2, v3}, Ljava/util/SimpleTimeZone;->getStart(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;I)J

    move-result-wide v4

    .line 701
    cmp-long v3, p4, v4

    if-ltz v3, :cond_5

    .line 702
    iget v3, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    add-int/2addr v2, v3

    .line 712
    :cond_5
    :goto_1
    cmp-long v3, v4, v0

    if-gtz v3, :cond_3

    .line 713
    monitor-enter p0

    .line 715
    :try_start_3
    iget v3, p0, Ljava/util/SimpleTimeZone;->startYear:I

    int-to-long v6, v3

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, p0, Ljava/util/SimpleTimeZone;->cacheYear:J

    .line 716
    iput-wide v4, p0, Ljava/util/SimpleTimeZone;->cacheStart:J

    .line 717
    iput-wide v0, p0, Ljava/util/SimpleTimeZone;->cacheEnd:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    .line 713
    :catchall_2
    move-exception v3

    monitor-exit p0

    throw v3

    .line 704
    :cond_6
    cmp-long v3, p4, v4

    if-ltz v3, :cond_5

    .line 707
    add-int/lit8 v3, p3, 0x1

    invoke-direct {p0, p1, p2, v3}, Ljava/util/SimpleTimeZone;->getEnd(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;I)J

    move-result-wide v0

    .line 708
    cmp-long v3, p4, v0

    if-gez v3, :cond_5

    .line 709
    iget v3, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    add-int/2addr v2, v3

    goto :goto_1
.end method

.method private getStart(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;I)J
    .locals 9
    .param p1, "cal"    # Lsun/util/calendar/BaseCalendar;
    .param p2, "cdate"    # Lsun/util/calendar/BaseCalendar$Date;
    .param p3, "year"    # I

    .prologue
    .line 725
    iget v8, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 726
    .local v8, "time":I
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 727
    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    sub-int/2addr v8, v0

    .line 729
    :cond_0
    iget v3, p0, Ljava/util/SimpleTimeZone;->startMode:I

    iget v5, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iget v6, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 730
    iget v7, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    .line 729
    invoke-direct/range {v0 .. v8}, Ljava/util/SimpleTimeZone;->getTransition(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;IIIIII)J

    move-result-wide v0

    return-wide v0
.end method

.method private getTransition(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;IIIIII)J
    .locals 4
    .param p1, "cal"    # Lsun/util/calendar/BaseCalendar;
    .param p2, "cdate"    # Lsun/util/calendar/BaseCalendar$Date;
    .param p3, "mode"    # I
    .param p4, "year"    # I
    .param p5, "month"    # I
    .param p6, "dayOfMonth"    # I
    .param p7, "dayOfWeek"    # I
    .param p8, "timeOfDay"    # I

    .prologue
    const/4 v1, 0x1

    .line 748
    invoke-virtual {p2, p4}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    .line 749
    add-int/lit8 v0, p5, 0x1

    invoke-virtual {p2, v0}, Lsun/util/calendar/BaseCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    .line 750
    packed-switch p3, :pswitch_data_0

    .line 773
    :goto_0
    invoke-virtual {p1, p2}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v0

    int-to-long v2, p8

    add-long/2addr v0, v2

    return-wide v0

    .line 752
    :pswitch_0
    invoke-virtual {p2, p6}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    goto :goto_0

    .line 756
    :pswitch_1
    invoke-virtual {p2, v1}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 757
    if-gez p6, :cond_0

    .line 758
    invoke-virtual {p1, p2}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v0

    invoke-virtual {p2, v0}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 760
    :cond_0
    invoke-virtual {p1, p6, p7, p2}, Lsun/util/calendar/BaseCalendar;->getNthDayOfWeek(IILsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    move-result-object p2

    .end local p2    # "cdate":Lsun/util/calendar/BaseCalendar$Date;
    check-cast p2, Lsun/util/calendar/BaseCalendar$Date;

    .restart local p2    # "cdate":Lsun/util/calendar/BaseCalendar$Date;
    goto :goto_0

    .line 764
    :pswitch_2
    invoke-virtual {p2, p6}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 765
    invoke-virtual {p1, v1, p7, p2}, Lsun/util/calendar/BaseCalendar;->getNthDayOfWeek(IILsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    move-result-object p2

    .end local p2    # "cdate":Lsun/util/calendar/BaseCalendar$Date;
    check-cast p2, Lsun/util/calendar/BaseCalendar$Date;

    .restart local p2    # "cdate":Lsun/util/calendar/BaseCalendar$Date;
    goto :goto_0

    .line 769
    :pswitch_3
    invoke-virtual {p2, p6}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 770
    const/4 v0, -0x1

    invoke-virtual {p1, v0, p7, p2}, Lsun/util/calendar/BaseCalendar;->getNthDayOfWeek(IILsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    move-result-object p2

    .end local p2    # "cdate":Lsun/util/calendar/BaseCalendar$Date;
    check-cast p2, Lsun/util/calendar/BaseCalendar$Date;

    .restart local p2    # "cdate":Lsun/util/calendar/BaseCalendar$Date;
    goto :goto_0

    .line 750
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

    .prologue
    monitor-enter p0

    .line 1282
    :try_start_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->startYear:I

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    iput-wide v0, p0, Ljava/util/SimpleTimeZone;->cacheYear:J

    .line 1283
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/SimpleTimeZone;->cacheEnd:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/SimpleTimeZone;->cacheStart:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1281
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private makeRulesCompatible()V
    .locals 5

    .prologue
    const/16 v4, 0x1e

    const/4 v2, -0x1

    const v3, 0x5265c00

    const/4 v1, 0x1

    .line 1479
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    packed-switch v0, :pswitch_data_0

    .line 1502
    :cond_0
    :goto_0
    :pswitch_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    packed-switch v0, :pswitch_data_1

    .line 1535
    :cond_1
    :goto_1
    :pswitch_1
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    packed-switch v0, :pswitch_data_2

    .line 1540
    :goto_2
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    if-gez v0, :cond_4

    .line 1541
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    add-int/2addr v0, v3

    iput v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 1542
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    goto :goto_2

    .line 1481
    :pswitch_2
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 1482
    iput v1, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    goto :goto_0

    .line 1488
    :pswitch_3
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-eq v0, v1, :cond_0

    .line 1489
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    goto :goto_0

    .line 1494
    :pswitch_4
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-lt v0, v4, :cond_2

    .line 1495
    iput v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    goto :goto_0

    .line 1497
    :cond_2
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    goto :goto_0

    .line 1504
    :pswitch_5
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 1505
    iput v1, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    goto :goto_1

    .line 1511
    :pswitch_6
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eq v0, v1, :cond_1

    .line 1512
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    goto :goto_1

    .line 1517
    :pswitch_7
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-lt v0, v4, :cond_3

    .line 1518
    iput v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    goto :goto_1

    .line 1520
    :cond_3
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    goto :goto_1

    .line 1537
    :pswitch_8
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    iget v1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    goto :goto_2

    .line 1544
    :cond_4
    :goto_3
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    if-lt v0, v3, :cond_5

    .line 1545
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    sub-int/2addr v0, v3

    iput v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 1546
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    goto :goto_3

    .line 1549
    :cond_5
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    packed-switch v0, :pswitch_data_3

    .line 1556
    :goto_4
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    if-gez v0, :cond_6

    .line 1557
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    add-int/2addr v0, v3

    iput v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 1558
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    goto :goto_4

    .line 1551
    :pswitch_9
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    iget v1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    iget v2, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    goto :goto_4

    .line 1554
    :pswitch_a
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    iget v1, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    goto :goto_4

    .line 1560
    :cond_6
    :goto_5
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    if-lt v0, v3, :cond_7

    .line 1561
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    sub-int/2addr v0, v3

    iput v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 1562
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    goto :goto_5

    .line 1477
    :cond_7
    return-void

    .line 1479
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1502
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 1535
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_8
    .end packed-switch

    .line 1549
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private packRules()[B
    .locals 3

    .prologue
    .line 1572
    const/4 v1, 0x6

    new-array v0, v1, [B

    .line 1573
    .local v0, "rules":[B
    iget v1, p0, Ljava/util/SimpleTimeZone;->startDay:I

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 1574
    iget v1, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 1575
    iget v1, p0, Ljava/util/SimpleTimeZone;->endDay:I

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 1576
    iget v1, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 1579
    iget v1, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    .line 1580
    iget v1, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    .line 1582
    return-object v0
.end method

.method private packTimes()[I
    .locals 3

    .prologue
    .line 1608
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 1609
    .local v0, "times":[I
    iget v1, p0, Ljava/util/SimpleTimeZone;->startTime:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1610
    iget v1, p0, Ljava/util/SimpleTimeZone;->endTime:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 1611
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 1672
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1674
    iget v3, p0, Ljava/util/SimpleTimeZone;->serialVersionOnStream:I

    if-ge v3, v5, :cond_3

    .line 1678
    iget v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    if-nez v3, :cond_0

    .line 1679
    iput v5, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 1681
    :cond_0
    iget v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    if-nez v3, :cond_1

    .line 1682
    iput v5, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 1687
    :cond_1
    iput v4, p0, Ljava/util/SimpleTimeZone;->endMode:I

    iput v4, p0, Ljava/util/SimpleTimeZone;->startMode:I

    .line 1688
    const v3, 0x36ee80

    iput v3, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    .line 1699
    :goto_0
    iget v3, p0, Ljava/util/SimpleTimeZone;->serialVersionOnStream:I

    if-lt v3, v4, :cond_2

    .line 1700
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 1701
    .local v2, "times":[I
    invoke-direct {p0, v2}, Ljava/util/SimpleTimeZone;->unpackTimes([I)V

    .line 1704
    .end local v2    # "times":[I
    :cond_2
    iput v4, p0, Ljava/util/SimpleTimeZone;->serialVersionOnStream:I

    .line 1670
    return-void

    .line 1693
    :cond_3
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1694
    .local v0, "length":I
    new-array v1, v0, [B

    .line 1695
    .local v1, "rules":[B
    invoke-virtual {p1, v1}, Ljava/io/ObjectInputStream;->readFully([B)V

    .line 1696
    invoke-direct {p0, v1}, Ljava/util/SimpleTimeZone;->unpackRules([B)V

    goto :goto_0
.end method

.method private unpackRules([B)V
    .locals 2
    .param p1, "rules"    # [B

    .prologue
    .line 1591
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 1592
    const/4 v0, 0x1

    aget-byte v0, p1, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 1593
    const/4 v0, 0x2

    aget-byte v0, p1, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 1594
    const/4 v0, 0x3

    aget-byte v0, p1, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 1597
    array-length v0, p1

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 1598
    const/4 v0, 0x4

    aget-byte v0, p1, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    .line 1599
    const/4 v0, 0x5

    aget-byte v0, p1, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    .line 1589
    :cond_0
    return-void
.end method

.method private unpackTimes([I)V
    .locals 1
    .param p1, "times"    # [I

    .prologue
    .line 1619
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 1620
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 1618
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1643
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->packRules()[B

    move-result-object v0

    .line 1644
    .local v0, "rules":[B
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->packTimes()[I

    move-result-object v1

    .line 1647
    .local v1, "times":[I
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->makeRulesCompatible()V

    .line 1650
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1653
    array-length v2, v0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1654
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    .line 1655
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1659
    invoke-direct {p0, v0}, Ljava/util/SimpleTimeZone;->unpackRules([B)V

    .line 1660
    invoke-direct {p0, v1}, Ljava/util/SimpleTimeZone;->unpackTimes([I)V

    .line 1640
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 871
    invoke-super {p0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 893
    if-ne p0, p1, :cond_0

    .line 894
    const/4 v1, 0x1

    return v1

    .line 896
    :cond_0
    instance-of v2, p1, Ljava/util/SimpleTimeZone;

    if-nez v2, :cond_1

    .line 897
    return v1

    :cond_1
    move-object v0, p1

    .line 900
    check-cast v0, Ljava/util/SimpleTimeZone;

    .line 902
    .local v0, "that":Ljava/util/SimpleTimeZone;
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 903
    invoke-virtual {p0, v0}, Ljava/util/SimpleTimeZone;->hasSameRules(Ljava/util/TimeZone;)Z

    move-result v1

    .line 902
    :cond_2
    return v1
.end method

.method public getDSTSavings()I
    .locals 1

    .prologue
    .line 828
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
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "dayOfWeek"    # I
    .param p6, "millis"    # I

    .prologue
    .line 607
    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    if-eqz p1, :cond_0

    .line 608
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

    .line 611
    :cond_0
    move/from16 v5, p2

    .line 612
    .local v5, "y":I
    if-nez p1, :cond_1

    .line 614
    rsub-int/lit8 v5, p2, 0x1

    .line 622
    :cond_1
    const v2, 0x116bd2d2

    if-lt v5, v2, :cond_5

    .line 623
    rem-int/lit16 v2, v5, 0xaf0

    add-int/lit16 v5, v2, 0xaf0

    .line 632
    :cond_2
    :goto_0
    add-int/lit8 v8, p3, 0x1

    .line 635
    .local v8, "m":I
    sget-object v3, Ljava/util/SimpleTimeZone;->gcal:Lsun/util/calendar/Gregorian;

    .line 636
    .local v3, "cal":Lsun/util/calendar/BaseCalendar;
    sget-object v2, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v3, v2}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v4

    check-cast v4, Lsun/util/calendar/BaseCalendar$Date;

    .line 637
    .local v4, "cdate":Lsun/util/calendar/BaseCalendar$Date;
    move/from16 v0, p4

    invoke-virtual {v4, v5, v8, v0}, Lsun/util/calendar/BaseCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 638
    invoke-virtual {v3, v4}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v6

    .line 639
    .local v6, "time":J
    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    sub-int v2, p6, v2

    int-to-long v10, v2

    add-long/2addr v6, v10

    .line 647
    const-wide v10, -0xb1d069b5400L

    cmp-long v2, v6, v10

    if-gez v2, :cond_3

    .line 648
    const-string/jumbo v2, "julian"

    invoke-static {v2}, Lsun/util/calendar/CalendarSystem;->forName(Ljava/lang/String;)Lsun/util/calendar/CalendarSystem;

    move-result-object v3

    .end local v3    # "cal":Lsun/util/calendar/BaseCalendar;
    check-cast v3, Lsun/util/calendar/BaseCalendar;

    .line 649
    .restart local v3    # "cal":Lsun/util/calendar/BaseCalendar;
    sget-object v2, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v3, v2}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v4

    .end local v4    # "cdate":Lsun/util/calendar/BaseCalendar$Date;
    check-cast v4, Lsun/util/calendar/BaseCalendar$Date;

    .line 650
    .restart local v4    # "cdate":Lsun/util/calendar/BaseCalendar$Date;
    move/from16 v0, p4

    invoke-virtual {v4, v5, v8, v0}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedDate(III)Lsun/util/calendar/BaseCalendar$Date;

    .line 651
    invoke-virtual {v3, v4}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v10

    move/from16 v0, p6

    int-to-long v12, v0

    add-long/2addr v10, v12

    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    int-to-long v12, v2

    sub-long v6, v10, v12

    .line 654
    :cond_3
    invoke-virtual {v4}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 655
    invoke-virtual {v4}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v2

    if-eq v2, v8, :cond_6

    .line 662
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 624
    .end local v3    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local v4    # "cdate":Lsun/util/calendar/BaseCalendar$Date;
    .end local v6    # "time":J
    .end local v8    # "m":I
    :cond_5
    const v2, -0x116babfe

    if-gt v5, v2, :cond_2

    .line 628
    int-to-long v10, v5

    const-wide/16 v12, 0x1c

    invoke-static {v10, v11, v12, v13}, Lsun/util/calendar/CalendarUtils;->mod(JJ)J

    move-result-wide v10

    long-to-int v5, v10

    goto :goto_0

    .line 656
    .restart local v3    # "cal":Lsun/util/calendar/BaseCalendar;
    .restart local v4    # "cdate":Lsun/util/calendar/BaseCalendar$Date;
    .restart local v6    # "time":J
    .restart local v8    # "m":I
    :cond_6
    invoke-virtual {v4}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v2

    move/from16 v0, p4

    if-ne v2, v0, :cond_4

    .line 660
    const/4 v2, 0x1

    move/from16 v0, p5

    if-lt v0, v2, :cond_4

    const/4 v2, 0x7

    move/from16 v0, p5

    if-gt v0, v2, :cond_4

    .line 661
    if-ltz p6, :cond_4

    const v2, 0x5265c00

    move/from16 v0, p6

    if-ge v0, v2, :cond_4

    .line 665
    iget-boolean v2, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v2, :cond_7

    iget v2, p0, Ljava/util/SimpleTimeZone;->startYear:I

    move/from16 v0, p2

    if-ge v0, v2, :cond_8

    .line 666
    :cond_7
    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    return v2

    .line 665
    :cond_8
    const/4 v2, 0x1

    if-ne p1, v2, :cond_7

    move-object v2, p0

    .line 669
    invoke-direct/range {v2 .. v7}, Ljava/util/SimpleTimeZone;->getOffset(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;IJ)I

    move-result v2

    return v2
.end method

.method public getOffset(J)I
    .locals 1
    .param p1, "date"    # J

    .prologue
    .line 539
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/SimpleTimeZone;->getOffsets(J[I)I

    move-result v0

    return v0
.end method

.method getOffsets(J[I)I
    .locals 11
    .param p1, "date"    # J
    .param p3, "offsets"    # [I

    .prologue
    const/4 v7, 0x0

    .line 546
    iget v6, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 549
    .local v6, "offset":I
    iget-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v0, :cond_0

    .line 550
    monitor-enter p0

    .line 551
    :try_start_0
    iget-wide v4, p0, Ljava/util/SimpleTimeZone;->cacheStart:J

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-eqz v0, :cond_2

    .line 552
    iget-wide v4, p0, Ljava/util/SimpleTimeZone;->cacheStart:J

    cmp-long v0, p1, v4

    if-ltz v0, :cond_2

    iget-wide v4, p0, Ljava/util/SimpleTimeZone;->cacheEnd:J

    cmp-long v0, p1, v4

    if-gez v0, :cond_2

    .line 553
    iget v0, p0, Ljava/util/SimpleTimeZone;->dstSavings:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v6, v0

    monitor-exit p0

    .line 571
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 572
    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    aput v0, p3, v7

    .line 573
    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    sub-int v0, v6, v0

    const/4 v4, 0x1

    aput v0, p3, v4

    .line 575
    :cond_1
    return v6

    :cond_2
    monitor-exit p0

    .line 558
    const-wide v4, -0xb1d069b5400L

    cmp-long v0, p1, v4

    if-ltz v0, :cond_3

    .line 559
    sget-object v1, Ljava/util/SimpleTimeZone;->gcal:Lsun/util/calendar/Gregorian;

    .line 560
    .local v1, "cal":Lsun/util/calendar/BaseCalendar;
    :goto_1
    sget-object v0, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v1, v0}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v2

    check-cast v2, Lsun/util/calendar/BaseCalendar$Date;

    .line 562
    .local v2, "cdate":Lsun/util/calendar/BaseCalendar$Date;
    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    int-to-long v4, v0

    add-long/2addr v4, p1

    invoke-virtual {v1, v4, v5, v2}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    .line 563
    invoke-virtual {v2}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v3

    .line 564
    .local v3, "year":I
    iget v0, p0, Ljava/util/SimpleTimeZone;->startYear:I

    if-lt v3, v0, :cond_0

    .line 566
    invoke-virtual {v2, v7, v7, v7, v7}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    move-object v0, p0

    move-wide v4, p1

    .line 567
    invoke-direct/range {v0 .. v5}, Ljava/util/SimpleTimeZone;->getOffset(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;IJ)I

    move-result v6

    goto :goto_0

    .line 550
    .end local v1    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local v2    # "cdate":Lsun/util/calendar/BaseCalendar$Date;
    .end local v3    # "year":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 559
    :cond_3
    const-string/jumbo v0, "julian"

    invoke-static {v0}, Lsun/util/calendar/CalendarSystem;->forName(Ljava/lang/String;)Lsun/util/calendar/CalendarSystem;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/BaseCalendar;

    .restart local v1    # "cal":Lsun/util/calendar/BaseCalendar;
    goto :goto_1
.end method

.method public getRawOffset()I
    .locals 1

    .prologue
    .line 785
    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    return v0
.end method

.method public hasSameRules(Ljava/util/TimeZone;)Z
    .locals 5
    .param p1, "other"    # Ljava/util/TimeZone;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 914
    if-ne p0, p1, :cond_0

    .line 915
    return v1

    .line 917
    :cond_0
    instance-of v3, p1, Ljava/util/SimpleTimeZone;

    if-nez v3, :cond_1

    .line 918
    return v2

    :cond_1
    move-object v0, p1

    .line 920
    check-cast v0, Ljava/util/SimpleTimeZone;

    .line 921
    .local v0, "that":Ljava/util/SimpleTimeZone;
    iget v3, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->rawOffset:I

    if-ne v3, v4, :cond_5

    .line 922
    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    iget-boolean v4, v0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-ne v3, v4, :cond_5

    .line 923
    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v3, :cond_2

    .line 925
    iget v3, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->dstSavings:I

    if-ne v3, v4, :cond_4

    .line 926
    iget v3, p0, Ljava/util/SimpleTimeZone;->startMode:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v3, v4, :cond_4

    .line 927
    iget v3, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->startMonth:I

    if-ne v3, v4, :cond_4

    .line 928
    iget v3, p0, Ljava/util/SimpleTimeZone;->startDay:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->startDay:I

    if-ne v3, v4, :cond_4

    .line 929
    iget v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    if-ne v3, v4, :cond_4

    .line 930
    iget v3, p0, Ljava/util/SimpleTimeZone;->startTime:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->startTime:I

    if-ne v3, v4, :cond_4

    .line 931
    iget v3, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    if-ne v3, v4, :cond_4

    .line 932
    iget v3, p0, Ljava/util/SimpleTimeZone;->endMode:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->endMode:I

    if-ne v3, v4, :cond_4

    .line 933
    iget v3, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->endMonth:I

    if-ne v3, v4, :cond_4

    .line 934
    iget v3, p0, Ljava/util/SimpleTimeZone;->endDay:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->endDay:I

    if-ne v3, v4, :cond_4

    .line 935
    iget v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    if-ne v3, v4, :cond_4

    .line 936
    iget v3, p0, Ljava/util/SimpleTimeZone;->endTime:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->endTime:I

    if-ne v3, v4, :cond_4

    .line 937
    iget v3, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    if-ne v3, v4, :cond_4

    .line 938
    iget v3, p0, Ljava/util/SimpleTimeZone;->startYear:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->startYear:I

    if-ne v3, v4, :cond_3

    .line 921
    :cond_2
    :goto_0
    return v1

    :cond_3
    move v1, v2

    .line 938
    goto :goto_0

    :cond_4
    move v1, v2

    .line 925
    goto :goto_0

    :cond_5
    move v1, v2

    .line 921
    goto :goto_0
.end method

.method public declared-synchronized hashCode()I
    .locals 2

    .prologue
    monitor-enter p0

    .line 880
    :try_start_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iget v1, p0, Ljava/util/SimpleTimeZone;->startDay:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/util/SimpleTimeZone;->startTime:I

    xor-int/2addr v0, v1

    .line 881
    iget v1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    .line 880
    xor-int/2addr v0, v1

    .line 881
    iget v1, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 880
    xor-int/2addr v0, v1

    .line 881
    iget v1, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 880
    xor-int/2addr v0, v1

    .line 881
    iget v1, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 880
    xor-int/2addr v0, v1

    .line 881
    iget v1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 880
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
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 862
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

    .prologue
    .line 852
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v0

    return v0
.end method

.method public setDSTSavings(I)V
    .locals 3
    .param p1, "millisSavedDuringDST"    # I

    .prologue
    .line 808
    if-gtz p1, :cond_0

    .line 809
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

    .line 812
    :cond_0
    iput p1, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    .line 807
    return-void
.end method

.method public setEndRule(III)V
    .locals 1
    .param p1, "endMonth"    # I
    .param p2, "endDay"    # I
    .param p3, "endTime"    # I

    .prologue
    .line 495
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Ljava/util/SimpleTimeZone;->setEndRule(IIII)V

    .line 493
    return-void
.end method

.method public setEndRule(IIII)V
    .locals 1
    .param p1, "endMonth"    # I
    .param p2, "endDay"    # I
    .param p3, "endDayOfWeek"    # I
    .param p4, "endTime"    # I

    .prologue
    .line 468
    iput p1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    .line 469
    iput p2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 470
    iput p3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 471
    iput p4, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 472
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    .line 473
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->decodeEndRule()V

    .line 474
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->invalidateCache()V

    .line 466
    return-void
.end method

.method public setEndRule(IIIIZ)V
    .locals 2
    .param p1, "endMonth"    # I
    .param p2, "endDay"    # I
    .param p3, "endDayOfWeek"    # I
    .param p4, "endTime"    # I
    .param p5, "after"    # Z

    .prologue
    .line 520
    if-eqz p5, :cond_0

    .line 521
    neg-int v0, p3

    invoke-virtual {p0, p1, p2, v0, p4}, Ljava/util/SimpleTimeZone;->setEndRule(IIII)V

    .line 518
    :goto_0
    return-void

    .line 523
    :cond_0
    neg-int v0, p2

    neg-int v1, p3

    invoke-virtual {p0, p1, v0, v1, p4}, Ljava/util/SimpleTimeZone;->setEndRule(IIII)V

    goto :goto_0
.end method

.method public setRawOffset(I)V
    .locals 0
    .param p1, "offsetMillis"    # I

    .prologue
    .line 795
    iput p1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 793
    return-void
.end method

.method public setStartRule(III)V
    .locals 1
    .param p1, "startMonth"    # I
    .param p2, "startDay"    # I
    .param p3, "startTime"    # I

    .prologue
    .line 413
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Ljava/util/SimpleTimeZone;->setStartRule(IIII)V

    .line 412
    return-void
.end method

.method public setStartRule(IIII)V
    .locals 1
    .param p1, "startMonth"    # I
    .param p2, "startDay"    # I
    .param p3, "startDayOfWeek"    # I
    .param p4, "startTime"    # I

    .prologue
    .line 387
    iput p1, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    .line 388
    iput p2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 389
    iput p3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 390
    iput p4, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 391
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    .line 392
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->decodeStartRule()V

    .line 393
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->invalidateCache()V

    .line 385
    return-void
.end method

.method public setStartRule(IIIIZ)V
    .locals 2
    .param p1, "startMonth"    # I
    .param p2, "startDay"    # I
    .param p3, "startDayOfWeek"    # I
    .param p4, "startTime"    # I
    .param p5, "after"    # Z

    .prologue
    .line 439
    if-eqz p5, :cond_0

    .line 440
    neg-int v0, p3

    invoke-virtual {p0, p1, p2, v0, p4}, Ljava/util/SimpleTimeZone;->setStartRule(IIII)V

    .line 436
    :goto_0
    return-void

    .line 442
    :cond_0
    neg-int v0, p2

    neg-int v1, p3

    invoke-virtual {p0, p1, v0, v1, p4}, Ljava/util/SimpleTimeZone;->setStartRule(IIII)V

    goto :goto_0
.end method

.method public setStartYear(I)V
    .locals 0
    .param p1, "year"    # I

    .prologue
    .line 363
    iput p1, p0, Ljava/util/SimpleTimeZone;->startYear:I

    .line 364
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->invalidateCache()V

    .line 361
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 947
    const-string/jumbo v1, "[id="

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 947
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 948
    const-string/jumbo v1, ",offset="

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 948
    iget v1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 949
    const-string/jumbo v1, ",dstSavings="

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 949
    iget v1, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 950
    const-string/jumbo v1, ",useDaylight="

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 950
    iget-boolean v1, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 951
    const-string/jumbo v1, ",startYear="

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 951
    iget v1, p0, Ljava/util/SimpleTimeZone;->startYear:I

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 952
    const-string/jumbo v1, ",startMode="

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 952
    iget v1, p0, Ljava/util/SimpleTimeZone;->startMode:I

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 953
    const-string/jumbo v1, ",startMonth="

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 953
    iget v1, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 954
    const-string/jumbo v1, ",startDay="

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 954
    iget v1, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 955
    const-string/jumbo v1, ",startDayOfWeek="

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 955
    iget v1, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 956
    const-string/jumbo v1, ",startTime="

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 956
    iget v1, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 957
    const-string/jumbo v1, ",startTimeMode="

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 957
    iget v1, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 958
    const-string/jumbo v1, ",endMode="

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 958
    iget v1, p0, Ljava/util/SimpleTimeZone;->endMode:I

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 959
    const-string/jumbo v1, ",endMonth="

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 959
    iget v1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 960
    const-string/jumbo v1, ",endDay="

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 960
    iget v1, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 961
    const-string/jumbo v1, ",endDayOfWeek="

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 961
    iget v1, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 962
    const-string/jumbo v1, ",endTime="

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 962
    iget v1, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 963
    const-string/jumbo v1, ",endTimeMode="

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 963
    iget v1, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 963
    const/16 v1, 0x5d

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useDaylightTime()Z
    .locals 1

    .prologue
    .line 838
    iget-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    return v0
.end method
