.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "PedometerRunner.java"


# static fields
.field private static final PDC_SF_LENGTH:I = 0x14


# instance fields
.field private final _mutex:Ljava/util/concurrent/locks/Lock;

.field private accumulativeCalorie:D

.field private accumulativeDistance:D

.field private accumulativeRunDownStepCount:J

.field private accumulativeRunStepCount:J

.field private accumulativeRunUpStepCount:J

.field private accumulativeTotalStepCount:J

.field private accumulativeUpDownStepCount:J

.field private accumulativeWalkDownStepCount:J

.field private accumulativeWalkStepCount:J

.field private accumulativeWalkUpStepCount:J

.field private final mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    const-string/jumbo v0, "PedometerRunner is created"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    return-void
.end method

.method private sendHistoryStepBuffer()V
    .locals 46

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v13

    const/4 v10, 0x1

    const-wide/16 v28, 0x0

    const-wide/16 v36, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v38, 0x0

    const-wide/16 v32, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getBufferSize()I

    move-result v12

    if-nez v12, :cond_0

    const-string/jumbo v41, "History Data Buffer is null!!"

    invoke-static/range {v41 .. v41}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    :cond_0
    new-array v0, v12, [J

    move-object/from16 v26, v0

    new-array v7, v12, [D

    new-array v6, v12, [D

    new-array v0, v12, [D

    move-object/from16 v23, v0

    new-array v0, v12, [J

    move-object/from16 v35, v0

    new-array v0, v12, [J

    move-object/from16 v17, v0

    new-array v0, v12, [J

    move-object/from16 v40, v0

    new-array v0, v12, [J

    move-object/from16 v34, v0

    new-array v0, v12, [J

    move-object/from16 v22, v0

    new-array v0, v12, [J

    move-object/from16 v16, v0

    new-array v0, v12, [J

    move-object/from16 v27, v0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v12, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getTimeStampSingle(I)J

    move-result-wide v42

    aput-wide v42, v26, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getTotalStepCountSingle(I)J

    move-result-wide v42

    aput-wide v42, v27, v11

    aget-wide v42, v27, v11

    add-long v28, v28, v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getWalkStepCountSingle(I)J

    move-result-wide v42

    aput-wide v42, v35, v11

    aget-wide v42, v35, v11

    add-long v36, v36, v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getRunStepCountSingle(I)J

    move-result-wide v42

    aput-wide v42, v17, v11

    aget-wide v42, v17, v11

    add-long v18, v18, v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getWalkUpStepCountSingle(I)J

    move-result-wide v42

    aput-wide v42, v40, v11

    aget-wide v42, v40, v11

    add-long v38, v38, v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getRunUpStepCountSingle(I)J

    move-result-wide v42

    aput-wide v42, v22, v11

    aget-wide v42, v22, v11

    add-long v20, v20, v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getWalkDnStepCountSingle(I)J

    move-result-wide v42

    aput-wide v42, v34, v11

    aget-wide v42, v34, v11

    add-long v32, v32, v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getRunDnStepCountSingle(I)J

    move-result-wide v42

    aput-wide v42, v16, v11

    aget-wide v42, v16, v11

    add-long v14, v14, v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getDistanceArraySingle(I)D

    move-result-wide v42

    aput-wide v42, v7, v11

    aget-wide v42, v7, v11

    add-double v8, v8, v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getCalorieArraySingle(I)D

    move-result-wide v42

    aput-wide v42, v6, v11

    aget-wide v42, v6, v11

    add-double v4, v4, v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getSpeedArraySingle(I)D

    move-result-wide v42

    aput-wide v42, v23, v11

    aget-wide v42, v23, v11

    add-double v24, v24, v42

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_1
    add-long v42, v38, v32

    add-long v42, v42, v20

    add-long v30, v42, v14

    if-lez v12, :cond_2

    int-to-double v0, v12

    move-wide/from16 v42, v0

    div-double v24, v24, v42

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x0

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x1

    aget-object v42, v13, v42

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move-wide/from16 v44, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-wide/from16 v2, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x2

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x3

    aget-object v42, v13, v42

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    move-wide/from16 v44, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-wide/from16 v2, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x4

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x5

    aget-object v42, v13, v42

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    move-wide/from16 v44, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-wide/from16 v2, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x6

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x7

    aget-object v42, v13, v42

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    move-wide/from16 v44, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-wide/from16 v2, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x8

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v8, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x9

    aget-object v42, v13, v42

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    move-wide/from16 v44, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-wide/from16 v2, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0xa

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0xb

    aget-object v42, v13, v42

    const/16 v43, -0x1

    invoke-virtual/range {v41 .. v43}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0xc

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0xd

    aget-object v42, v13, v42

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    move-wide/from16 v44, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-wide/from16 v2, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0xe

    aget-object v42, v13, v42

    const-wide/16 v44, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-wide/from16 v2, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0xf

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-wide/from16 v2, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x10

    aget-object v42, v13, v42

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    move-wide/from16 v44, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-wide/from16 v2, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x11

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x12

    aget-object v42, v13, v42

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    move-wide/from16 v44, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-wide/from16 v2, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x13

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x14

    aget-object v42, v13, v42

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    move-wide/from16 v44, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-wide/from16 v2, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x15

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v14, v15}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x16

    aget-object v42, v13, v42

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    move-wide/from16 v44, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-wide/from16 v2, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x17

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x18

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x19

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x1a

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x1b

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x1c

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x1d

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x1e

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x1f

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x20

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x21

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x22

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x23

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    return-void

    :cond_2
    const-wide/16 v24, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public final clear()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->erase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final disable()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    return-void
.end method

.method protected display()V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->getContextBundleForDisplay()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "================= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ================="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_2
    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_3

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {v4, v8, v6}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_6

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x61

    if-ge v6, v7, :cond_5

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getDisplayContents(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "], "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public final enable()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PEDOMETER:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "WalkStepCountDiff"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "WalkStepCount"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "RunStepCountDiff"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "RunStepCount"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "UpDownStepCountDiff"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "UpDownStepCount"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "TotalStepCountDiff"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "TotalStepCount"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "DistanceDiff"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "Distance"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "Speed"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "StepStatus"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "CalorieDiff"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "Calorie"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "WalkingFrequency"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "WalkUpStepCountDiff"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "WalkUpStepCount"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "WalkDownStepCountDiff"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "WalkDownStepCount"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "RunUpStepCountDiff"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "RunUpStepCount"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "RunDownStepCountDiff"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "RunDownStepCount"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "LoggingCount"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "TimeStampArray"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "DistanceDiffArray"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "CalorieDiffArray"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "SpeedArray"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "WalkStepCountDiffArray"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "RunStepCountDiffArray"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "WalkUpStepCountDiffArray"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "WalkDownStepCountDiffArray"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string/jumbo v1, "RunUpStepCountDiffArray"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string/jumbo v1, "RunDownStepCountDiffArray"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string/jumbo v1, "TotalStepCountDiffArray"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string/jumbo v1, "PreviousStepBuffer"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 4

    const/4 v1, 0x3

    new-array v0, v1, [B

    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getUserHeight()D

    move-result-wide v2

    double-to-int v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getUserWeight()D

    move-result-wide v2

    double-to-int v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getUserGender()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInitContextBundle()Landroid/os/Bundle;
    .locals 8

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x3

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x4

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x5

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x6

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x7

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v2, 0x8

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/16 v2, 0x9

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/16 v2, 0xa

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/16 v2, 0xb

    aget-object v2, v1, v2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v2, 0xc

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/16 v2, 0xd

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/16 v2, 0xe

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/16 v2, 0xf

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v2, 0x10

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v2, 0x11

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v2, 0x12

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v2, 0x13

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v2, 0x14

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v2, 0x15

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v2, 0x16

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    return-object p0
.end method

.method protected final getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    .locals 0

    return-object p0
.end method

.method protected final notifyInitContext()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getUsedTotalCount(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyInitContext()V

    :cond_0
    return-void
.end method

.method public parse([BI)I
    .locals 62

    move/from16 v40, p2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v56, "parse start:"

    move-object/from16 v0, v56

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    move-object/from16 v0, p1

    array-length v5, v0

    sub-int v5, v5, p2

    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_0

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v5, -0x1

    return v5

    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v24

    add-int/lit8 v40, p2, 0x1

    aget-byte v15, p1, p2

    const-wide/16 v42, 0x0

    const-wide/16 v50, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v54, 0x0

    const-wide/16 v48, 0x0

    const-wide/16 v32, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v36, 0x0

    new-instance v5, Ljava/util/SimpleTimeZone;

    const-string/jumbo v56, "GMT"

    const/16 v57, 0x0

    move/from16 v0, v57

    move-object/from16 v1, v56

    invoke-direct {v5, v0, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v19

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v23

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v34

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v22

    move/from16 v0, v19

    mul-int/lit16 v5, v0, 0xe10

    mul-int/lit8 v56, v23, 0x3c

    add-int v5, v5, v56

    add-int v5, v5, v34

    mul-int/lit16 v5, v5, 0x3e8

    add-int v5, v5, v22

    int-to-long v6, v5

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    and-int/lit16 v5, v15, 0x80

    if-nez v5, :cond_3

    move-object/from16 v0, p1

    array-length v5, v0

    sub-int v5, v5, v40

    add-int/lit8 v5, v5, -0xe

    if-gez v5, :cond_1

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v56, v0

    invoke-interface/range {v56 .. v56}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v5

    :cond_1
    and-int/lit8 v15, v15, 0x7f

    :try_start_1
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x0

    aget-object v56, v24, v56

    int-to-long v0, v15

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    int-to-long v0, v15

    move-wide/from16 v50, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move-wide/from16 v56, v0

    int-to-long v0, v15

    move-wide/from16 v58, v0

    add-long v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x1

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v41, v40, 0x1

    :try_start_2
    aget-byte v15, p1, v40

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x2

    aget-object v56, v24, v56

    int-to-long v0, v15

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    int-to-long v0, v15

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    move-wide/from16 v56, v0

    int-to-long v0, v15

    move-wide/from16 v58, v0

    add-long v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x3

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v40, v41, 0x1

    :try_start_3
    aget-byte v15, p1, v41

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x4

    aget-object v56, v24, v56

    int-to-long v0, v15

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    move-wide/from16 v56, v0

    int-to-long v0, v15

    move-wide/from16 v58, v0

    add-long v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x5

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v41, v40, 0x1

    :try_start_4
    aget-byte v5, p1, v40
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v40, v41, 0x1

    :try_start_5
    aget-byte v56, p1, v41

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    add-int v15, v5, v56

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x6

    aget-object v56, v24, v56

    int-to-long v0, v15

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    int-to-long v0, v15

    move-wide/from16 v42, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    move-wide/from16 v56, v0

    int-to-long v0, v15

    move-wide/from16 v58, v0

    add-long v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x7

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v41, v40, 0x1

    :try_start_6
    aget-byte v5, p1, v40
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v40, v41, 0x1

    :try_start_7
    aget-byte v56, p1, v41

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    add-int v15, v5, v56

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x8

    aget-object v56, v24, v56

    int-to-double v0, v15

    move-wide/from16 v58, v0

    const-wide/high16 v60, 0x4059000000000000L    # 100.0

    div-double v58, v58, v60

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    int-to-double v0, v15

    move-wide/from16 v56, v0

    const-wide/high16 v58, 0x4059000000000000L    # 100.0

    div-double v16, v56, v58

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    move-wide/from16 v56, v0

    int-to-double v0, v15

    move-wide/from16 v58, v0

    const-wide/high16 v60, 0x4059000000000000L    # 100.0

    div-double v58, v58, v60

    add-double v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x9

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    add-int/lit8 v41, v40, 0x1

    :try_start_8
    aget-byte v5, p1, v40

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v5

    int-to-double v0, v5

    move-wide/from16 v56, v0

    const-wide/high16 v58, 0x4024000000000000L    # 10.0

    div-double v36, v56, v58

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0xa

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-wide/from16 v1, v36

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    add-int/lit8 v40, v41, 0x1

    :try_start_9
    aget-byte v15, p1, v41

    move/from16 v38, v15

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0xb

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    invoke-virtual {v5, v0, v15}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    add-int/lit8 v41, v40, 0x1

    :try_start_a
    aget-byte v5, p1, v40

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v5

    int-to-double v0, v5

    move-wide/from16 v56, v0

    const-wide/high16 v58, 0x4059000000000000L    # 100.0

    div-double v12, v56, v58

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0xc

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    invoke-virtual {v5, v0, v12, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    move-wide/from16 v56, v0

    add-double v56, v56, v12

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0xd

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    add-int/lit8 v40, v41, 0x1

    :try_start_b
    aget-byte v15, p1, v41

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0xe

    aget-object v56, v24, v56

    int-to-double v0, v15

    move-wide/from16 v58, v0

    const-wide/high16 v60, 0x4024000000000000L    # 10.0

    div-double v58, v58, v60

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    add-int/lit8 v41, v40, 0x1

    :try_start_c
    aget-byte v15, p1, v40

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0xf

    aget-object v56, v24, v56

    int-to-long v0, v15

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    int-to-long v0, v15

    move-wide/from16 v54, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    move-wide/from16 v56, v0

    int-to-long v0, v15

    move-wide/from16 v58, v0

    add-long v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x10

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    add-int/lit8 v40, v41, 0x1

    :try_start_d
    aget-byte v15, p1, v41

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x11

    aget-object v56, v24, v56

    int-to-long v0, v15

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    int-to-long v0, v15

    move-wide/from16 v48, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    move-wide/from16 v56, v0

    int-to-long v0, v15

    move-wide/from16 v58, v0

    add-long v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x12

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    add-int/lit8 v41, v40, 0x1

    :try_start_e
    aget-byte v15, p1, v40

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x13

    aget-object v56, v24, v56

    int-to-long v0, v15

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    int-to-long v0, v15

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    move-wide/from16 v56, v0

    int-to-long v0, v15

    move-wide/from16 v58, v0

    add-long v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x14

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    add-int/lit8 v40, v41, 0x1

    :try_start_f
    aget-byte v15, p1, v41

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x15

    aget-object v56, v24, v56

    int-to-long v0, v15

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    int-to-long v0, v15

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    move-wide/from16 v56, v0

    int-to-long v0, v15

    move-wide/from16 v58, v0

    add-long v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x16

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    const-wide/16 v56, 0x0

    cmp-long v5, v42, v56

    if-lez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    const/16 v56, 0x1

    move/from16 v0, v56

    invoke-virtual {v5, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->updateBufferIndex(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v42

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putTotalStepInfoSingle(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v50

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkStepInfoSingle(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v28

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunStepInfoSingle(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v54

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkUpStepInfoSingle(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v32

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunUpStepInfoSingle(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v48

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkDnStepInfoSingle(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v26

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunDnStepInfoSingle(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putDistanceInfoSingle(D)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v5, v12, v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putCalorieInfoSingle(D)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v36

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putSpeedInfoSingle(D)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    const/16 v56, 0x1

    move/from16 v0, v56

    invoke-virtual {v5, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->setDataMode(I)V

    :cond_2
    :goto_0
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v56, "parse end:"

    move-object/from16 v0, v56

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    return v40

    :cond_3
    and-int/lit16 v5, v15, 0xc0

    shr-int/lit8 v5, v5, 0x6

    const/16 v56, 0x3

    move/from16 v0, v56

    if-ne v5, v0, :cond_8

    :try_start_10
    move-object/from16 v0, p1

    array-length v5, v0

    sub-int v5, v5, v40

    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_4

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v56, v0

    invoke-interface/range {v56 .. v56}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v5

    :cond_4
    add-int/lit8 v41, v40, 0x1

    :try_start_11
    aget-byte v21, p1, v40

    if-gtz v21, :cond_5

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_LOGGING_PACKAGE_SIZE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v56, v0

    invoke-interface/range {v56 .. v56}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v5

    :cond_5
    :try_start_12
    move/from16 v0, v21

    new-array v0, v0, [J

    move-object/from16 v39, v0

    move/from16 v0, v21

    new-array v0, v0, [D

    move-object/from16 v18, v0

    move/from16 v0, v21

    new-array v14, v0, [D

    move/from16 v0, v21

    new-array v0, v0, [D

    move-object/from16 v35, v0

    move/from16 v0, v21

    new-array v0, v0, [J

    move-object/from16 v52, v0

    move/from16 v0, v21

    new-array v0, v0, [J

    move-object/from16 v30, v0

    move/from16 v0, v21

    new-array v0, v0, [J

    move-object/from16 v53, v0

    move/from16 v0, v21

    new-array v0, v0, [J

    move-object/from16 v45, v0

    move/from16 v0, v21

    new-array v0, v0, [J

    move-object/from16 v31, v0

    move/from16 v0, v21

    new-array v0, v0, [J

    move-object/from16 v25, v0

    move/from16 v0, v21

    new-array v0, v0, [J

    move-object/from16 v44, v0

    const/16 v38, -0x1

    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p1

    array-length v5, v0

    sub-int v5, v5, v41

    add-int/lit8 v5, v5, -0x14

    if-gez v5, :cond_6

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v56, v0

    invoke-interface/range {v56 .. v56}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v5

    :cond_6
    add-int/lit8 v40, v41, 0x1

    :try_start_13
    aget-byte v5, p1, v41
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v41, v40, 0x1

    :try_start_14
    aget-byte v56, p1, v40
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    shl-int/lit8 v56, v56, 0x10

    add-int v5, v5, v56

    add-int/lit8 v40, v41, 0x1

    :try_start_15
    aget-byte v56, p1, v41
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    shl-int/lit8 v56, v56, 0x8

    add-int v5, v5, v56

    add-int/lit8 v41, v40, 0x1

    :try_start_16
    aget-byte v56, p1, v40

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    add-int v5, v5, v56

    int-to-long v10, v5

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v5

    invoke-virtual/range {v5 .. v11}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC24(JJJ)J

    move-result-wide v56

    aput-wide v56, v39, v20
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    add-int/lit8 v40, v41, 0x1

    :try_start_17
    aget-byte v5, p1, v41
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v41, v40, 0x1

    :try_start_18
    aget-byte v56, p1, v40

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    add-int v15, v5, v56

    int-to-double v0, v15

    move-wide/from16 v56, v0

    const-wide/high16 v58, 0x4059000000000000L    # 100.0

    div-double v56, v56, v58

    aput-wide v56, v18, v20
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    add-int/lit8 v40, v41, 0x1

    :try_start_19
    aget-byte v5, p1, v41
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v41, v40, 0x1

    :try_start_1a
    aget-byte v56, p1, v40

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    add-int v15, v5, v56

    int-to-double v0, v15

    move-wide/from16 v56, v0

    const-wide/high16 v58, 0x4059000000000000L    # 100.0

    div-double v56, v56, v58

    aput-wide v56, v14, v20
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    add-int/lit8 v40, v41, 0x1

    :try_start_1b
    aget-byte v5, p1, v41

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v56, v0

    aput-wide v56, v52, v20
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    add-int/lit8 v41, v40, 0x1

    :try_start_1c
    aget-byte v5, p1, v40
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v40, v41, 0x1

    :try_start_1d
    aget-byte v56, p1, v41

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    add-int v5, v5, v56

    int-to-long v0, v5

    move-wide/from16 v56, v0

    aput-wide v56, v30, v20
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    add-int/lit8 v41, v40, 0x1

    :try_start_1e
    aget-byte v5, p1, v40

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v56, v0

    aput-wide v56, v53, v20
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    add-int/lit8 v40, v41, 0x1

    :try_start_1f
    aget-byte v5, p1, v41

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v56, v0

    aput-wide v56, v45, v20
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    add-int/lit8 v41, v40, 0x1

    :try_start_20
    aget-byte v5, p1, v40
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v40, v41, 0x1

    :try_start_21
    aget-byte v56, p1, v41

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    add-int v5, v5, v56

    int-to-long v0, v5

    move-wide/from16 v56, v0

    aput-wide v56, v31, v20
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    add-int/lit8 v41, v40, 0x1

    :try_start_22
    aget-byte v5, p1, v40
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v40, v41, 0x1

    :try_start_23
    aget-byte v56, p1, v41

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    add-int v5, v5, v56

    int-to-long v0, v5

    move-wide/from16 v56, v0

    aput-wide v56, v25, v20
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    add-int/lit8 v41, v40, 0x1

    :try_start_24
    aget-byte v5, p1, v40

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v5

    int-to-double v0, v5

    move-wide/from16 v56, v0

    const-wide/high16 v58, 0x4024000000000000L    # 10.0

    div-double v56, v56, v58

    aput-wide v56, v35, v20
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    add-int/lit8 v40, v41, 0x1

    :try_start_25
    aget-byte v5, p1, v41
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v41, v40, 0x1

    :try_start_26
    aget-byte v56, p1, v40

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    add-int v5, v5, v56

    int-to-long v0, v5

    move-wide/from16 v56, v0

    aput-wide v56, v44, v20

    aget-wide v56, v18, v20

    add-double v16, v16, v56

    aget-wide v56, v14, v20

    add-double v12, v12, v56

    aget-wide v56, v35, v20

    add-double v36, v36, v56

    aget-wide v56, v44, v20

    add-long v42, v42, v56

    aget-wide v56, v52, v20

    add-long v50, v50, v56

    aget-wide v56, v30, v20

    add-long v28, v28, v56

    aget-wide v56, v53, v20

    add-long v54, v54, v56

    aget-wide v56, v45, v20

    add-long v48, v48, v56

    aget-wide v56, v31, v20

    add-long v32, v32, v56

    aget-wide v56, v25, v20

    add-long v26, v26, v56

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    const/16 v56, 0x2

    move/from16 v0, v56

    invoke-virtual {v5, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->updateBufferIndex(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v56, v39, v20

    move-wide/from16 v0, v56

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putTimestamp(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v56, v44, v20

    move-wide/from16 v0, v56

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putTotalStepInfo(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v56, v52, v20

    move-wide/from16 v0, v56

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkStepInfo(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v56, v30, v20

    move-wide/from16 v0, v56

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunStepInfo(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v56, v53, v20

    move-wide/from16 v0, v56

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkUpStepInfo(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v56, v31, v20

    move-wide/from16 v0, v56

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunUpStepInfo(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v56, v45, v20

    move-wide/from16 v0, v56

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkDnStepInfo(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v56, v25, v20

    move-wide/from16 v0, v56

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunDnStepInfo(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v56, v18, v20

    move-wide/from16 v0, v56

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putDistanceInfo(D)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v56, v14, v20

    move-wide/from16 v0, v56

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putCalorieInfo(D)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v56, v35, v20

    move-wide/from16 v0, v56

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putSpeedInfo(D)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    const/16 v56, 0x2

    move/from16 v0, v56

    invoke-virtual {v5, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->setDataMode(I)V

    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    :cond_7
    add-long v56, v54, v48

    add-long v56, v56, v32

    add-long v46, v56, v26

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v56, v0

    div-double v36, v36, v56

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x0

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-wide/from16 v1, v50

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move-wide/from16 v56, v0

    add-long v56, v56, v50

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x1

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x2

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-wide/from16 v1, v28

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    move-wide/from16 v56, v0

    add-long v56, v56, v28

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x3

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x4

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-wide/from16 v1, v46

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    move-wide/from16 v56, v0

    add-long v56, v56, v46

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x5

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x6

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-wide/from16 v1, v42

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    move-wide/from16 v56, v0

    add-long v56, v56, v42

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x7

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x8

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-wide/from16 v1, v16

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    move-wide/from16 v56, v0

    add-double v56, v56, v16

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x9

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0xa

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-wide/from16 v1, v36

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0xb

    aget-object v56, v24, v56

    const/16 v57, -0x1

    move-object/from16 v0, v56

    move/from16 v1, v57

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0xc

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    invoke-virtual {v5, v0, v12, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    move-wide/from16 v56, v0

    add-double v56, v56, v12

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0xd

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0xe

    aget-object v56, v24, v56

    const-wide/16 v58, 0x0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0xf

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-wide/from16 v1, v54

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    move-wide/from16 v56, v0

    add-long v56, v56, v54

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x10

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x11

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-wide/from16 v1, v48

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    move-wide/from16 v56, v0

    add-long v56, v56, v48

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x12

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x13

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-wide/from16 v1, v32

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    move-wide/from16 v56, v0

    add-long v56, v56, v32

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x14

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x15

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-wide/from16 v1, v26

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    move-wide/from16 v56, v0

    add-long v56, v56, v26

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x16

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x17

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x18

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-object/from16 v1, v39

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x19

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x1a

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    invoke-virtual {v5, v0, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x1b

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x1c

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-object/from16 v1, v52

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x1d

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x1e

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-object/from16 v1, v53

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x1f

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-object/from16 v1, v45

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x20

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-object/from16 v1, v31

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x21

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x22

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-object/from16 v1, v44

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1

    move/from16 v40, v41

    goto/16 :goto_0

    :cond_8
    :try_start_27
    move-object/from16 v0, p1

    array-length v5, v0

    sub-int v5, v5, v40

    add-int/lit8 v5, v5, -0x20

    if-gez v5, :cond_9

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v56, v0

    invoke-interface/range {v56 .. v56}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v5

    :cond_9
    add-int/lit8 v41, v40, 0x1

    :try_start_28
    aget-byte v5, p1, v40
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v40, v41, 0x1

    :try_start_29
    aget-byte v56, p1, v41
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    shl-int/lit8 v56, v56, 0x8

    add-int v5, v5, v56

    add-int/lit8 v41, v40, 0x1

    :try_start_2a
    aget-byte v56, p1, v40

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    add-int v15, v5, v56

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x0

    aget-object v56, v24, v56

    int-to-long v0, v15

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    int-to-long v0, v15

    move-wide/from16 v50, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move-wide/from16 v56, v0

    int-to-long v0, v15

    move-wide/from16 v58, v0

    add-long v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x1

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1

    add-int/lit8 v40, v41, 0x1

    :try_start_2b
    aget-byte v5, p1, v41
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v41, v40, 0x1

    :try_start_2c
    aget-byte v56, p1, v40
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    shl-int/lit8 v56, v56, 0x8

    add-int v5, v5, v56

    add-int/lit8 v40, v41, 0x1

    :try_start_2d
    aget-byte v56, p1, v41

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    add-int v15, v5, v56

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x2

    aget-object v56, v24, v56

    int-to-long v0, v15

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    int-to-long v0, v15

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    move-wide/from16 v56, v0

    int-to-long v0, v15

    move-wide/from16 v58, v0

    add-long v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x3

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    add-int/lit8 v41, v40, 0x1

    :try_start_2e
    aget-byte v5, p1, v40
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v40, v41, 0x1

    :try_start_2f
    aget-byte v56, p1, v41
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    shl-int/lit8 v56, v56, 0x8

    add-int v5, v5, v56

    add-int/lit8 v41, v40, 0x1

    :try_start_30
    aget-byte v56, p1, v40

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    add-int v15, v5, v56

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x4

    aget-object v56, v24, v56

    int-to-long v0, v15

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    move-wide/from16 v56, v0

    int-to-long v0, v15

    move-wide/from16 v58, v0

    add-long v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x5

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_1

    add-int/lit8 v40, v41, 0x1

    :try_start_31
    aget-byte v5, p1, v41
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v41, v40, 0x1

    :try_start_32
    aget-byte v56, p1, v40
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_1

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    shl-int/lit8 v56, v56, 0x8

    add-int v5, v5, v56

    add-int/lit8 v40, v41, 0x1

    :try_start_33
    aget-byte v56, p1, v41

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    add-int v15, v5, v56

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x6

    aget-object v56, v24, v56

    int-to-long v0, v15

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    int-to-long v0, v15

    move-wide/from16 v42, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    move-wide/from16 v56, v0

    int-to-long v0, v15

    move-wide/from16 v58, v0

    add-long v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x7

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_0

    add-int/lit8 v41, v40, 0x1

    :try_start_34
    aget-byte v5, p1, v40
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v40, v41, 0x1

    :try_start_35
    aget-byte v56, p1, v41
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_0

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    shl-int/lit8 v56, v56, 0x8

    add-int v5, v5, v56

    add-int/lit8 v41, v40, 0x1

    :try_start_36
    aget-byte v56, p1, v40

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    add-int v15, v5, v56

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x8

    aget-object v56, v24, v56

    int-to-double v0, v15

    move-wide/from16 v58, v0

    const-wide/high16 v60, 0x4059000000000000L    # 100.0

    div-double v58, v58, v60

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    int-to-double v0, v15

    move-wide/from16 v56, v0

    const-wide/high16 v58, 0x4059000000000000L    # 100.0

    div-double v16, v56, v58

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    move-wide/from16 v56, v0

    int-to-double v0, v15

    move-wide/from16 v58, v0

    const-wide/high16 v60, 0x4059000000000000L    # 100.0

    div-double v58, v58, v60

    add-double v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x9

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1

    add-int/lit8 v40, v41, 0x1

    :try_start_37
    aget-byte v5, p1, v41

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v5

    int-to-double v0, v5

    move-wide/from16 v56, v0

    const-wide/high16 v58, 0x4024000000000000L    # 10.0

    div-double v36, v56, v58

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0xa

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-wide/from16 v1, v36

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_0

    add-int/lit8 v41, v40, 0x1

    :try_start_38
    aget-byte v15, p1, v40

    move/from16 v38, v15

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0xb

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    invoke-virtual {v5, v0, v15}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1

    add-int/lit8 v40, v41, 0x1

    :try_start_39
    aget-byte v5, p1, v41
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v41, v40, 0x1

    :try_start_3a
    aget-byte v56, p1, v40

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    add-int v15, v5, v56

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0xc

    aget-object v56, v24, v56

    int-to-double v0, v15

    move-wide/from16 v58, v0

    const-wide/high16 v60, 0x4024000000000000L    # 10.0

    div-double v58, v58, v60

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    int-to-double v0, v15

    move-wide/from16 v56, v0

    const-wide/high16 v58, 0x4024000000000000L    # 10.0

    div-double v12, v56, v58

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    move-wide/from16 v56, v0

    int-to-double v0, v15

    move-wide/from16 v58, v0

    const-wide/high16 v60, 0x4024000000000000L    # 10.0

    div-double v58, v58, v60

    add-double v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0xd

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_1

    add-int/lit8 v40, v41, 0x1

    :try_start_3b
    aget-byte v15, p1, v41

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0xe

    aget-object v56, v24, v56

    int-to-double v0, v15

    move-wide/from16 v58, v0

    const-wide/high16 v60, 0x4024000000000000L    # 10.0

    div-double v58, v58, v60

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_0

    add-int/lit8 v41, v40, 0x1

    :try_start_3c
    aget-byte v5, p1, v40
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v40, v41, 0x1

    :try_start_3d
    aget-byte v56, p1, v41
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_0

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    shl-int/lit8 v56, v56, 0x8

    add-int v5, v5, v56

    add-int/lit8 v41, v40, 0x1

    :try_start_3e
    aget-byte v56, p1, v40

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    add-int v15, v5, v56

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0xf

    aget-object v56, v24, v56

    int-to-long v0, v15

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    int-to-long v0, v15

    move-wide/from16 v54, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    move-wide/from16 v56, v0

    int-to-long v0, v15

    move-wide/from16 v58, v0

    add-long v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x10

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_1

    add-int/lit8 v40, v41, 0x1

    :try_start_3f
    aget-byte v5, p1, v41
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v41, v40, 0x1

    :try_start_40
    aget-byte v56, p1, v40
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_1

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    shl-int/lit8 v56, v56, 0x8

    add-int v5, v5, v56

    add-int/lit8 v40, v41, 0x1

    :try_start_41
    aget-byte v56, p1, v41

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    add-int v15, v5, v56

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x11

    aget-object v56, v24, v56

    int-to-long v0, v15

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    int-to-long v0, v15

    move-wide/from16 v48, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    move-wide/from16 v56, v0

    int-to-long v0, v15

    move-wide/from16 v58, v0

    add-long v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x12

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_0

    add-int/lit8 v41, v40, 0x1

    :try_start_42
    aget-byte v5, p1, v40
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v40, v41, 0x1

    :try_start_43
    aget-byte v56, p1, v41
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_0

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    shl-int/lit8 v56, v56, 0x8

    add-int v5, v5, v56

    add-int/lit8 v41, v40, 0x1

    :try_start_44
    aget-byte v56, p1, v40

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    add-int v15, v5, v56

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x13

    aget-object v56, v24, v56

    int-to-long v0, v15

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    int-to-long v0, v15

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    move-wide/from16 v56, v0

    int-to-long v0, v15

    move-wide/from16 v58, v0

    add-long v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x14

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_1

    add-int/lit8 v40, v41, 0x1

    :try_start_45
    aget-byte v5, p1, v41
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v41, v40, 0x1

    :try_start_46
    aget-byte v56, p1, v40
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_1

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    shl-int/lit8 v56, v56, 0x8

    add-int v5, v5, v56

    add-int/lit8 v40, v41, 0x1

    :try_start_47
    aget-byte v56, p1, v41

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    add-int v15, v5, v56

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x15

    aget-object v56, v24, v56

    int-to-long v0, v15

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    int-to-long v0, v15

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    move-wide/from16 v56, v0

    int-to-long v0, v15

    move-wide/from16 v58, v0

    add-long v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x16

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    const-wide/16 v56, 0x0

    cmp-long v5, v42, v56

    if-lez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    const/16 v56, 0x1

    move/from16 v0, v56

    invoke-virtual {v5, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->updateBufferIndex(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v42

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putTotalStepInfoSingle(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v50

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkStepInfoSingle(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v28

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunStepInfoSingle(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v54

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkUpStepInfoSingle(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v32

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunUpStepInfoSingle(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v48

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkDnStepInfoSingle(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v26

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunDnStepInfoSingle(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putDistanceInfoSingle(D)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v5, v12, v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putCalorieInfoSingle(D)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v36

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putSpeedInfoSingle(D)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    const/16 v56, 0x1

    move/from16 v0, v56

    invoke-virtual {v5, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->setDataMode(I)V
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v56, v0

    invoke-interface/range {v56 .. v56}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5

    :catchall_1
    move-exception v5

    move/from16 v40, v41

    goto :goto_2
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    const/16 v11, 0x14

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v12, 0x0

    const/4 v5, 0x1

    new-array v1, v9, [B

    const/4 v7, 0x5

    if-ne p1, v7, :cond_0

    const-string/jumbo v7, "Height"

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v8

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->setUserHeight(D)V

    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getUserHeight()D

    move-result-wide v8

    double-to-int v7, v8

    int-to-byte v7, v7

    aput-byte v7, v1, v12

    const/16 v7, 0x12

    invoke-virtual {p0, v7, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendCommonValueToSensorHub(B[B)Z

    move-result v5

    :goto_0
    return v5

    :cond_0
    if-ne p1, v10, :cond_1

    const-string/jumbo v7, "Weight"

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v8

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->setUserWeight(D)V

    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getUserWeight()D

    move-result-wide v8

    double-to-int v7, v8

    int-to-byte v7, v7

    aput-byte v7, v1, v12

    const/16 v7, 0x13

    invoke-virtual {p0, v7, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendCommonValueToSensorHub(B[B)Z

    move-result v5

    goto :goto_0

    :cond_1
    const/4 v7, 0x6

    if-ne p1, v7, :cond_2

    const-string/jumbo v7, "Gender"

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v8

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->setUserGender(I)V

    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getUserGender()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v1, v12

    invoke-virtual {p0, v11, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendCommonValueToSensorHub(B[B)Z

    move-result v5

    goto :goto_0

    :cond_2
    const/16 v7, 0x11

    if-ne p1, v7, :cond_3

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Delivery Count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    invoke-static {v0, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v7

    const/16 v8, 0x15

    invoke-virtual {p0, v8, v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendCommonValueToSensorHub(B[B)Z

    move-result v5

    goto/16 :goto_0

    :cond_3
    const/16 v7, 0x75

    if-ne p1, v7, :cond_7

    const-string/jumbo v7, "SF"

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    if-nez v6, :cond_4

    sget-object v7, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v12

    :cond_4
    array-length v7, v6

    if-eq v7, v11, :cond_5

    sget-object v7, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_PROPERTY_VALUE_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v12

    :cond_5
    const/4 v3, 0x0

    const/16 v7, 0x50

    new-array v4, v7, [B

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v11, :cond_6

    aget v7, v6, v2

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v7, v10}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v7

    invoke-static {v7, v12, v4, v3, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x4

    goto :goto_1

    :cond_6
    const/16 v7, 0x17

    const/4 v8, 0x3

    invoke-virtual {p0, v7, v8, v9, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    :cond_7
    const/4 v7, 0x2

    if-ne p1, v7, :cond_8

    const-string/jumbo v7, "History Data"

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendHistoryStepBuffer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v7

    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_0
.end method
