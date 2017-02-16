.class public abstract Lsun/util/calendar/BaseCalendar;
.super Lsun/util/calendar/AbstractCalendar;
.source "BaseCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/calendar/BaseCalendar$Date;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final ACCUMULATED_DAYS_IN_MONTH:[I

.field static final ACCUMULATED_DAYS_IN_MONTH_LEAP:[I

.field public static final APRIL:I = 0x4

.field public static final AUGUST:I = 0x8

.field private static final BASE_YEAR:I = 0x7b2

.field static final DAYS_IN_MONTH:[I

.field public static final DECEMBER:I = 0xc

.field public static final FEBRUARY:I = 0x2

.field private static final FIXED_DATES:[I

.field public static final FRIDAY:I = 0x6

.field public static final JANUARY:I = 0x1

.field public static final JULY:I = 0x7

.field public static final JUNE:I = 0x6

.field public static final MARCH:I = 0x3

.field public static final MAY:I = 0x5

.field public static final MONDAY:I = 0x2

.field public static final NOVEMBER:I = 0xb

.field public static final OCTOBER:I = 0xa

.field public static final SATURDAY:I = 0x7

.field public static final SEPTEMBER:I = 0x9

.field public static final SUNDAY:I = 0x1

.field public static final THURSDAY:I = 0x5

.field public static final TUESDAY:I = 0x3

.field public static final WEDNESDAY:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xd

    const-class v0, Lsun/util/calendar/BaseCalendar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/util/calendar/BaseCalendar;->-assertionsDisabled:Z

    .line 71
    const/16 v0, 0x46

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lsun/util/calendar/BaseCalendar;->FIXED_DATES:[I

    .line 313
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    .line 311
    sput-object v0, Lsun/util/calendar/BaseCalendar;->DAYS_IN_MONTH:[I

    .line 316
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    .line 314
    sput-object v0, Lsun/util/calendar/BaseCalendar;->ACCUMULATED_DAYS_IN_MONTH:[I

    .line 320
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    .line 318
    sput-object v0, Lsun/util/calendar/BaseCalendar;->ACCUMULATED_DAYS_IN_MONTH_LEAP:[I

    .line 40
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 71
    :array_0
    .array-data 4
        0xaf93b
        0xafaa8
        0xafc15
        0xafd83
        0xafef0
        0xb005d
        0xb01ca
        0xb0338
        0xb04a5
        0xb0612
        0xb077f
        0xb08ed
        0xb0a5a
        0xb0bc7
        0xb0d34
        0xb0ea2
        0xb100f
        0xb117c
        0xb12e9
        0xb1457
        0xb15c4
        0xb1731
        0xb189e
        0xb1a0c
        0xb1b79
        0xb1ce6
        0xb1e53
        0xb1fc1
        0xb212e
        0xb229b
        0xb2408
        0xb2576
        0xb26e3
        0xb2850
        0xb29bd
        0xb2b2b
        0xb2c98
        0xb2e05
        0xb2f72
        0xb30e0
        0xb324d
        0xb33ba
        0xb3527
        0xb3695
        0xb3802
        0xb396f
        0xb3adc
        0xb3c4a
        0xb3db7
        0xb3f24
        0xb4091
        0xb41ff
        0xb436c
        0xb44d9
        0xb4646
        0xb47b4
        0xb4921
        0xb4a8e
        0xb4bfb
        0xb4d69
        0xb4ed6
        0xb5043
        0xb51b0
        0xb531e    # 1.040007E-39f
        0xb548b
        0xb55f8
        0xb5765
        0xb58d3
        0xb5a40
        0xb5bad
    .end array-data

    .line 313
    :array_1
    .array-data 4
        0x1f
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

    .line 316
    :array_2
    .array-data 4
        -0x1e
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb5
        0xd4
        0xf3
        0x111
        0x130
        0x14e
    .end array-data

    .line 320
    :array_3
    .array-data 4
        -0x1e
        0x0
        0x1f
        0x3c
        0x5b
        0x79
        0x98
        0xb6
        0xd5
        0xf4
        0x112
        0x131
        0x14f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lsun/util/calendar/AbstractCalendar;-><init>()V

    return-void
.end method

.method public static final getDayOfWeekFromFixedDate(J)I
    .locals 4
    .param p0, "fixedDate"    # J

    .prologue
    const-wide/16 v2, 0x7

    .line 479
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 480
    rem-long v0, p0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 482
    :cond_0
    invoke-static {p0, p1, v2, v3}, Lsun/util/calendar/CalendarUtils;->mod(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private final getMonthLength(II)I
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    .line 333
    sget-object v1, Lsun/util/calendar/BaseCalendar;->DAYS_IN_MONTH:[I

    aget v0, v1, p2

    .line 334
    .local v0, "days":I
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    add-int/lit8 v0, v0, 0x1

    .line 337
    :cond_0
    return v0
.end method


# virtual methods
.method public getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V
    .locals 24
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;
    .param p2, "fixedDate"    # J

    .prologue
    move-object/from16 v8, p1

    .line 421
    check-cast v8, Lsun/util/calendar/BaseCalendar$Date;

    .line 425
    .local v8, "gdate":Lsun/util/calendar/BaseCalendar$Date;
    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Lsun/util/calendar/BaseCalendar$Date;->hit(J)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 426
    invoke-virtual {v8}, Lsun/util/calendar/BaseCalendar$Date;->getCachedYear()I

    move-result v18

    .line 427
    .local v18, "year":I
    invoke-virtual {v8}, Lsun/util/calendar/BaseCalendar$Date;->getCachedJan1()J

    move-result-wide v10

    .line 428
    .local v10, "jan1":J
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    move-result v9

    .line 440
    .local v9, "isLeap":Z
    :goto_0
    sub-long v20, p2, v10

    move-wide/from16 v0, v20

    long-to-int v15, v0

    .line 441
    .local v15, "priorDays":I
    const-wide/16 v20, 0x1f

    add-long v20, v20, v10

    const-wide/16 v22, 0x1c

    add-long v12, v20, v22

    .line 442
    .local v12, "mar1":J
    if-eqz v9, :cond_0

    .line 443
    const-wide/16 v20, 0x1

    add-long v12, v12, v20

    .line 445
    :cond_0
    cmp-long v19, p2, v12

    if-ltz v19, :cond_1

    .line 446
    if-eqz v9, :cond_5

    const/16 v19, 0x1

    :goto_1
    add-int v15, v15, v19

    .line 448
    :cond_1
    mul-int/lit8 v19, v15, 0xc

    move/from16 v0, v19

    add-int/lit16 v14, v0, 0x175

    .line 449
    .local v14, "month":I
    if-lez v14, :cond_6

    .line 450
    div-int/lit16 v14, v14, 0x16f

    .line 454
    :goto_2
    sget-object v19, Lsun/util/calendar/BaseCalendar;->ACCUMULATED_DAYS_IN_MONTH:[I

    aget v19, v19, v14

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v16, v10, v20

    .line 455
    .local v16, "month1":J
    if-eqz v9, :cond_2

    const/16 v19, 0x3

    move/from16 v0, v19

    if-lt v14, v0, :cond_2

    .line 456
    const-wide/16 v20, 0x1

    add-long v16, v16, v20

    .line 458
    :cond_2
    sub-long v20, p2, v16

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    add-int/lit8 v6, v19, 0x1

    .line 459
    .local v6, "dayOfMonth":I
    invoke-static/range {p2 .. p3}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekFromFixedDate(J)I

    move-result v7

    .line 460
    .local v7, "dayOfWeek":I
    sget-boolean v19, Lsun/util/calendar/BaseCalendar;->-assertionsDisabled:Z

    if-nez v19, :cond_8

    if-lez v7, :cond_7

    const/16 v19, 0x1

    :goto_3
    if-nez v19, :cond_8

    new-instance v19, Ljava/lang/AssertionError;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "negative day of week "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v19

    .line 433
    .end local v6    # "dayOfMonth":I
    .end local v7    # "dayOfWeek":I
    .end local v9    # "isLeap":Z
    .end local v10    # "jan1":J
    .end local v12    # "mar1":J
    .end local v14    # "month":I
    .end local v15    # "priorDays":I
    .end local v16    # "month1":J
    .end local v18    # "year":I
    :cond_3
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lsun/util/calendar/BaseCalendar;->getGregorianYearFromFixedDate(J)I

    move-result v18

    .line 434
    .restart local v18    # "year":I
    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v10

    .line 435
    .restart local v10    # "jan1":J
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    move-result v9

    .line 437
    .restart local v9    # "isLeap":Z
    if-eqz v9, :cond_4

    const/16 v19, 0x16e

    :goto_4
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v10, v11, v1}, Lsun/util/calendar/BaseCalendar$Date;->setCache(IJI)V

    goto/16 :goto_0

    :cond_4
    const/16 v19, 0x16d

    goto :goto_4

    .line 446
    .restart local v12    # "mar1":J
    .restart local v15    # "priorDays":I
    :cond_5
    const/16 v19, 0x2

    goto/16 :goto_1

    .line 452
    .restart local v14    # "month":I
    :cond_6
    const/16 v19, 0x16f

    move/from16 v0, v19

    invoke-static {v14, v0}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v14

    goto/16 :goto_2

    .line 460
    .restart local v6    # "dayOfMonth":I
    .restart local v7    # "dayOfWeek":I
    .restart local v16    # "month1":J
    :cond_7
    const/16 v19, 0x0

    goto :goto_3

    .line 461
    :cond_8
    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    .line 462
    invoke-virtual {v8, v14}, Lsun/util/calendar/BaseCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    .line 463
    invoke-virtual {v8, v6}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 464
    invoke-virtual {v8, v7}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfWeek(I)V

    .line 465
    invoke-virtual {v8, v9}, Lsun/util/calendar/BaseCalendar$Date;->setLeapYear(Z)V

    .line 466
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Lsun/util/calendar/BaseCalendar$Date;->setNormalized(Z)V

    .line 420
    return-void
.end method

.method public getDayOfWeek(Lsun/util/calendar/CalendarDate;)I
    .locals 3
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    .line 473
    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v0

    .line 474
    .local v0, "fixedDate":J
    invoke-static {v0, v1}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekFromFixedDate(J)I

    move-result v2

    return v2
.end method

.method final getDayOfYear(III)J
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 347
    int-to-long v2, p3

    .line 348
    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    sget-object v0, Lsun/util/calendar/BaseCalendar;->ACCUMULATED_DAYS_IN_MONTH_LEAP:[I

    aget v0, v0, p2

    .line 348
    :goto_0
    int-to-long v0, v0

    .line 347
    add-long/2addr v0, v2

    return-wide v0

    .line 349
    :cond_0
    sget-object v0, Lsun/util/calendar/BaseCalendar;->ACCUMULATED_DAYS_IN_MONTH:[I

    aget v0, v0, p2

    goto :goto_0
.end method

.method public getDayOfYear(Lsun/util/calendar/CalendarDate;)J
    .locals 3
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    move-object v0, p1

    .line 341
    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v0

    .line 342
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v1

    .line 343
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v2

    .line 341
    invoke-virtual {p0, v0, v1, v2}, Lsun/util/calendar/BaseCalendar;->getDayOfYear(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J
    .locals 14
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "cache"    # Lsun/util/calendar/BaseCalendar$Date;

    .prologue
    .line 365
    const/4 v10, 0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_0

    const/4 v10, 0x1

    move/from16 v0, p3

    if-ne v0, v10, :cond_0

    const/4 v4, 0x1

    .line 368
    .local v4, "isJan1":Z
    :goto_0
    if-eqz p4, :cond_2

    move-object/from16 v0, p4

    invoke-virtual {v0, p1}, Lsun/util/calendar/BaseCalendar$Date;->hit(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 369
    if-eqz v4, :cond_1

    .line 370
    invoke-virtual/range {p4 .. p4}, Lsun/util/calendar/BaseCalendar$Date;->getCachedJan1()J

    move-result-wide v10

    return-wide v10

    .line 365
    .end local v4    # "isJan1":Z
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "isJan1":Z
    goto :goto_0

    .line 372
    :cond_1
    invoke-virtual/range {p4 .. p4}, Lsun/util/calendar/BaseCalendar$Date;->getCachedJan1()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p3}, Lsun/util/calendar/BaseCalendar;->getDayOfYear(III)J

    move-result-wide v12

    add-long/2addr v10, v12

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    return-wide v10

    .line 376
    :cond_2
    add-int/lit16 v5, p1, -0x7b2

    .line 377
    .local v5, "n":I
    if-ltz v5, :cond_6

    sget-object v10, Lsun/util/calendar/BaseCalendar;->FIXED_DATES:[I

    array-length v10, v10

    if-ge v5, v10, :cond_6

    .line 378
    sget-object v10, Lsun/util/calendar/BaseCalendar;->FIXED_DATES:[I

    aget v10, v10, v5

    int-to-long v6, v10

    .line 379
    .local v6, "jan1":J
    if-eqz p4, :cond_3

    .line 380
    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x16e

    :goto_1
    move-object/from16 v0, p4

    invoke-virtual {v0, p1, v6, v7, v10}, Lsun/util/calendar/BaseCalendar$Date;->setCache(IJI)V

    .line 382
    :cond_3
    if-eqz v4, :cond_5

    .end local v6    # "jan1":J
    :goto_2
    return-wide v6

    .line 380
    .restart local v6    # "jan1":J
    :cond_4
    const/16 v10, 0x16d

    goto :goto_1

    .line 382
    :cond_5
    invoke-virtual/range {p0 .. p3}, Lsun/util/calendar/BaseCalendar;->getDayOfYear(III)J

    move-result-wide v10

    add-long/2addr v10, v6

    const-wide/16 v12, 0x1

    sub-long v6, v10, v12

    goto :goto_2

    .line 385
    .end local v6    # "jan1":J
    :cond_6
    int-to-long v10, p1

    const-wide/16 v12, 0x1

    sub-long v8, v10, v12

    .line 386
    .local v8, "prevyear":J
    move/from16 v0, p3

    int-to-long v2, v0

    .line 388
    .local v2, "days":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-ltz v10, :cond_9

    .line 389
    const-wide/16 v10, 0x16d

    mul-long/2addr v10, v8

    .line 390
    const-wide/16 v12, 0x4

    div-long v12, v8, v12

    .line 389
    add-long/2addr v10, v12

    .line 391
    const-wide/16 v12, 0x64

    div-long v12, v8, v12

    .line 389
    sub-long/2addr v10, v12

    .line 392
    const-wide/16 v12, 0x190

    div-long v12, v8, v12

    .line 389
    add-long/2addr v10, v12

    .line 393
    move/from16 v0, p2

    mul-int/lit16 v12, v0, 0x16f

    add-int/lit16 v12, v12, -0x16a

    div-int/lit8 v12, v12, 0xc

    int-to-long v12, v12

    .line 389
    add-long/2addr v10, v12

    add-long/2addr v2, v10

    .line 402
    :goto_3
    const/4 v10, 0x2

    move/from16 v0, p2

    if-le v0, v10, :cond_7

    .line 403
    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v10, 0x1

    :goto_4
    int-to-long v10, v10

    sub-long/2addr v2, v10

    .line 407
    :cond_7
    if-eqz p4, :cond_8

    if-eqz v4, :cond_8

    .line 408
    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    move-result v10

    if-eqz v10, :cond_b

    const/16 v10, 0x16e

    :goto_5
    move-object/from16 v0, p4

    invoke-virtual {v0, p1, v2, v3, v10}, Lsun/util/calendar/BaseCalendar$Date;->setCache(IJI)V

    .line 411
    :cond_8
    return-wide v2

    .line 395
    :cond_9
    const-wide/16 v10, 0x16d

    mul-long/2addr v10, v8

    .line 396
    const-wide/16 v12, 0x4

    invoke-static {v8, v9, v12, v13}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v12

    .line 395
    add-long/2addr v10, v12

    .line 397
    const-wide/16 v12, 0x64

    invoke-static {v8, v9, v12, v13}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v12

    .line 395
    sub-long/2addr v10, v12

    .line 398
    const-wide/16 v12, 0x190

    invoke-static {v8, v9, v12, v13}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v12

    .line 395
    add-long/2addr v10, v12

    .line 399
    move/from16 v0, p2

    mul-int/lit16 v12, v0, 0x16f

    add-int/lit16 v12, v12, -0x16a

    const/16 v13, 0xc

    invoke-static {v12, v13}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v12

    int-to-long v12, v12

    .line 395
    add-long/2addr v10, v12

    add-long/2addr v2, v10

    goto :goto_3

    .line 403
    :cond_a
    const/4 v10, 0x2

    goto :goto_4

    .line 408
    :cond_b
    const/16 v10, 0x16d

    goto :goto_5
.end method

.method public getFixedDate(Lsun/util/calendar/CalendarDate;)J
    .locals 3
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    .line 354
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar;->normalizeMonth(Lsun/util/calendar/CalendarDate;)V

    :cond_0
    move-object v0, p1

    .line 357
    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v0

    .line 358
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v1

    .line 359
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v2

    .line 360
    check-cast p1, Lsun/util/calendar/BaseCalendar$Date;

    .line 357
    .end local p1    # "date":Lsun/util/calendar/CalendarDate;
    invoke-virtual {p0, v0, v1, v2, p1}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method final getGregorianYearFromFixedDate(J)I
    .locals 15
    .param p1, "fixedDate"    # J

    .prologue
    .line 498
    const-wide/16 v12, 0x0

    cmp-long v11, p1, v12

    if-lez v11, :cond_1

    .line 499
    const-wide/16 v12, 0x1

    sub-long v0, p1, v12

    .line 500
    .local v0, "d0":J
    const-wide/32 v12, 0x23ab1

    div-long v12, v0, v12

    long-to-int v9, v12

    .line 501
    .local v9, "n400":I
    const-wide/32 v12, 0x23ab1

    rem-long v12, v0, v12

    long-to-int v2, v12

    .line 502
    .local v2, "d1":I
    const v11, 0x8eac

    div-int v7, v2, v11

    .line 503
    .local v7, "n100":I
    const v11, 0x8eac

    rem-int v3, v2, v11

    .line 504
    .local v3, "d2":I
    div-int/lit16 v8, v3, 0x5b5

    .line 505
    .local v8, "n4":I
    rem-int/lit16 v4, v3, 0x5b5

    .line 506
    .local v4, "d3":I
    div-int/lit16 v6, v4, 0x16d

    .line 507
    .local v6, "n1":I
    rem-int/lit16 v11, v4, 0x16d

    add-int/lit8 v5, v11, 0x1

    .line 519
    .local v5, "d4":I
    :goto_0
    mul-int/lit16 v11, v9, 0x190

    mul-int/lit8 v12, v7, 0x64

    add-int/2addr v11, v12

    mul-int/lit8 v12, v8, 0x4

    add-int/2addr v11, v12

    add-int v10, v11, v6

    .line 520
    .local v10, "year":I
    const/4 v11, 0x4

    if-eq v7, v11, :cond_0

    const/4 v11, 0x4

    if-eq v6, v11, :cond_0

    .line 521
    add-int/lit8 v10, v10, 0x1

    .line 523
    :cond_0
    return v10

    .line 509
    .end local v0    # "d0":J
    .end local v2    # "d1":I
    .end local v3    # "d2":I
    .end local v4    # "d3":I
    .end local v5    # "d4":I
    .end local v6    # "n1":I
    .end local v7    # "n100":I
    .end local v8    # "n4":I
    .end local v9    # "n400":I
    .end local v10    # "year":I
    :cond_1
    const-wide/16 v12, 0x1

    sub-long v0, p1, v12

    .line 510
    .restart local v0    # "d0":J
    const-wide/32 v12, 0x23ab1

    invoke-static {v0, v1, v12, v13}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v12

    long-to-int v9, v12

    .line 511
    .restart local v9    # "n400":I
    const-wide/32 v12, 0x23ab1

    invoke-static {v0, v1, v12, v13}, Lsun/util/calendar/CalendarUtils;->mod(JJ)J

    move-result-wide v12

    long-to-int v2, v12

    .line 512
    .restart local v2    # "d1":I
    const v11, 0x8eac

    invoke-static {v2, v11}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v7

    .line 513
    .restart local v7    # "n100":I
    const v11, 0x8eac

    invoke-static {v2, v11}, Lsun/util/calendar/CalendarUtils;->mod(II)I

    move-result v3

    .line 514
    .restart local v3    # "d2":I
    const/16 v11, 0x5b5

    invoke-static {v3, v11}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v8

    .line 515
    .restart local v8    # "n4":I
    const/16 v11, 0x5b5

    invoke-static {v3, v11}, Lsun/util/calendar/CalendarUtils;->mod(II)I

    move-result v4

    .line 516
    .restart local v4    # "d3":I
    const/16 v11, 0x16d

    invoke-static {v4, v11}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v6

    .line 517
    .restart local v6    # "n1":I
    const/16 v11, 0x16d

    invoke-static {v4, v11}, Lsun/util/calendar/CalendarUtils;->mod(II)I

    move-result v11

    add-int/lit8 v5, v11, 0x1

    .restart local v5    # "d4":I
    goto :goto_0
.end method

.method public getMonthLength(Lsun/util/calendar/CalendarDate;)I
    .locals 5
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    move-object v0, p1

    .line 323
    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    .line 324
    .local v0, "gdate":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v1

    .line 325
    .local v1, "month":I
    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const/16 v2, 0xc

    if-le v1, v2, :cond_1

    .line 326
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Illegal month value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 328
    :cond_1
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lsun/util/calendar/BaseCalendar;->getMonthLength(II)I

    move-result v2

    return v2
.end method

.method public getYearFromFixedDate(J)I
    .locals 1
    .param p1, "fixedDate"    # J

    .prologue
    .line 486
    invoke-virtual {p0, p1, p2}, Lsun/util/calendar/BaseCalendar;->getGregorianYearFromFixedDate(J)I

    move-result v0

    return v0
.end method

.method public getYearLength(Lsun/util/calendar/CalendarDate;)I
    .locals 1
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    .line 304
    check-cast p1, Lsun/util/calendar/BaseCalendar$Date;

    .end local p1    # "date":Lsun/util/calendar/CalendarDate;
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v0

    invoke-virtual {p0, v0}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x16d

    goto :goto_0
.end method

.method public getYearLengthInMonths(Lsun/util/calendar/CalendarDate;)I
    .locals 1
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    .line 308
    const/16 v0, 0xc

    return v0
.end method

.method isLeapYear(I)Z
    .locals 1
    .param p1, "normalizedYear"    # I

    .prologue
    .line 536
    invoke-static {p1}, Lsun/util/calendar/CalendarUtils;->isGregorianLeapYear(I)Z

    move-result v0

    return v0
.end method

.method protected isLeapYear(Lsun/util/calendar/CalendarDate;)Z
    .locals 1
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    .line 532
    check-cast p1, Lsun/util/calendar/BaseCalendar$Date;

    .end local p1    # "date":Lsun/util/calendar/CalendarDate;
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v0

    invoke-virtual {p0, v0}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    move-result v0

    return v0
.end method

.method public normalize(Lsun/util/calendar/CalendarDate;)Z
    .locals 14
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    .line 219
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 220
    const/4 v10, 0x1

    return v10

    :cond_0
    move-object v0, p1

    .line 223
    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    .line 224
    .local v0, "bdate":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getZone()Ljava/util/TimeZone;

    move-result-object v9

    .line 228
    .local v9, "zi":Ljava/util/TimeZone;
    if-eqz v9, :cond_1

    .line 229
    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    .line 230
    const/4 v10, 0x1

    return v10

    .line 233
    :cond_1
    invoke-virtual {p0, v0}, Lsun/util/calendar/BaseCalendar;->normalizeTime(Lsun/util/calendar/CalendarDate;)I

    move-result v1

    .line 234
    .local v1, "days":I
    invoke-virtual {p0, v0}, Lsun/util/calendar/BaseCalendar;->normalizeMonth(Lsun/util/calendar/CalendarDate;)V

    .line 235
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v10

    int-to-long v10, v10

    int-to-long v12, v1

    add-long v2, v10, v12

    .line 236
    .local v2, "d":J
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v6

    .line 237
    .local v6, "m":I
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v8

    .line 238
    .local v8, "y":I
    invoke-direct {p0, v8, v6}, Lsun/util/calendar/BaseCalendar;->getMonthLength(II)I

    move-result v7

    .line 240
    .local v7, "ml":I
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-lez v10, :cond_2

    int-to-long v10, v7

    cmp-long v10, v2, v10

    if-lez v10, :cond_7

    .line 241
    :cond_2
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-gtz v10, :cond_4

    const-wide/16 v10, -0x1c

    cmp-long v10, v2, v10

    if-lez v10, :cond_4

    .line 242
    add-int/lit8 v6, v6, -0x1

    invoke-direct {p0, v8, v6}, Lsun/util/calendar/BaseCalendar;->getMonthLength(II)I

    move-result v7

    .line 243
    int-to-long v10, v7

    add-long/2addr v2, v10

    .line 244
    long-to-int v10, v2

    invoke-virtual {v0, v10}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 245
    if-nez v6, :cond_3

    .line 246
    const/16 v6, 0xc

    .line 247
    add-int/lit8 v10, v8, -0x1

    invoke-virtual {v0, v10}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    .line 249
    :cond_3
    invoke-virtual {v0, v6}, Lsun/util/calendar/BaseCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    .line 266
    :goto_0
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v10

    invoke-virtual {p0, v10}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    move-result v10

    invoke-virtual {p1, v10}, Lsun/util/calendar/CalendarDate;->setLeapYear(Z)V

    .line 267
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lsun/util/calendar/CalendarDate;->setZoneOffset(I)V

    .line 268
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lsun/util/calendar/CalendarDate;->setDaylightSaving(I)V

    .line 269
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lsun/util/calendar/BaseCalendar$Date;->setNormalized(Z)V

    .line 270
    const/4 v10, 0x1

    return v10

    .line 250
    :cond_4
    int-to-long v10, v7

    cmp-long v10, v2, v10

    if-lez v10, :cond_6

    add-int/lit8 v10, v7, 0x1c

    int-to-long v10, v10

    cmp-long v10, v2, v10

    if-gez v10, :cond_6

    .line 251
    int-to-long v10, v7

    sub-long/2addr v2, v10

    .line 252
    add-int/lit8 v6, v6, 0x1

    .line 253
    long-to-int v10, v2

    invoke-virtual {v0, v10}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 254
    const/16 v10, 0xc

    if-le v6, v10, :cond_5

    .line 255
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v0, v10}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    .line 256
    const/4 v6, 0x1

    .line 258
    :cond_5
    invoke-virtual {v0, v6}, Lsun/util/calendar/BaseCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    goto :goto_0

    .line 260
    :cond_6
    const/4 v10, 0x1

    invoke-virtual {p0, v8, v6, v10, v0}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v10

    add-long/2addr v10, v2

    const-wide/16 v12, 0x1

    sub-long v4, v10, v12

    .line 261
    .local v4, "fixedDate":J
    invoke-virtual {p0, v0, v4, v5}, Lsun/util/calendar/BaseCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    goto :goto_0

    .line 264
    .end local v4    # "fixedDate":J
    :cond_7
    invoke-virtual {p0, v0}, Lsun/util/calendar/BaseCalendar;->getDayOfWeek(Lsun/util/calendar/CalendarDate;)I

    move-result v10

    invoke-virtual {v0, v10}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfWeek(I)V

    goto :goto_0
.end method

.method normalizeMonth(Lsun/util/calendar/CalendarDate;)V
    .locals 12
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    const-wide/16 v10, 0xc

    const-wide/16 v8, 0x1

    move-object v0, p1

    .line 274
    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    .line 275
    .local v0, "bdate":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v1

    .line 276
    .local v1, "year":I
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v6

    int-to-long v2, v6

    .line 277
    .local v2, "month":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_1

    .line 278
    sub-long v4, v8, v2

    .line 279
    .local v4, "xm":J
    div-long v6, v4, v10

    add-long/2addr v6, v8

    long-to-int v6, v6

    sub-int/2addr v1, v6

    .line 280
    rem-long v6, v4, v10

    const-wide/16 v8, 0xd

    sub-long v2, v8, v6

    .line 281
    invoke-virtual {v0, v1}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    .line 282
    long-to-int v6, v2

    invoke-virtual {v0, v6}, Lsun/util/calendar/BaseCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    .line 273
    .end local v4    # "xm":J
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    cmp-long v6, v2, v10

    if-lez v6, :cond_0

    .line 284
    sub-long v6, v2, v8

    div-long/2addr v6, v10

    long-to-int v6, v6

    add-int/2addr v1, v6

    .line 285
    sub-long v6, v2, v8

    rem-long/2addr v6, v10

    add-long v2, v6, v8

    .line 286
    invoke-virtual {v0, v1}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    .line 287
    long-to-int v6, v2

    invoke-virtual {v0, v6}, Lsun/util/calendar/BaseCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    goto :goto_0
.end method

.method public validate(Lsun/util/calendar/CalendarDate;)Z
    .locals 7
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    .line 193
    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    .line 194
    .local v0, "bdate":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->isNormalized()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    return v6

    .line 197
    :cond_0
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v3

    .line 198
    .local v3, "month":I
    if-lt v3, v6, :cond_1

    const/16 v4, 0xc

    if-le v3, v4, :cond_2

    .line 199
    :cond_1
    return v5

    .line 201
    :cond_2
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v1

    .line 202
    .local v1, "d":I
    if-lez v1, :cond_3

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v4

    invoke-direct {p0, v4, v3}, Lsun/util/calendar/BaseCalendar;->getMonthLength(II)I

    move-result v4

    if-le v1, v4, :cond_4

    .line 203
    :cond_3
    return v5

    .line 205
    :cond_4
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    move-result v2

    .line 206
    .local v2, "dow":I
    const/high16 v4, -0x80000000

    if-eq v2, v4, :cond_5

    invoke-virtual {p0, v0}, Lsun/util/calendar/BaseCalendar;->getDayOfWeek(Lsun/util/calendar/CalendarDate;)I

    move-result v4

    if-eq v2, v4, :cond_5

    .line 207
    return v5

    .line 210
    :cond_5
    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar;->validateTime(Lsun/util/calendar/CalendarDate;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 211
    return v5

    .line 214
    :cond_6
    invoke-virtual {v0, v6}, Lsun/util/calendar/BaseCalendar$Date;->setNormalized(Z)V

    .line 215
    return v6
.end method
