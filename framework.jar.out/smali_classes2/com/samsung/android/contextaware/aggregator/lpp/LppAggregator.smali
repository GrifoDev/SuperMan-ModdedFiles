.class public Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;
.super Lcom/samsung/android/contextaware/aggregator/Aggregator;
.source "LppAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_LPP_RESOLUTION:I = 0x0

.field private static final LPP_DEBUG_MSG_END:I = 0x7b85ae

.field private static final LPP_DEBUG_MSG_START:I = 0x126bdfd

.field private static final NEXT_APDR:I = 0xabaa

.field private static final TAG:Ljava/lang/String; = "LppAggregator"


# instance fields
.field private final LPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;

.field private altitude:[D

.field count:I

.field private final gpsKeepOnTimer:I

.field private final gpsRequestApdr:I

.field private final gpsRequestTimer:I

.field private latitude:[D

.field private longitude:[D

.field private mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

.field private mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

.field mStatus:[I

.field sendApdr:Landroid/os/Handler;

.field private final strConfigEdit:Ljava/lang/String;

.field private final strConfigText:Ljava/lang/String;

.field private timestamp:[J


# direct methods
.method static synthetic -get0(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->LPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "listLPPResult"    # Ljava/util/ArrayList;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->notifyPositionContext(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 4
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p5, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/manager/ContextComponent;",
            ">;",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "collectionList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/contextaware/manager/ContextComponent;>;"
    const/4 v3, 0x0

    .line 105
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/contextaware/aggregator/Aggregator;-><init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 58
    iput-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    .line 59
    const/16 v2, 0x14

    iput v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->gpsRequestTimer:I

    .line 60
    const/16 v2, 0xa

    iput v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->gpsKeepOnTimer:I

    .line 62
    const/16 v2, 0x64

    iput v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->gpsRequestApdr:I

    .line 65
    const-string/jumbo v2, "[Note] \n"

    iput-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->strConfigEdit:Ljava/lang/String;

    .line 66
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->strConfigText:Ljava/lang/String;

    .line 72
    new-instance v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;)V

    iput-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->LPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;

    .line 83
    iput-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    .line 419
    const/16 v2, 0x24

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mStatus:[I

    .line 433
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->count:I

    .line 112
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/manager/ContextComponent;

    .line 113
    .local v0, "i":Lcom/samsung/android/contextaware/manager/ContextComponent;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextType()Ljava/lang/String;

    move-result-object v2

    .line 114
    sget-object v3, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    check-cast v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    .end local v0    # "i":Lcom/samsung/android/contextaware/manager/ContextComponent;
    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    .line 104
    :cond_1
    return-void

    .line 419
    :array_0
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
    .end array-data
.end method

.method private convertToUtc(III)J
    .locals 26
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .prologue
    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->getSyncTime()Landroid/text/format/Time;

    move-result-object v16

    .line 509
    .local v16, "syncT":Landroid/text/format/Time;
    const-string/jumbo v19, "LppAggregator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "syncT:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v19, "HH:mm:ss"

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 511
    .local v4, "format":Ljava/text/SimpleDateFormat;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 512
    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v20, v0

    .line 511
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 514
    .local v17, "time1":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 515
    .local v18, "time2":Ljava/lang/String;
    const/4 v15, 0x0

    .line 516
    .local v15, "syncDate":Ljava/util/Date;
    const/4 v5, 0x0

    .line 518
    .local v5, "rxDate":Ljava/util/Date;
    :try_start_0
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v15

    .line 519
    .local v15, "syncDate":Ljava/util/Date;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 520
    .local v5, "rxDate":Ljava/util/Date;
    const-string/jumbo v19, "LppAggregator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "syncDate:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const-string/jumbo v19, "LppAggregator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "rxDate:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-virtual {v15, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 524
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 525
    .local v2, "cal2":Ljava/util/Calendar;
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 526
    const/16 v19, 0x5

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 527
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 535
    .end local v2    # "cal2":Ljava/util/Calendar;
    .end local v5    # "rxDate":Ljava/util/Date;
    .end local v15    # "syncDate":Ljava/util/Date;
    :cond_0
    :goto_0
    const-wide/16 v12, 0x0

    .line 536
    .local v12, "lapse":J
    if-eqz v5, :cond_1

    .line 538
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    sub-long v12, v20, v22

    .line 540
    :cond_1
    const-string/jumbo v19, "LppAggregator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "lapse:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-wide/16 v20, 0x0

    cmp-long v19, v12, v20

    if-gez v19, :cond_2

    .line 543
    const-string/jumbo v19, "LppAggregator"

    const-string/jumbo v20, "lapse is -ve"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_2
    const-wide/32 v20, 0x2932e00

    cmp-long v19, v12, v20

    if-lez v19, :cond_3

    .line 547
    const-string/jumbo v19, "LppAggregator"

    const-string/jumbo v20, "lapse is more than 12 hours"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_3
    sget-object v19, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v6

    .line 550
    .local v6, "lapHr":J
    sget-object v19, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 551
    const-wide/16 v20, 0x3c

    mul-long v20, v20, v6

    const-wide/16 v22, 0x3c

    mul-long v20, v20, v22

    const-wide/16 v22, 0x3e8

    mul-long v20, v20, v22

    sub-long v20, v12, v20

    .line 550
    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v8

    .line 553
    .local v8, "lapMin":J
    const-wide/16 v20, 0x3c

    mul-long v20, v20, v6

    const-wide/16 v22, 0x3c

    mul-long v20, v20, v22

    const-wide/16 v22, 0x3e8

    mul-long v20, v20, v22

    .line 554
    const-wide/16 v22, 0x3c

    mul-long v22, v22, v8

    const-wide/16 v24, 0x3e8

    mul-long v22, v22, v24

    .line 553
    add-long v20, v20, v22

    .line 552
    sub-long v20, v12, v20

    .line 554
    const-wide/16 v22, 0x3e8

    .line 552
    div-long v10, v20, v22

    .line 556
    .local v10, "lapSec":J
    const-string/jumbo v19, "LppAggregator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "lapHr:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " lapMin:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " lapSec:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    new-instance v14, Landroid/text/format/Time;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 560
    .local v14, "rxTime":Landroid/text/format/Time;
    iget v0, v14, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v20, v20, v6

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v14, Landroid/text/format/Time;->hour:I

    .line 561
    iget v0, v14, Landroid/text/format/Time;->minute:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v20, v20, v8

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v14, Landroid/text/format/Time;->minute:I

    .line 562
    iget v0, v14, Landroid/text/format/Time;->second:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v20, v20, v10

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v14, Landroid/text/format/Time;->second:I

    .line 564
    const-string/jumbo v19, "LppAggregator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "rxTime:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    return-wide v20

    .line 529
    .end local v6    # "lapHr":J
    .end local v8    # "lapMin":J
    .end local v10    # "lapSec":J
    .end local v12    # "lapse":J
    .end local v14    # "rxTime":Landroid/text/format/Time;
    :catch_0
    move-exception v3

    .line 530
    .local v3, "e":Ljava/text/ParseException;
    const-string/jumbo v19, "LppAggregator"

    const-string/jumbo v20, "time parse error"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private convertToUtc2(III)J
    .locals 2
    .param p1, "hour"    # I
    .param p2, "min"    # I
    .param p3, "sec"    # I

    .prologue
    .line 600
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private notifyLppContext(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "names":[Ljava/lang/String;
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 167
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->timestamp:[J

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 168
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->latitude:[D

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 169
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v2, v0, v2

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->longitude:[D

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 170
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x4

    aget-object v2, v0, v2

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->altitude:[D

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 172
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->notifyObserver()V

    .line 163
    return-void
.end method

.method private notifyPositionContext(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 466
    .local p1, "listLPPResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Location;>;"
    const-string/jumbo v5, "LppAggregator"

    const-string/jumbo v6, "notifyPositionContext"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 471
    .local v4, "tim":Landroid/text/format/Time;
    const/4 v0, 0x0

    .line 473
    .local v0, "cnt":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 475
    .local v3, "size":I
    new-array v5, v3, [J

    iput-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->timestamp:[J

    .line 476
    new-array v5, v3, [D

    iput-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->latitude:[D

    .line 477
    new-array v5, v3, [D

    iput-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->longitude:[D

    .line 478
    new-array v5, v3, [D

    iput-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->altitude:[D

    .line 480
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 481
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 482
    .local v2, "loc":Landroid/location/Location;
    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 483
    const-string/jumbo v5, "GMT+00:00"

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 484
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->timestamp:[J

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    aput-wide v6, v5, v1

    .line 485
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->latitude:[D

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    aput-wide v6, v5, v1

    .line 486
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->longitude:[D

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    aput-wide v6, v5, v1

    .line 487
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->altitude:[D

    invoke-virtual {v2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    aput-wide v6, v5, v1

    .line 488
    add-int/lit8 v0, v0, 0x1

    .line 480
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 491
    .end local v2    # "loc":Landroid/location/Location;
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->notifyLppContext(I)V

    .line 465
    return-void
.end method

.method private test()V
    .locals 4

    .prologue
    .line 382
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$2;

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$2;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->sendApdr:Landroid/os/Handler;

    .line 416
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->sendApdr:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    const v1, 0xabaa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 378
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .prologue
    .line 153
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 154
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->clear()V

    .line 152
    return-void
.end method

.method public final disable()V
    .locals 4

    .prologue
    .line 439
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 443
    new-instance v0, Landroid/os/Handler;

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$3;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)V

    .line 450
    const-wide/16 v2, 0x0

    .line 443
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 438
    return-void
.end method

.method protected display()V
    .locals 0

    .prologue
    .line 454
    return-void
.end method

.method public final enable()V
    .locals 6

    .prologue
    .line 353
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 356
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 357
    const/16 v2, 0x64

    const/16 v3, 0x14

    const/16 v4, 0xa

    .line 356
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;-><init>(Landroid/content/Context;III)V

    .line 359
    .local v0, "config":Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->setContext(Landroid/content/Context;)V

    .line 360
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->looper:Landroid/os/Looper;

    .line 365
    new-instance v1, Landroid/os/Handler;

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$1;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;)V

    .line 372
    const-wide/16 v4, 0x0

    .line 365
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 352
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LPP:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 267
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 268
    const-string/jumbo v1, "TrajectoryCount"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 269
    const-string/jumbo v1, "TrajectoryTimeStamp"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 270
    const-string/jumbo v1, "TrajectoryLatitude"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 271
    const-string/jumbo v1, "TrajectoryLongitude"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 272
    const-string/jumbo v1, "TrajectoryAltitude"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 267
    return-object v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 193
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    .line 203
    return-object p0
.end method

.method protected final initializeAggregator()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 5
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v4, 0x0

    .line 215
    const/4 v1, 0x1

    .line 216
    .local v1, "result":Z
    const/16 v2, 0x20

    if-ne p1, v2, :cond_5

    .line 217
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 219
    .local v0, "resolution":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Resolution = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 220
    if-eqz v0, :cond_2

    .line 221
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 222
    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    .line 224
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    if-eqz v2, :cond_1

    .line 225
    const v2, 0x126bdfd

    if-ne v0, v2, :cond_0

    .line 226
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->sendStatusEnable()V

    .line 228
    :cond_0
    const v2, 0x7b85ae

    if-ne v0, v2, :cond_1

    .line 229
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->sendStatusDisable()V

    .line 233
    :cond_1
    const-string/jumbo v2, "Invalid value for LPP resolution"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 234
    return v4

    .line 245
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    if-eqz v2, :cond_3

    .line 246
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    invoke-virtual {v2, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->setLppResolution(I)V

    .line 249
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    if-eqz v2, :cond_4

    .line 250
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-virtual {v2, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->setLppResolution(I)V

    .line 256
    .end local v0    # "resolution":I
    :cond_4
    :goto_0
    return v1

    .line 254
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final terminateAggregator()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public final updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 26
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 285
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Context type "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 287
    sget-object v20, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v12

    .line 293
    .local v12, "names":[Ljava/lang/String;
    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->StayingArea:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    .line 292
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 295
    .local v16, "stayA":I
    if-eqz v16, :cond_1

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->notifyStayArea(I)V

    .line 284
    .end local v12    # "names":[Ljava/lang/String;
    .end local v16    # "stayA":I
    :cond_0
    :goto_0
    return-void

    .line 300
    .restart local v12    # "names":[Ljava/lang/String;
    .restart local v16    # "stayA":I
    :cond_1
    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Count:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    .line 299
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 302
    .local v4, "dataSize":I
    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Hour:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    .line 301
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 304
    .local v6, "hour":I
    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Minute:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    .line 303
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 306
    .local v11, "minute":I
    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Second:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    .line 305
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 308
    .local v13, "second":I
    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->doe:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    .line 307
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 310
    .local v5, "doe":I
    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->TimeDifference:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    .line 309
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v17

    .line 312
    .local v17, "timeDiff":[J
    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->IncrementEast:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    .line 311
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v8

    .line 314
    .local v8, "incEast":[I
    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->IncrementNorth:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    .line 313
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v9

    .line 316
    .local v9, "incNorth":[I
    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->ActivityType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    .line 315
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 318
    .local v2, "activityType":[I
    const-wide/16 v14, 0x0

    .line 320
    .local v14, "rxTime":J
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11, v13}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->convertToUtc2(III)J

    move-result-wide v14

    .line 322
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v4, :cond_3

    .line 325
    const/4 v3, 0x0

    .line 327
    .local v3, "apdr":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    new-instance v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    .end local v3    # "apdr":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    invoke-direct {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;-><init>()V

    .line 328
    .local v3, "apdr":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v20

    iput-wide v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->stepFlag:D

    .line 329
    aget v20, v8, v7

    aget v21, v8, v7

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    mul-double v20, v20, v22

    .line 330
    aget v22, v9, v7

    aget v23, v9, v7

    mul-int v22, v22, v23

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    mul-double v22, v22, v24

    .line 329
    add-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->stepLength:D

    .line 331
    aget-wide v20, v17, v7

    .line 324
    const-wide/16 v22, 0x0

    .line 331
    add-long v18, v22, v20

    .line 332
    .local v18, "sumTimeDiff":J
    add-long v20, v14, v18

    move-wide/from16 v0, v20

    iput-wide v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    .line 334
    aget v20, v8, v7

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    iget-wide v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->stepLength:D

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->asin(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->apdrHeading:D

    .line 335
    iget-wide v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->apdrHeading:D

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_2

    .line 336
    iget-wide v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->apdrHeading:D

    move-wide/from16 v20, v0

    const-wide v22, 0x400921fb54442d18L    # Math.PI

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    iput-wide v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->apdrHeading:D

    .line 339
    :cond_2
    iget-object v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->mag:[D

    move-object/from16 v20, v0

    int-to-double v0, v5

    move-wide/from16 v22, v0

    const/16 v21, 0x3

    aput-wide v22, v20, v21

    .line 340
    aget v20, v2, v7

    and-int/lit8 v20, v20, 0xf

    move/from16 v0, v20

    iput v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    .line 341
    aget v20, v2, v7

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xf0

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->carryPos:I

    .line 343
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 345
    .end local v3    # "apdr":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    .end local v18    # "sumTimeDiff":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->notifyApdrData(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method
