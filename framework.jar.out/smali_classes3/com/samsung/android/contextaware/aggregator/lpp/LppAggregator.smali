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

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->notifyPositionContext(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 4
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

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/contextaware/aggregator/Aggregator;-><init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    iput-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    const/16 v2, 0x14

    iput v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->gpsRequestTimer:I

    const/16 v2, 0xa

    iput v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->gpsKeepOnTimer:I

    const/16 v2, 0x64

    iput v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->gpsRequestApdr:I

    const-string/jumbo v2, "[Note] \n"

    iput-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->strConfigEdit:Ljava/lang/String;

    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->strConfigText:Ljava/lang/String;

    new-instance v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;)V

    iput-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->LPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;

    iput-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    const/16 v2, 0x24

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mStatus:[I

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->count:I

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/manager/ContextComponent;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    :cond_1
    return-void

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->getSyncTime()Landroid/text/format/Time;

    move-result-object v16

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

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v19, "HH:mm:ss"

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

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

    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

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

    const/4 v15, 0x0

    const/4 v5, 0x0

    :try_start_0
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v15

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

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

    invoke-virtual {v15, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v19, 0x5

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :cond_0
    :goto_0
    const-wide/16 v12, 0x0

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    sub-long v12, v20, v22

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

    const-wide/16 v20, 0x0

    cmp-long v19, v12, v20

    if-gez v19, :cond_2

    const-string/jumbo v19, "LppAggregator"

    const-string/jumbo v20, "lapse is -ve"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-wide/32 v20, 0x2932e00

    cmp-long v19, v12, v20

    if-lez v19, :cond_3

    const-string/jumbo v19, "LppAggregator"

    const-string/jumbo v20, "lapse is more than 12 hours"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v19, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v6

    sget-object v19, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v20, 0x3c

    mul-long v20, v20, v6

    const-wide/16 v22, 0x3c

    mul-long v20, v20, v22

    const-wide/16 v22, 0x3e8

    mul-long v20, v20, v22

    sub-long v20, v12, v20

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v8

    const-wide/16 v20, 0x3c

    mul-long v20, v20, v6

    const-wide/16 v22, 0x3c

    mul-long v20, v20, v22

    const-wide/16 v22, 0x3e8

    mul-long v20, v20, v22

    const-wide/16 v22, 0x3c

    mul-long v22, v22, v8

    const-wide/16 v24, 0x3e8

    mul-long v22, v22, v24

    add-long v20, v20, v22

    sub-long v20, v12, v20

    const-wide/16 v22, 0x3e8

    div-long v10, v20, v22

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

    new-instance v14, Landroid/text/format/Time;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

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

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    return-wide v20

    :catch_0
    move-exception v3

    const-string/jumbo v19, "LppAggregator"

    const-string/jumbo v20, "time parse error"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private convertToUtc2(III)J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private notifyLppContext(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->timestamp:[J

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->latitude:[D

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v2, v0, v2

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->longitude:[D

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x4

    aget-object v2, v0, v2

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->altitude:[D

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->notifyObserver()V

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

    const-string/jumbo v5, "LppAggregator"

    const-string/jumbo v6, "notifyPositionContext"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v5, v3, [J

    iput-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->timestamp:[J

    new-array v5, v3, [D

    iput-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->latitude:[D

    new-array v5, v3, [D

    iput-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->longitude:[D

    new-array v5, v3, [D

    iput-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->altitude:[D

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/text/format/Time;->set(J)V

    const-string/jumbo v5, "GMT+00:00"

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->timestamp:[J

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    aput-wide v6, v5, v1

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->latitude:[D

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    aput-wide v6, v5, v1

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->longitude:[D

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    aput-wide v6, v5, v1

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->altitude:[D

    invoke-virtual {v2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    aput-wide v6, v5, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->notifyLppContext(I)V

    return-void
.end method

.method private test()V
    .locals 4

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$2;

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$2;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->sendApdr:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->sendApdr:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    const v1, 0xabaa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->clear()V

    return-void
.end method

.method public final disable()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    new-instance v0, Landroid/os/Handler;

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$3;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected display()V
    .locals 0

    return-void
.end method

.method public final enable()V
    .locals 6

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x64

    const/16 v3, 0x14

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;-><init>(Landroid/content/Context;III)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->setContext(Landroid/content/Context;)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->looper:Landroid/os/Looper;

    new-instance v1, Landroid/os/Handler;

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$1;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LPP:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "TrajectoryCount"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "TrajectoryTimeStamp"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "TrajectoryLatitude"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "TrajectoryLongitude"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "TrajectoryAltitude"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    return-object p0
.end method

.method protected final initializeAggregator()V
    .locals 0

    return-void
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x20

    if-ne p1, v2, :cond_5

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

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

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    if-eqz v2, :cond_1

    const v2, 0x126bdfd

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->sendStatusEnable()V

    :cond_0
    const v2, 0x7b85ae

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->sendStatusDisable()V

    :cond_1
    const-string/jumbo v2, "Invalid value for LPP resolution"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    return v4

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    invoke-virtual {v2, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->setLppResolution(I)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-virtual {v2, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->setLppResolution(I)V

    :cond_4
    :goto_0
    return v1

    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final terminateAggregator()V
    .locals 0

    return-void
.end method

.method public final updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 26

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

    sget-object v20, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v12

    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->StayingArea:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->notifyStayArea(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Count:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Hour:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Minute:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Second:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->doe:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->TimeDifference:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v17

    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->IncrementEast:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v8

    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->IncrementNorth:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v9

    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->ActivityType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11, v13}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->convertToUtc2(III)J

    move-result-wide v14

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v4, :cond_3

    const-wide/16 v18, 0x0

    const/4 v3, 0x0

    new-instance v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    invoke-direct {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;-><init>()V

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v20

    iput-wide v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->stepFlag:D

    aget v20, v8, v7

    aget v21, v8, v7

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    mul-double v20, v20, v22

    aget v22, v9, v7

    aget v23, v9, v7

    mul-int v22, v22, v23

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    mul-double v22, v22, v24

    add-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->stepLength:D

    aget-wide v20, v17, v7

    const-wide/16 v22, 0x0

    add-long v18, v22, v20

    add-long v20, v14, v18

    move-wide/from16 v0, v20

    iput-wide v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

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

    iget-wide v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->apdrHeading:D

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_2

    iget-wide v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->apdrHeading:D

    move-wide/from16 v20, v0

    const-wide v22, 0x400921fb54442d18L    # Math.PI

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    iput-wide v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->apdrHeading:D

    :cond_2
    iget-object v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->mag:[D

    move-object/from16 v20, v0

    int-to-double v0, v5

    move-wide/from16 v22, v0

    const/16 v21, 0x3

    aput-wide v22, v20, v21

    aget v20, v2, v7

    and-int/lit8 v20, v20, 0xf

    move/from16 v0, v20

    iput v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    aget v20, v2, v7

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xf0

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->carryPos:I

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->notifyApdrData(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method
