.class public Landroid/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field private static final DBG:Z = false

.field public static final HUNDRED_DAY_FIELD_LEN:I = 0x13

.field public static final NANOS_PER_MS:J = 0xf4240L

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "TimeUtils"

.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;

.field private static sLastCountry:Ljava/lang/String;

.field private static final sLastLockObj:Ljava/lang/Object;

.field private static sLastUniqueCountry:Ljava/lang/String;

.field private static final sLastUniqueLockObj:Ljava/lang/Object;

.field private static sLastUniqueZoneOffsets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/TimeZone;",
            ">;"
        }
    .end annotation
.end field

.field private static sLastZones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/TimeZone;",
            ">;"
        }
    .end annotation
.end field

.field private static sLoggingFormat:Ljava/text/SimpleDateFormat;

.field private static sTmpFormatStr:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x1d

    const/4 v1, 0x0

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/TimeUtils;->sLastLockObj:Ljava/lang/Object;

    .line 50
    sput-object v1, Landroid/util/TimeUtils;->sLastZones:Ljava/util/ArrayList;

    .line 51
    sput-object v1, Landroid/util/TimeUtils;->sLastCountry:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/TimeUtils;->sLastUniqueLockObj:Ljava/lang/Object;

    .line 55
    sput-object v1, Landroid/util/TimeUtils;->sLastUniqueZoneOffsets:Ljava/util/ArrayList;

    .line 56
    sput-object v1, Landroid/util/TimeUtils;->sLastUniqueCountry:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/util/TimeUtils;->sLoggingFormat:Ljava/text/SimpleDateFormat;

    .line 251
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    .line 252
    new-array v0, v2, [C

    sput-object v0, Landroid/util/TimeUtils;->sFormatStr:[C

    .line 253
    new-array v0, v2, [C

    sput-object v0, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accumField(IIZI)I
    .locals 5
    .param p0, "amt"    # I
    .param p1, "suffix"    # I
    .param p2, "always"    # Z
    .param p3, "zeropad"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 256
    const/16 v1, 0x3e7

    if-le p0, v1, :cond_1

    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "num":I
    :goto_0
    if-eqz p0, :cond_0

    .line 259
    add-int/lit8 v0, v0, 0x1

    .line 260
    div-int/lit8 p0, p0, 0xa

    goto :goto_0

    .line 262
    :cond_0
    add-int v1, v0, p1

    return v1

    .line 264
    .end local v0    # "num":I
    :cond_1
    const/16 v1, 0x63

    if-gt p0, v1, :cond_2

    if-eqz p2, :cond_3

    if-lt p3, v4, :cond_3

    .line 265
    :cond_2
    add-int/lit8 v1, p1, 0x3

    return v1

    .line 267
    :cond_3
    const/16 v1, 0x9

    if-gt p0, v1, :cond_4

    if-eqz p2, :cond_5

    if-lt p3, v3, :cond_5

    .line 268
    :cond_4
    add-int/lit8 v1, p1, 0x2

    return v1

    .line 270
    :cond_5
    if-nez p2, :cond_6

    if-lez p0, :cond_7

    .line 271
    :cond_6
    add-int/lit8 v1, p1, 0x1

    return v1

    .line 274
    :cond_7
    return v2
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .locals 4
    .param p0, "time"    # J
    .param p2, "now"    # J
    .param p4, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 411
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 412
    const-string/jumbo v0, "--"

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 413
    return-void

    .line 415
    :cond_0
    sub-long v0, p0, p2

    const/4 v2, 0x0

    invoke-static {v0, v1, p4, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 410
    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .locals 2
    .param p0, "duration"    # J
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 406
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 405
    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;I)V
    .locals 6
    .param p0, "duration"    # J
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "fieldLen"    # I

    .prologue
    .line 398
    sget-object v2, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v2

    .line 399
    :try_start_0
    invoke-static {p0, p1, p3}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v0

    .line 400
    .local v0, "len":I
    new-instance v1, Ljava/lang/String;

    sget-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 397
    return-void

    .line 398
    .end local v0    # "len":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;)V
    .locals 4
    .param p0, "duration"    # J
    .param p2, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 390
    sget-object v2, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v2

    .line 391
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v0

    .line 392
    .local v0, "len":I
    sget-object v1, Landroid/util/TimeUtils;->sFormatStr:[C

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 389
    return-void

    .line 390
    .end local v0    # "len":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static formatDurationLocked(JI)I
    .locals 22
    .param p0, "duration"    # J
    .param p2, "fieldLen"    # I

    .prologue
    .line 318
    sget-object v4, Landroid/util/TimeUtils;->sFormatStr:[C

    array-length v4, v4

    move/from16 v0, p2

    if-ge v4, v0, :cond_0

    .line 319
    move/from16 v0, p2

    new-array v4, v0, [C

    sput-object v4, Landroid/util/TimeUtils;->sFormatStr:[C

    .line 322
    :cond_0
    sget-object v2, Landroid/util/TimeUtils;->sFormatStr:[C

    .line 324
    .local v2, "formatStr":[C
    const-wide/16 v6, 0x0

    cmp-long v4, p0, v6

    if-nez v4, :cond_2

    .line 325
    const/4 v5, 0x0

    .line 326
    .local v5, "pos":I
    add-int/lit8 p2, p2, -0x1

    move/from16 v16, v5

    .line 327
    .end local v5    # "pos":I
    .local v16, "pos":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, p2

    if-ge v0, v1, :cond_1

    .line 328
    add-int/lit8 v5, v16, 0x1

    .end local v16    # "pos":I
    .restart local v5    # "pos":I
    const/16 v4, 0x20

    aput-char v4, v2, v16

    move/from16 v16, v5

    .end local v5    # "pos":I
    .restart local v16    # "pos":I
    goto :goto_0

    .line 330
    :cond_1
    const/16 v4, 0x30

    aput-char v4, v2, v16

    .line 331
    add-int/lit8 v4, v16, 0x1

    return v4

    .line 335
    .end local v16    # "pos":I
    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v4, p0, v6

    if-lez v4, :cond_6

    .line 336
    const/16 v17, 0x2b

    .line 342
    .local v17, "prefix":C
    :goto_1
    const-wide/16 v6, 0x3e8

    rem-long v6, p0, v6

    long-to-int v13, v6

    .line 343
    .local v13, "millis":I
    const-wide/16 v6, 0x3e8

    div-long v6, p0, v6

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v18, v0

    .line 344
    .local v18, "seconds":I
    const/4 v3, 0x0

    .local v3, "days":I
    const/4 v12, 0x0

    .local v12, "hours":I
    const/4 v14, 0x0

    .line 346
    .local v14, "minutes":I
    const v4, 0x15180

    move/from16 v0, v18

    if-lt v0, v4, :cond_3

    .line 347
    const v4, 0x15180

    div-int v3, v18, v4

    .line 348
    const v4, 0x15180

    mul-int/2addr v4, v3

    sub-int v18, v18, v4

    .line 350
    :cond_3
    const/16 v4, 0xe10

    move/from16 v0, v18

    if-lt v0, v4, :cond_4

    .line 351
    move/from16 v0, v18

    div-int/lit16 v12, v0, 0xe10

    .line 352
    mul-int/lit16 v4, v12, 0xe10

    sub-int v18, v18, v4

    .line 354
    :cond_4
    const/16 v4, 0x3c

    move/from16 v0, v18

    if-lt v0, v4, :cond_5

    .line 355
    div-int/lit8 v14, v18, 0x3c

    .line 356
    mul-int/lit8 v4, v14, 0x3c

    sub-int v18, v18, v4

    .line 359
    :cond_5
    const/4 v5, 0x0

    .line 361
    .restart local v5    # "pos":I
    if-eqz p2, :cond_b

    .line 362
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v6, v7}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v15

    .line 363
    .local v15, "myLen":I
    if-lez v15, :cond_7

    const/4 v4, 0x1

    :goto_2
    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-static {v12, v6, v4, v7}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/2addr v15, v4

    .line 364
    if-lez v15, :cond_8

    const/4 v4, 0x1

    :goto_3
    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-static {v14, v6, v4, v7}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/2addr v15, v4

    .line 365
    if-lez v15, :cond_9

    const/4 v4, 0x1

    :goto_4
    const/4 v6, 0x1

    const/4 v7, 0x2

    move/from16 v0, v18

    invoke-static {v0, v6, v4, v7}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/2addr v15, v4

    .line 366
    if-lez v15, :cond_a

    const/4 v4, 0x3

    :goto_5
    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-static {v13, v6, v7, v4}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v15, v4

    .line 367
    :goto_6
    move/from16 v0, p2

    if-ge v15, v0, :cond_b

    .line 368
    const/16 v4, 0x20

    aput-char v4, v2, v5

    .line 369
    add-int/lit8 v5, v5, 0x1

    .line 370
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 338
    .end local v3    # "days":I
    .end local v5    # "pos":I
    .end local v12    # "hours":I
    .end local v13    # "millis":I
    .end local v14    # "minutes":I
    .end local v15    # "myLen":I
    .end local v17    # "prefix":C
    .end local v18    # "seconds":I
    :cond_6
    const/16 v17, 0x2d

    .line 339
    .restart local v17    # "prefix":C
    move-wide/from16 v0, p0

    neg-long v0, v0

    move-wide/from16 p0, v0

    goto/16 :goto_1

    .line 363
    .restart local v3    # "days":I
    .restart local v5    # "pos":I
    .restart local v12    # "hours":I
    .restart local v13    # "millis":I
    .restart local v14    # "minutes":I
    .restart local v15    # "myLen":I
    .restart local v18    # "seconds":I
    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 364
    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    .line 365
    :cond_9
    const/4 v4, 0x0

    goto :goto_4

    .line 366
    :cond_a
    const/4 v4, 0x0

    goto :goto_5

    .line 374
    .end local v15    # "myLen":I
    :cond_b
    aput-char v17, v2, v5

    .line 375
    add-int/lit8 v5, v5, 0x1

    .line 377
    move/from16 v19, v5

    .line 378
    .local v19, "start":I
    if-eqz p2, :cond_c

    const/16 v20, 0x1

    .line 379
    .local v20, "zeropad":Z
    :goto_7
    const/16 v4, 0x64

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v5

    .line 380
    move/from16 v0, v19

    if-eq v5, v0, :cond_d

    const/4 v10, 0x1

    :goto_8
    if-eqz v20, :cond_e

    const/4 v11, 0x2

    :goto_9
    const/16 v8, 0x68

    move-object v6, v2

    move v7, v12

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v5

    .line 381
    move/from16 v0, v19

    if-eq v5, v0, :cond_f

    const/4 v10, 0x1

    :goto_a
    if-eqz v20, :cond_10

    const/4 v11, 0x2

    :goto_b
    const/16 v8, 0x6d

    move-object v6, v2

    move v7, v14

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v5

    .line 382
    move/from16 v0, v19

    if-eq v5, v0, :cond_11

    const/4 v10, 0x1

    :goto_c
    if-eqz v20, :cond_12

    const/4 v11, 0x2

    :goto_d
    const/16 v8, 0x73

    move-object v6, v2

    move/from16 v7, v18

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v5

    .line 383
    if-eqz v20, :cond_13

    move/from16 v0, v19

    if-eq v5, v0, :cond_13

    const/4 v11, 0x3

    :goto_e
    const/16 v8, 0x6d

    const/4 v10, 0x1

    move-object v6, v2

    move v7, v13

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v5

    .line 384
    const/16 v4, 0x73

    aput-char v4, v2, v5

    .line 385
    add-int/lit8 v4, v5, 0x1

    return v4

    .line 378
    .end local v20    # "zeropad":Z
    :cond_c
    const/16 v20, 0x0

    .restart local v20    # "zeropad":Z
    goto :goto_7

    .line 380
    :cond_d
    const/4 v10, 0x0

    goto :goto_8

    :cond_e
    const/4 v11, 0x0

    goto :goto_9

    .line 381
    :cond_f
    const/4 v10, 0x0

    goto :goto_a

    :cond_10
    const/4 v11, 0x0

    goto :goto_b

    .line 382
    :cond_11
    const/4 v10, 0x0

    goto :goto_c

    :cond_12
    const/4 v11, 0x0

    goto :goto_d

    .line 383
    :cond_13
    const/4 v11, 0x0

    goto :goto_e
.end method

.method public static formatForLogging(J)Ljava/lang/String;
    .locals 2
    .param p0, "millis"    # J

    .prologue
    .line 450
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 451
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 453
    :cond_0
    sget-object v0, Landroid/util/TimeUtils;->sLoggingFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatUptime(J)Ljava/lang/String;
    .locals 6
    .param p0, "time"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 420
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v0, p0, v2

    .line 421
    .local v0, "diff":J
    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 424
    :cond_0
    cmp-long v2, v0, v4

    if-gez v2, :cond_1

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-long v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms ago)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 427
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (now)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;
    .locals 10
    .param p0, "offset"    # I
    .param p1, "dst"    # Z
    .param p2, "when"    # J
    .param p4, "country"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "best":Ljava/util/TimeZone;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 70
    .local v5, "d":Ljava/util/Date;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 71
    .local v1, "current":Ljava/util/TimeZone;
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "currentName":Ljava/lang/String;
    invoke-virtual {v1, p2, p3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    .line 73
    .local v4, "currentOffset":I
    invoke-virtual {v1, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    .line 75
    .local v2, "currentDst":Z
    invoke-static {p4}, Landroid/util/TimeUtils;->getTimeZones(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v0    # "best":Ljava/util/TimeZone;
    .local v7, "tz$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/TimeZone;

    .line 80
    .local v6, "tz":Ljava/util/TimeZone;
    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 81
    if-ne v4, p0, :cond_1

    if-ne v2, p1, :cond_1

    .line 82
    return-object v1

    .line 91
    :cond_1
    if-nez v0, :cond_0

    .line 92
    invoke-virtual {v6, p2, p3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    if-ne v8, p0, :cond_0

    .line 93
    invoke-virtual {v6, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v8

    if-ne v8, p1, :cond_0

    .line 94
    move-object v0, v6

    .local v0, "best":Ljava/util/TimeZone;
    goto :goto_0

    .line 99
    .end local v0    # "best":Ljava/util/TimeZone;
    .end local v6    # "tz":Ljava/util/TimeZone;
    :cond_2
    return-object v0
.end method

.method public static getTimeZoneDatabaseVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/util/ZoneInfoDB$TzData;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeZones(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "country"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/TimeZone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    sget-object v10, Landroid/util/TimeUtils;->sLastLockObj:Ljava/lang/Object;

    monitor-enter v10

    .line 160
    if-eqz p0, :cond_0

    :try_start_0
    sget-object v9, Landroid/util/TimeUtils;->sLastCountry:Ljava/lang/String;

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 162
    sget-object v9, Landroid/util/TimeUtils;->sLastZones:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    return-object v9

    :cond_0
    monitor-exit v10

    .line 166
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v7, "tzs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    if-nez p0, :cond_1

    .line 170
    return-object v7

    .line 159
    .end local v7    # "tzs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 173
    .restart local v7    # "tzs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 174
    .local v5, "r":Landroid/content/res/Resources;
    const v9, 0x1110019

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 177
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    const-string/jumbo v9, "timezones"

    invoke-static {v4, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 180
    :cond_2
    :goto_0
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 182
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, "element":Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string/jumbo v9, "timezone"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 187
    const-string/jumbo v9, "code"

    const/4 v10, 0x0

    invoke-interface {v4, v10, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "code":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 190
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2

    .line 191
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v8

    .line 192
    .local v8, "zoneIdString":Ljava/lang/String;
    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 193
    .local v6, "tz":Ljava/util/TimeZone;
    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "GMT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 195
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 204
    .end local v0    # "code":Ljava/lang/String;
    .end local v3    # "element":Ljava/lang/String;
    .end local v6    # "tz":Ljava/util/TimeZone;
    .end local v8    # "zoneIdString":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 205
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    const-string/jumbo v9, "TimeUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Got xml parser exception getTimeZone(\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\'): e="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 209
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 212
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    sget-object v10, Landroid/util/TimeUtils;->sLastLockObj:Ljava/lang/Object;

    monitor-enter v10

    .line 214
    :try_start_3
    sput-object v7, Landroid/util/TimeUtils;->sLastZones:Ljava/util/ArrayList;

    .line 215
    sput-object p0, Landroid/util/TimeUtils;->sLastCountry:Ljava/lang/String;

    .line 216
    sget-object v9, Landroid/util/TimeUtils;->sLastZones:Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v10

    return-object v9

    .line 209
    .restart local v3    # "element":Ljava/lang/String;
    :cond_3
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 206
    .end local v3    # "element":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 207
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v9, "TimeUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Got IO exception getTimeZone(\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\'): e="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 209
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 208
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v9

    .line 209
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 208
    throw v9

    .line 212
    :catchall_2
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method public static getTimeZonesWithUniqueOffsets(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "country"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/TimeZone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    sget-object v7, Landroid/util/TimeUtils;->sLastUniqueLockObj:Ljava/lang/Object;

    monitor-enter v7

    .line 111
    if-eqz p0, :cond_0

    :try_start_0
    sget-object v6, Landroid/util/TimeUtils;->sLastUniqueCountry:Ljava/lang/String;

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 116
    sget-object v6, Landroid/util/TimeUtils;->sLastUniqueZoneOffsets:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-object v6

    :cond_0
    monitor-exit v7

    .line 120
    invoke-static {p0}, Landroid/util/TimeUtils;->getTimeZones(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 121
    .local v5, "zones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/TimeZone;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v2, "uniqueTimeZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "zone$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/TimeZone;

    .line 125
    .local v3, "zone":Ljava/util/TimeZone;
    const/4 v0, 0x0

    .line 126
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 127
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/TimeZone;

    invoke-virtual {v6}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v6

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 128
    const/4 v0, 0x1

    .line 132
    :cond_2
    if-nez v0, :cond_1

    .line 137
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    .end local v0    # "found":Z
    .end local v1    # "i":I
    .end local v2    # "uniqueTimeZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    .end local v3    # "zone":Ljava/util/TimeZone;
    .end local v4    # "zone$iterator":Ljava/util/Iterator;
    .end local v5    # "zones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/TimeZone;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 126
    .restart local v0    # "found":Z
    .restart local v1    # "i":I
    .restart local v2    # "uniqueTimeZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    .restart local v3    # "zone":Ljava/util/TimeZone;
    .restart local v4    # "zone$iterator":Ljava/util/Iterator;
    .restart local v5    # "zones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/TimeZone;>;"
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 141
    .end local v0    # "found":Z
    .end local v1    # "i":I
    .end local v3    # "zone":Ljava/util/TimeZone;
    :cond_4
    sget-object v7, Landroid/util/TimeUtils;->sLastUniqueLockObj:Ljava/lang/Object;

    monitor-enter v7

    .line 143
    :try_start_1
    sput-object v2, Landroid/util/TimeUtils;->sLastUniqueZoneOffsets:Ljava/util/ArrayList;

    .line 144
    sput-object p0, Landroid/util/TimeUtils;->sLastUniqueCountry:Ljava/lang/String;

    .line 146
    sget-object v6, Landroid/util/TimeUtils;->sLastUniqueZoneOffsets:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v7

    return-object v6

    .line 141
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public static logTimeOfDay(J)Ljava/lang/String;
    .locals 4
    .param p0, "millis"    # J

    .prologue
    .line 439
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 440
    .local v0, "c":Ljava/util/Calendar;
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-ltz v1, :cond_0

    .line 441
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 442
    const-string/jumbo v1, "%tm-%td %tH:%tM:%tS.%tL"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v3, 0x4

    aput-object v0, v2, v3

    const/4 v3, 0x5

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 444
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static printFieldLocked([CICIZI)I
    .locals 5
    .param p0, "formatStr"    # [C
    .param p1, "amt"    # I
    .param p2, "suffix"    # C
    .param p3, "pos"    # I
    .param p4, "always"    # Z
    .param p5, "zeropad"    # I

    .prologue
    .line 279
    if-nez p4, :cond_0

    if-lez p1, :cond_7

    .line 280
    :cond_0
    move v1, p3

    .line 281
    .local v1, "startPos":I
    const/16 v3, 0x3e7

    if-le p1, v3, :cond_2

    .line 282
    const/4 v2, 0x0

    .line 283
    .local v2, "tmp":I
    :goto_0
    if-eqz p1, :cond_1

    sget-object v3, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 284
    rem-int/lit8 v0, p1, 0xa

    .line 285
    .local v0, "dig":I
    sget-object v3, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    add-int/lit8 v4, v0, 0x30

    int-to-char v4, v4

    aput-char v4, v3, v2

    .line 286
    add-int/lit8 v2, v2, 0x1

    .line 287
    div-int/lit8 p1, p1, 0xa

    goto :goto_0

    .line 289
    .end local v0    # "dig":I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 290
    :goto_1
    if-ltz v2, :cond_6

    .line 291
    sget-object v3, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    aget-char v3, v3, v2

    aput-char v3, p0, p3

    .line 292
    add-int/lit8 p3, p3, 0x1

    .line 293
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 296
    .end local v2    # "tmp":I
    :cond_2
    if-eqz p4, :cond_8

    const/4 v3, 0x3

    if-lt p5, v3, :cond_8

    .line 297
    :goto_2
    div-int/lit8 v0, p1, 0x64

    .line 298
    .restart local v0    # "dig":I
    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    aput-char v3, p0, p3

    .line 299
    add-int/lit8 p3, p3, 0x1

    .line 300
    mul-int/lit8 v3, v0, 0x64

    sub-int/2addr p1, v3

    .line 302
    .end local v0    # "dig":I
    :cond_3
    if-eqz p4, :cond_9

    const/4 v3, 0x2

    if-lt p5, v3, :cond_9

    .line 303
    :cond_4
    :goto_3
    div-int/lit8 v0, p1, 0xa

    .line 304
    .restart local v0    # "dig":I
    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    aput-char v3, p0, p3

    .line 305
    add-int/lit8 p3, p3, 0x1

    .line 306
    mul-int/lit8 v3, v0, 0xa

    sub-int/2addr p1, v3

    .line 308
    .end local v0    # "dig":I
    :cond_5
    add-int/lit8 v3, p1, 0x30

    int-to-char v3, v3

    aput-char v3, p0, p3

    .line 309
    add-int/lit8 p3, p3, 0x1

    .line 311
    :cond_6
    aput-char p2, p0, p3

    .line 312
    add-int/lit8 p3, p3, 0x1

    .line 314
    .end local v1    # "startPos":I
    :cond_7
    return p3

    .line 296
    .restart local v1    # "startPos":I
    :cond_8
    const/16 v3, 0x63

    if-le p1, v3, :cond_3

    goto :goto_2

    .line 302
    :cond_9
    const/16 v3, 0x9

    if-gt p1, v3, :cond_4

    if-eq v1, p3, :cond_5

    goto :goto_3
.end method
