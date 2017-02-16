.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "PedometerRunner.java"


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
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 84
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    .line 100
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    .line 101
    const-string/jumbo v0, "PedometerRunner is created"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method private sendHistoryStepBuffer()V
    .locals 46

    .prologue
    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v13

    .line 109
    .local v13, "names":[Ljava/lang/String;
    const/4 v10, 0x1

    .line 111
    .local v10, "historyStepBufferMode":I
    const-wide/16 v28, 0x0

    .line 112
    .local v28, "totalStepCountDiff":J
    const-wide/16 v36, 0x0

    .line 113
    .local v36, "walkStepCountDiff":J
    const-wide/16 v18, 0x0

    .line 114
    .local v18, "runStepCountDiff":J
    const-wide/16 v38, 0x0

    .line 115
    .local v38, "walkUpStepCountDiff":J
    const-wide/16 v32, 0x0

    .line 116
    .local v32, "walkDownStepCountDiff":J
    const-wide/16 v20, 0x0

    .line 117
    .local v20, "runUpStepCountDiff":J
    const-wide/16 v14, 0x0

    .line 118
    .local v14, "runDownStepCountDiff":J
    const-wide/16 v8, 0x0

    .line 119
    .local v8, "distanceDiff":D
    const-wide/16 v4, 0x0

    .line 120
    .local v4, "calorieDiff":D
    const-wide/16 v24, 0x0

    .line 122
    .local v24, "speed":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getBufferSize()I

    move-result v12

    .line 124
    .local v12, "loggingCount":I
    if-nez v12, :cond_0

    .line 125
    const-string/jumbo v41, "History Data Buffer is null!!"

    invoke-static/range {v41 .. v41}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 128
    :cond_0
    new-array v0, v12, [J

    move-object/from16 v26, v0

    .line 129
    .local v26, "timeStampArray":[J
    new-array v7, v12, [D

    .line 130
    .local v7, "distanceDiffArray":[D
    new-array v6, v12, [D

    .line 131
    .local v6, "calorieDiffArray":[D
    new-array v0, v12, [D

    move-object/from16 v23, v0

    .line 132
    .local v23, "speedArray":[D
    new-array v0, v12, [J

    move-object/from16 v35, v0

    .line 133
    .local v35, "walkStepCountDiffArray":[J
    new-array v0, v12, [J

    move-object/from16 v17, v0

    .line 134
    .local v17, "runStepCountDiffArray":[J
    new-array v0, v12, [J

    move-object/from16 v40, v0

    .line 135
    .local v40, "walkUpStepCountDiffArray":[J
    new-array v0, v12, [J

    move-object/from16 v34, v0

    .line 136
    .local v34, "walkDownStepCountDiffArray":[J
    new-array v0, v12, [J

    move-object/from16 v22, v0

    .line 137
    .local v22, "runUpStepCountDiffArray":[J
    new-array v0, v12, [J

    move-object/from16 v16, v0

    .line 138
    .local v16, "runDownStepCountDiffArray":[J
    new-array v0, v12, [J

    move-object/from16 v27, v0

    .line 140
    .local v27, "totalStepCountDiffArray":[J
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v12, :cond_1

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getTimeStampSingle(I)J

    move-result-wide v42

    aput-wide v42, v26, v11

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getTotalStepCountSingle(I)J

    move-result-wide v42

    aput-wide v42, v27, v11

    .line 145
    aget-wide v42, v27, v11

    add-long v28, v28, v42

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getWalkStepCountSingle(I)J

    move-result-wide v42

    aput-wide v42, v35, v11

    .line 149
    aget-wide v42, v35, v11

    add-long v36, v36, v42

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getRunStepCountSingle(I)J

    move-result-wide v42

    aput-wide v42, v17, v11

    .line 153
    aget-wide v42, v17, v11

    add-long v18, v18, v42

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getWalkUpStepCountSingle(I)J

    move-result-wide v42

    aput-wide v42, v40, v11

    .line 157
    aget-wide v42, v40, v11

    add-long v38, v38, v42

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getRunUpStepCountSingle(I)J

    move-result-wide v42

    aput-wide v42, v22, v11

    .line 161
    aget-wide v42, v22, v11

    add-long v20, v20, v42

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getWalkDnStepCountSingle(I)J

    move-result-wide v42

    aput-wide v42, v34, v11

    .line 165
    aget-wide v42, v34, v11

    add-long v32, v32, v42

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getRunDnStepCountSingle(I)J

    move-result-wide v42

    aput-wide v42, v16, v11

    .line 169
    aget-wide v42, v16, v11

    add-long v14, v14, v42

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getDistanceArraySingle(I)D

    move-result-wide v42

    aput-wide v42, v7, v11

    .line 173
    aget-wide v42, v7, v11

    add-double v8, v8, v42

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getCalorieArraySingle(I)D

    move-result-wide v42

    aput-wide v42, v6, v11

    .line 177
    aget-wide v42, v6, v11

    add-double v4, v4, v42

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getSpeedArraySingle(I)D

    move-result-wide v42

    aput-wide v42, v23, v11

    .line 180
    aget-wide v42, v23, v11

    add-double v24, v24, v42

    .line 140
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 183
    :cond_1
    add-long v42, v38, v32

    add-long v42, v42, v20

    add-long v30, v42, v14

    .line 187
    .local v30, "upDownStepCountDiff":J
    if-lez v12, :cond_2

    .line 188
    int-to-double v0, v12

    move-wide/from16 v42, v0

    div-double v24, v24, v42

    .line 194
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x0

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

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

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x2

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

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

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x4

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

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

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x6

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

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

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x8

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v8, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

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

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0xa

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0xb

    aget-object v42, v13, v42

    .line 211
    const/16 v43, -0x1

    .line 210
    invoke-virtual/range {v41 .. v43}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0xc

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

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

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0xe

    aget-object v42, v13, v42

    const-wide/16 v44, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-wide/from16 v2, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0xf

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-wide/from16 v2, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

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

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x11

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

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

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x13

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

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

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x15

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v14, v15}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

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

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x17

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x18

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x19

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x1a

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x1b

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x1c

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x1d

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x1e

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x1f

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x20

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x21

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x22

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v41

    const/16 v42, 0x23

    aget-object v42, v13, v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 244
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    .line 106
    return-void

    .line 191
    :cond_2
    const-wide/16 v24, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .prologue
    .line 836
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 837
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 839
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 841
    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    .line 842
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    .line 843
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    .line 844
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    .line 845
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    .line 846
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    .line 847
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    .line 848
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    .line 850
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    .line 851
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    .line 854
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->erase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 856
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 835
    return-void

    .line 855
    :catchall_0
    move-exception v0

    .line 856
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 855
    throw v0
.end method

.method public final disable()V
    .locals 0

    .prologue
    .line 1008
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 1009
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 1007
    return-void
.end method

.method protected display()V
    .locals 8

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->getContextBundleForDisplay()Landroid/os/Bundle;

    move-result-object v0

    .line 313
    .local v0, "context":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 314
    :cond_0
    return-void

    .line 317
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

    .line 318
    const-string/jumbo v7, " ================="

    .line 317
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 320
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 322
    .local v5, "str":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 323
    .local v1, "i":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 335
    .end local v1    # "i":Ljava/lang/String;
    :cond_2
    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_3

    .line 336
    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 339
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 311
    return-void

    .line 326
    .restart local v1    # "i":Ljava/lang/String;
    :cond_4
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 327
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_6

    .line 328
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x61

    if-ge v6, v7, :cond_5

    .line 329
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 327
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 332
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getDisplayContents(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

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

    .prologue
    .line 996
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 997
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 995
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PEDOMETER:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 294
    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "WalkStepCountDiff"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "WalkStepCount"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 295
    const-string/jumbo v1, "RunStepCountDiff"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "RunStepCount"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "UpDownStepCountDiff"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 296
    const-string/jumbo v1, "UpDownStepCount"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "TotalStepCountDiff"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "TotalStepCount"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 297
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

    .line 298
    const-string/jumbo v1, "CalorieDiff"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "Calorie"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "WalkingFrequency"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 299
    const-string/jumbo v1, "WalkUpStepCountDiff"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "WalkUpStepCount"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 300
    const-string/jumbo v1, "WalkDownStepCountDiff"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "WalkDownStepCount"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 301
    const-string/jumbo v1, "RunUpStepCountDiff"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "RunUpStepCount"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "RunDownStepCountDiff"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 302
    const-string/jumbo v1, "RunDownStepCount"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "LoggingCount"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "TimeStampArray"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 303
    const-string/jumbo v1, "DistanceDiffArray"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "CalorieDiffArray"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "SpeedArray"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 304
    const-string/jumbo v1, "WalkStepCountDiffArray"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "RunStepCountDiffArray"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 305
    const-string/jumbo v1, "WalkUpStepCountDiffArray"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "WalkDownStepCountDiffArray"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 306
    const-string/jumbo v1, "RunUpStepCountDiffArray"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string/jumbo v1, "RunDownStepCountDiffArray"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 307
    const-string/jumbo v1, "TotalStepCountDiffArray"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string/jumbo v1, "PreviousStepBuffer"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 294
    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 4

    .prologue
    .line 277
    const/4 v1, 0x3

    new-array v0, v1, [B

    .line 278
    .local v0, "packet":[B
    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getUserHeight()D

    move-result-wide v2

    double-to-int v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 279
    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getUserWeight()D

    move-result-wide v2

    double-to-int v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 280
    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getUserGender()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 282
    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1047
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 1048
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInitContextBundle()Landroid/os/Bundle;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    .line 871
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .line 872
    .local v1, "names":[Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 874
    .local v0, "contextBundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 875
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 876
    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 877
    const/4 v2, 0x3

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 878
    const/4 v2, 0x4

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 879
    const/4 v2, 0x5

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 880
    const/4 v2, 0x6

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 881
    const/4 v2, 0x7

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 882
    const/16 v2, 0x8

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 883
    const/16 v2, 0x9

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 884
    const/16 v2, 0xa

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 885
    const/16 v2, 0xb

    aget-object v2, v1, v2

    .line 886
    const/4 v3, -0x1

    .line 885
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 887
    const/16 v2, 0xc

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 888
    const/16 v2, 0xd

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 889
    const/16 v2, 0xe

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 890
    const/16 v2, 0xf

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 891
    const/16 v2, 0x10

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 892
    const/16 v2, 0x11

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 893
    const/16 v2, 0x12

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 894
    const/16 v2, 0x13

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 895
    const/16 v2, 0x14

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 896
    const/16 v2, 0x15

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 897
    const/16 v2, 0x16

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 899
    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x3

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 974
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    .line 985
    return-object p0
.end method

.method protected final getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    .locals 0

    .prologue
    .line 1035
    return-object p0
.end method

.method protected final notifyInitContext()V
    .locals 2

    .prologue
    .line 1021
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v0

    .line 1022
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextType()Ljava/lang/String;

    move-result-object v1

    .line 1021
    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getUsedTotalCount(Ljava/lang/String;)I

    move-result v0

    .line 1022
    const/4 v1, 0x1

    .line 1021
    if-ne v0, v1, :cond_0

    .line 1023
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyInitContext()V

    .line 1020
    :cond_0
    return-void
.end method

.method public parse([BI)I
    .locals 62
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 351
    move/from16 v40, p2

    .line 353
    .local v40, "tmpNext":I
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

    .line 355
    move-object/from16 v0, p1

    array-length v5, v0

    sub-int v5, v5, p2

    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_0

    .line 356
    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 357
    const/4 v5, -0x1

    return v5

    .line 360
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 363
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v24

    .line 364
    .local v24, "names":[Ljava/lang/String;
    add-int/lit8 v40, p2, 0x1

    aget-byte v15, p1, p2

    .line 366
    .local v15, "data":I
    const-wide/16 v42, 0x0

    .line 367
    .local v42, "totalStepCountDiff":J
    const-wide/16 v50, 0x0

    .line 368
    .local v50, "walkStepCountDiff":J
    const-wide/16 v28, 0x0

    .line 369
    .local v28, "runStepCountDiff":J
    const-wide/16 v54, 0x0

    .line 370
    .local v54, "walkUpStepCountDiff":J
    const-wide/16 v48, 0x0

    .line 371
    .local v48, "walkDownStepCountDiff":J
    const-wide/16 v32, 0x0

    .line 372
    .local v32, "runUpStepCountDiff":J
    const-wide/16 v26, 0x0

    .line 373
    .local v26, "runDownStepCountDiff":J
    const-wide/16 v16, 0x0

    .line 374
    .local v16, "distanceDiff":D
    const-wide/16 v12, 0x0

    .line 375
    .local v12, "calorieDiff":D
    const-wide/16 v36, 0x0

    .line 377
    .local v36, "speed":D
    new-instance v5, Ljava/util/SimpleTimeZone;

    .line 378
    const-string/jumbo v56, "GMT"

    .line 377
    const/16 v57, 0x0

    move/from16 v0, v57

    move-object/from16 v1, v56

    invoke-direct {v5, v0, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    .line 379
    .local v4, "calender":Ljava/util/Calendar;
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v19

    .line 380
    .local v19, "hour":I
    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v23

    .line 381
    .local v23, "minute":I
    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v34

    .line 382
    .local v34, "second":I
    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v22

    .line 384
    .local v22, "milliSec":I
    move/from16 v0, v19

    mul-int/lit16 v5, v0, 0xe10

    mul-int/lit8 v56, v23, 0x3c

    add-int v5, v5, v56

    add-int v5, v5, v34

    mul-int/lit16 v5, v5, 0x3e8

    add-int v5, v5, v22

    int-to-long v6, v5

    .line 385
    .local v6, "curUtcTime":J
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 387
    .local v8, "curTimeMillis":J
    and-int/lit16 v5, v15, 0x80

    if-nez v5, :cond_3

    .line 388
    move-object/from16 v0, p1

    array-length v5, v0

    sub-int v5, v5, v40

    add-int/lit8 v5, v5, -0xe

    if-gez v5, :cond_1

    .line 389
    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    const/4 v5, -0x1

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v56, v0

    invoke-interface/range {v56 .. v56}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 390
    return v5

    .line 393
    :cond_1
    and-int/lit8 v15, v15, 0x7f

    .line 394
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

    .line 396
    int-to-long v0, v15

    move-wide/from16 v50, v0

    .line 398
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move-wide/from16 v56, v0

    int-to-long v0, v15

    move-wide/from16 v58, v0

    add-long v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    .line 399
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x1

    aget-object v56, v24, v56

    .line 400
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move-wide/from16 v58, v0

    .line 399
    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    add-int/lit8 v41, v40, 0x1

    .end local v40    # "tmpNext":I
    .local v41, "tmpNext":I
    :try_start_2
    aget-byte v15, p1, v40

    .line 403
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x2

    aget-object v56, v24, v56

    int-to-long v0, v15

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 405
    int-to-long v0, v15

    move-wide/from16 v28, v0

    .line 407
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    move-wide/from16 v56, v0

    int-to-long v0, v15

    move-wide/from16 v58, v0

    add-long v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    .line 408
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x3

    aget-object v56, v24, v56

    .line 409
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    move-wide/from16 v58, v0

    .line 408
    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 411
    add-int/lit8 v40, v41, 0x1

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :try_start_3
    aget-byte v15, p1, v41

    .line 412
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x4

    aget-object v56, v24, v56

    int-to-long v0, v15

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 414
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    move-wide/from16 v56, v0

    int-to-long v0, v15

    move-wide/from16 v58, v0

    add-long v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    .line 415
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x5

    aget-object v56, v24, v56

    .line 416
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    move-wide/from16 v58, v0

    .line 415
    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 418
    add-int/lit8 v41, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v41    # "tmpNext":I
    :try_start_4
    aget-byte v5, p1, v40
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    .line 419
    add-int/lit8 v40, v41, 0x1

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :try_start_5
    aget-byte v56, p1, v41

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    .line 418
    add-int v15, v5, v56

    .line 420
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x6

    aget-object v56, v24, v56

    int-to-long v0, v15

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 422
    int-to-long v0, v15

    move-wide/from16 v42, v0

    .line 424
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    move-wide/from16 v56, v0

    int-to-long v0, v15

    move-wide/from16 v58, v0

    add-long v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    .line 425
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x7

    aget-object v56, v24, v56

    .line 426
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    move-wide/from16 v58, v0

    .line 425
    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 428
    add-int/lit8 v41, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v41    # "tmpNext":I
    :try_start_6
    aget-byte v5, p1, v40
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    .line 429
    add-int/lit8 v40, v41, 0x1

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :try_start_7
    aget-byte v56, p1, v41

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    .line 428
    add-int v15, v5, v56

    .line 430
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    .line 431
    const/16 v56, 0x8

    aget-object v56, v24, v56

    int-to-double v0, v15

    move-wide/from16 v58, v0

    const-wide/high16 v60, 0x4059000000000000L    # 100.0

    div-double v58, v58, v60

    .line 430
    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 433
    int-to-double v0, v15

    move-wide/from16 v56, v0

    const-wide/high16 v58, 0x4059000000000000L    # 100.0

    div-double v16, v56, v58

    .line 435
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

    .line 436
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

    .line 438
    add-int/lit8 v41, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v41    # "tmpNext":I
    :try_start_8
    aget-byte v5, p1, v40

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v5

    int-to-double v0, v5

    move-wide/from16 v56, v0

    const-wide/high16 v58, 0x4024000000000000L    # 10.0

    div-double v36, v56, v58

    .line 440
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0xa

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-wide/from16 v1, v36

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 442
    add-int/lit8 v40, v41, 0x1

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :try_start_9
    aget-byte v15, p1, v41

    .line 443
    move/from16 v38, v15

    .line 444
    .local v38, "stepStatus":I
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0xb

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    invoke-virtual {v5, v0, v15}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 456
    add-int/lit8 v41, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v41    # "tmpNext":I
    :try_start_a
    aget-byte v5, p1, v40

    .line 455
    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v5

    int-to-double v0, v5

    move-wide/from16 v56, v0

    .line 456
    const-wide/high16 v58, 0x4059000000000000L    # 100.0

    .line 455
    div-double v12, v56, v58

    .line 458
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0xc

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    invoke-virtual {v5, v0, v12, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 460
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    move-wide/from16 v56, v0

    add-double v56, v56, v12

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    .line 461
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

    .line 463
    add-int/lit8 v40, v41, 0x1

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :try_start_b
    aget-byte v15, p1, v41

    .line 464
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    .line 465
    const/16 v56, 0xe

    aget-object v56, v24, v56

    int-to-double v0, v15

    move-wide/from16 v58, v0

    const-wide/high16 v60, 0x4024000000000000L    # 10.0

    div-double v58, v58, v60

    .line 464
    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 467
    add-int/lit8 v41, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v41    # "tmpNext":I
    :try_start_c
    aget-byte v15, p1, v40

    .line 468
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0xf

    aget-object v56, v24, v56

    int-to-long v0, v15

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 470
    int-to-long v0, v15

    move-wide/from16 v54, v0

    .line 472
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    move-wide/from16 v56, v0

    int-to-long v0, v15

    move-wide/from16 v58, v0

    add-long v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    .line 473
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x10

    aget-object v56, v24, v56

    .line 474
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    move-wide/from16 v58, v0

    .line 473
    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 476
    add-int/lit8 v40, v41, 0x1

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :try_start_d
    aget-byte v15, p1, v41

    .line 477
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x11

    aget-object v56, v24, v56

    int-to-long v0, v15

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 479
    int-to-long v0, v15

    move-wide/from16 v48, v0

    .line 481
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    move-wide/from16 v56, v0

    int-to-long v0, v15

    move-wide/from16 v58, v0

    add-long v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    .line 482
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x12

    aget-object v56, v24, v56

    .line 483
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    move-wide/from16 v58, v0

    .line 482
    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 485
    add-int/lit8 v41, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v41    # "tmpNext":I
    :try_start_e
    aget-byte v15, p1, v40

    .line 486
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x13

    aget-object v56, v24, v56

    int-to-long v0, v15

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 488
    int-to-long v0, v15

    move-wide/from16 v32, v0

    .line 490
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    move-wide/from16 v56, v0

    int-to-long v0, v15

    move-wide/from16 v58, v0

    add-long v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    .line 491
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x14

    aget-object v56, v24, v56

    .line 492
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    move-wide/from16 v58, v0

    .line 491
    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 494
    add-int/lit8 v40, v41, 0x1

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :try_start_f
    aget-byte v15, p1, v41

    .line 495
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x15

    aget-object v56, v24, v56

    int-to-long v0, v15

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 497
    int-to-long v0, v15

    move-wide/from16 v26, v0

    .line 499
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    move-wide/from16 v56, v0

    int-to-long v0, v15

    move-wide/from16 v58, v0

    add-long v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    .line 500
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x16

    aget-object v56, v24, v56

    .line 501
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    move-wide/from16 v58, v0

    .line 500
    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 503
    const-wide/16 v56, 0x0

    cmp-long v5, v42, v56

    if-lez v5, :cond_2

    .line 505
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    const/16 v56, 0x1

    move/from16 v0, v56

    invoke-virtual {v5, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->updateBufferIndex(I)V

    .line 507
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v42

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putTotalStepInfoSingle(J)V

    .line 508
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v50

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkStepInfoSingle(J)V

    .line 509
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v28

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunStepInfoSingle(J)V

    .line 510
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v54

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkUpStepInfoSingle(J)V

    .line 511
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v32

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunUpStepInfoSingle(J)V

    .line 512
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v48

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkDnStepInfoSingle(J)V

    .line 513
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v26

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunDnStepInfoSingle(J)V

    .line 514
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putDistanceInfoSingle(D)V

    .line 515
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v5, v12, v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putCalorieInfoSingle(D)V

    .line 516
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v36

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putSpeedInfoSingle(D)V

    .line 517
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    const/16 v56, 0x1

    move/from16 v0, v56

    invoke-virtual {v5, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->setDataMode(I)V

    .line 817
    :cond_2
    :goto_0
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 820
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 823
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

    .line 825
    return v40

    .line 519
    .end local v38    # "stepStatus":I
    :cond_3
    and-int/lit16 v5, v15, 0xc0

    shr-int/lit8 v5, v5, 0x6

    const/16 v56, 0x3

    move/from16 v0, v56

    if-ne v5, v0, :cond_8

    .line 520
    :try_start_10
    move-object/from16 v0, p1

    array-length v5, v0

    sub-int v5, v5, v40

    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_4

    .line 521
    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 522
    const/4 v5, -0x1

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v56, v0

    invoke-interface/range {v56 .. v56}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 522
    return v5

    .line 525
    :cond_4
    add-int/lit8 v41, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v41    # "tmpNext":I
    :try_start_11
    aget-byte v21, p1, v40

    .line 526
    .local v21, "loggingCount":I
    if-gtz v21, :cond_5

    .line 527
    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_LOGGING_PACKAGE_SIZE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 529
    const/4 v5, -0x1

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v56, v0

    invoke-interface/range {v56 .. v56}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 529
    return v5

    .line 532
    :cond_5
    :try_start_12
    move/from16 v0, v21

    new-array v0, v0, [J

    move-object/from16 v39, v0

    .line 533
    .local v39, "timeStampArray":[J
    move/from16 v0, v21

    new-array v0, v0, [D

    move-object/from16 v18, v0

    .line 534
    .local v18, "distanceDiffArray":[D
    move/from16 v0, v21

    new-array v14, v0, [D

    .line 535
    .local v14, "calorieDiffArray":[D
    move/from16 v0, v21

    new-array v0, v0, [D

    move-object/from16 v35, v0

    .line 536
    .local v35, "speedArray":[D
    move/from16 v0, v21

    new-array v0, v0, [J

    move-object/from16 v52, v0

    .line 537
    .local v52, "walkStepCountDiffArray":[J
    move/from16 v0, v21

    new-array v0, v0, [J

    move-object/from16 v30, v0

    .line 538
    .local v30, "runStepCountDiffArray":[J
    move/from16 v0, v21

    new-array v0, v0, [J

    move-object/from16 v53, v0

    .line 539
    .local v53, "walkUpStepCountDiffArray":[J
    move/from16 v0, v21

    new-array v0, v0, [J

    move-object/from16 v45, v0

    .line 540
    .local v45, "walkDownStepCountDiffArray":[J
    move/from16 v0, v21

    new-array v0, v0, [J

    move-object/from16 v31, v0

    .line 541
    .local v31, "runUpStepCountDiffArray":[J
    move/from16 v0, v21

    new-array v0, v0, [J

    move-object/from16 v25, v0

    .line 542
    .local v25, "runDownStepCountDiffArray":[J
    move/from16 v0, v21

    new-array v0, v0, [J

    move-object/from16 v44, v0

    .line 543
    .local v44, "totalStepCountDiffArray":[J
    const/16 v38, -0x1

    .line 545
    .restart local v38    # "stepStatus":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 546
    move-object/from16 v0, p1

    array-length v5, v0

    sub-int v5, v5, v41

    add-int/lit8 v5, v5, -0x14

    if-gez v5, :cond_6

    .line 547
    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 549
    const/4 v5, -0x1

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v56, v0

    invoke-interface/range {v56 .. v56}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 549
    return v5

    .line 552
    :cond_6
    add-int/lit8 v40, v41, 0x1

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :try_start_13
    aget-byte v5, p1, v41
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    .line 553
    add-int/lit8 v41, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v41    # "tmpNext":I
    :try_start_14
    aget-byte v56, p1, v40
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    shl-int/lit8 v56, v56, 0x10

    .line 552
    add-int v5, v5, v56

    .line 554
    add-int/lit8 v40, v41, 0x1

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :try_start_15
    aget-byte v56, p1, v41
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    shl-int/lit8 v56, v56, 0x8

    .line 552
    add-int v5, v5, v56

    .line 554
    add-int/lit8 v41, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v41    # "tmpNext":I
    :try_start_16
    aget-byte v56, p1, v40

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    .line 552
    add-int v5, v5, v56

    int-to-long v10, v5

    .line 556
    .local v10, "tmpTimeStamp":J
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v5

    invoke-virtual/range {v5 .. v11}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC24(JJJ)J

    move-result-wide v56

    aput-wide v56, v39, v20
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 560
    add-int/lit8 v40, v41, 0x1

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :try_start_17
    aget-byte v5, p1, v41
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    .line 561
    add-int/lit8 v41, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v41    # "tmpNext":I
    :try_start_18
    aget-byte v56, p1, v40

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    .line 560
    add-int v15, v5, v56

    .line 562
    int-to-double v0, v15

    move-wide/from16 v56, v0

    const-wide/high16 v58, 0x4059000000000000L    # 100.0

    div-double v56, v56, v58

    aput-wide v56, v18, v20
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 564
    add-int/lit8 v40, v41, 0x1

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :try_start_19
    aget-byte v5, p1, v41
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    .line 565
    add-int/lit8 v41, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v41    # "tmpNext":I
    :try_start_1a
    aget-byte v56, p1, v40

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    .line 564
    add-int v15, v5, v56

    .line 566
    int-to-double v0, v15

    move-wide/from16 v56, v0

    const-wide/high16 v58, 0x4059000000000000L    # 100.0

    div-double v56, v56, v58

    aput-wide v56, v14, v20
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 569
    add-int/lit8 v40, v41, 0x1

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :try_start_1b
    aget-byte v5, p1, v41

    .line 568
    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v56, v0

    aput-wide v56, v52, v20
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 570
    add-int/lit8 v41, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v41    # "tmpNext":I
    :try_start_1c
    aget-byte v5, p1, v40
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v40, v41, 0x1

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
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

    .line 572
    add-int/lit8 v41, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v41    # "tmpNext":I
    :try_start_1e
    aget-byte v5, p1, v40

    .line 571
    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v56, v0

    aput-wide v56, v53, v20
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    .line 574
    add-int/lit8 v40, v41, 0x1

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :try_start_1f
    aget-byte v5, p1, v41

    .line 573
    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v56, v0

    aput-wide v56, v45, v20
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 575
    add-int/lit8 v41, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v41    # "tmpNext":I
    :try_start_20
    aget-byte v5, p1, v40
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v40, v41, 0x1

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
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

    .line 576
    add-int/lit8 v41, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v41    # "tmpNext":I
    :try_start_22
    aget-byte v5, p1, v40
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v40, v41, 0x1

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
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

    .line 579
    add-int/lit8 v41, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v41    # "tmpNext":I
    :try_start_24
    aget-byte v5, p1, v40

    .line 578
    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v5

    int-to-double v0, v5

    move-wide/from16 v56, v0

    .line 579
    const-wide/high16 v58, 0x4024000000000000L    # 10.0

    .line 578
    div-double v56, v56, v58

    aput-wide v56, v35, v20
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    .line 580
    add-int/lit8 v40, v41, 0x1

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :try_start_25
    aget-byte v5, p1, v41
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v41, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v41    # "tmpNext":I
    :try_start_26
    aget-byte v56, p1, v40

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    add-int v5, v5, v56

    int-to-long v0, v5

    move-wide/from16 v56, v0

    aput-wide v56, v44, v20

    .line 582
    aget-wide v56, v18, v20

    add-double v16, v16, v56

    .line 583
    aget-wide v56, v14, v20

    add-double v12, v12, v56

    .line 584
    aget-wide v56, v35, v20

    add-double v36, v36, v56

    .line 586
    aget-wide v56, v44, v20

    add-long v42, v42, v56

    .line 587
    aget-wide v56, v52, v20

    add-long v50, v50, v56

    .line 588
    aget-wide v56, v30, v20

    add-long v28, v28, v56

    .line 589
    aget-wide v56, v53, v20

    add-long v54, v54, v56

    .line 590
    aget-wide v56, v45, v20

    add-long v48, v48, v56

    .line 591
    aget-wide v56, v31, v20

    add-long v32, v32, v56

    .line 592
    aget-wide v56, v25, v20

    add-long v26, v26, v56

    .line 594
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    const/16 v56, 0x2

    move/from16 v0, v56

    invoke-virtual {v5, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->updateBufferIndex(I)V

    .line 595
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v56, v39, v20

    move-wide/from16 v0, v56

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putTimestamp(J)V

    .line 596
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v56, v44, v20

    move-wide/from16 v0, v56

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putTotalStepInfo(J)V

    .line 597
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v56, v52, v20

    move-wide/from16 v0, v56

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkStepInfo(J)V

    .line 598
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v56, v30, v20

    move-wide/from16 v0, v56

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunStepInfo(J)V

    .line 599
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v56, v53, v20

    move-wide/from16 v0, v56

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkUpStepInfo(J)V

    .line 600
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v56, v31, v20

    move-wide/from16 v0, v56

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunUpStepInfo(J)V

    .line 601
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v56, v45, v20

    move-wide/from16 v0, v56

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkDnStepInfo(J)V

    .line 602
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v56, v25, v20

    move-wide/from16 v0, v56

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunDnStepInfo(J)V

    .line 603
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v56, v18, v20

    move-wide/from16 v0, v56

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putDistanceInfo(D)V

    .line 604
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v56, v14, v20

    move-wide/from16 v0, v56

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putCalorieInfo(D)V

    .line 605
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v56, v35, v20

    move-wide/from16 v0, v56

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putSpeedInfo(D)V

    .line 606
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    const/16 v56, 0x2

    move/from16 v0, v56

    invoke-virtual {v5, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->setDataMode(I)V

    .line 545
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 609
    .end local v10    # "tmpTimeStamp":J
    :cond_7
    add-long v56, v54, v48

    add-long v56, v56, v32

    add-long v46, v56, v26

    .line 613
    .local v46, "upDownStepCountDiff":J
    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v56, v0

    div-double v36, v36, v56

    .line 615
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x0

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-wide/from16 v1, v50

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 616
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move-wide/from16 v56, v0

    add-long v56, v56, v50

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    .line 617
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x1

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 619
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x2

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-wide/from16 v1, v28

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 620
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    move-wide/from16 v56, v0

    add-long v56, v56, v28

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    .line 621
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x3

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 623
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x4

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-wide/from16 v1, v46

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 624
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    move-wide/from16 v56, v0

    add-long v56, v56, v46

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    .line 625
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x5

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 627
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x6

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-wide/from16 v1, v42

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 628
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    move-wide/from16 v56, v0

    add-long v56, v56, v42

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    .line 629
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x7

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 631
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x8

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-wide/from16 v1, v16

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 632
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    move-wide/from16 v56, v0

    add-double v56, v56, v16

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    .line 633
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x9

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 635
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0xa

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-wide/from16 v1, v36

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 636
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0xb

    aget-object v56, v24, v56

    const/16 v57, -0x1

    move-object/from16 v0, v56

    move/from16 v1, v57

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 638
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0xc

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    invoke-virtual {v5, v0, v12, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 639
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    move-wide/from16 v56, v0

    add-double v56, v56, v12

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    .line 640
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0xd

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 642
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0xe

    aget-object v56, v24, v56

    const-wide/16 v58, 0x0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 644
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0xf

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-wide/from16 v1, v54

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 645
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    move-wide/from16 v56, v0

    add-long v56, v56, v54

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    .line 646
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x10

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 648
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x11

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-wide/from16 v1, v48

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 649
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    move-wide/from16 v56, v0

    add-long v56, v56, v48

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    .line 650
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x12

    aget-object v56, v24, v56

    .line 651
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    move-wide/from16 v58, v0

    .line 650
    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 653
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x13

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-wide/from16 v1, v32

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 654
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    move-wide/from16 v56, v0

    add-long v56, v56, v32

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    .line 655
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x14

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 657
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x15

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-wide/from16 v1, v26

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 658
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    move-wide/from16 v56, v0

    add-long v56, v56, v26

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    .line 659
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    .line 660
    const/16 v56, 0x16

    aget-object v56, v24, v56

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    move-wide/from16 v58, v0

    .line 659
    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 662
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x17

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 663
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x18

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-object/from16 v1, v39

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 664
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x19

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 665
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x1a

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    invoke-virtual {v5, v0, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 666
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x1b

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 667
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x1c

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-object/from16 v1, v52

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 668
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x1d

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 669
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x1e

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-object/from16 v1, v53

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 670
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x1f

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-object/from16 v1, v45

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 671
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x20

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-object/from16 v1, v31

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 672
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x21

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 673
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x22

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-object/from16 v1, v44

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1

    move/from16 v40, v41

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    goto/16 :goto_0

    .line 676
    .end local v14    # "calorieDiffArray":[D
    .end local v18    # "distanceDiffArray":[D
    .end local v20    # "i":I
    .end local v21    # "loggingCount":I
    .end local v25    # "runDownStepCountDiffArray":[J
    .end local v30    # "runStepCountDiffArray":[J
    .end local v31    # "runUpStepCountDiffArray":[J
    .end local v35    # "speedArray":[D
    .end local v38    # "stepStatus":I
    .end local v39    # "timeStampArray":[J
    .end local v44    # "totalStepCountDiffArray":[J
    .end local v45    # "walkDownStepCountDiffArray":[J
    .end local v46    # "upDownStepCountDiff":J
    .end local v52    # "walkStepCountDiffArray":[J
    .end local v53    # "walkUpStepCountDiffArray":[J
    :cond_8
    :try_start_27
    move-object/from16 v0, p1

    array-length v5, v0

    sub-int v5, v5, v40

    add-int/lit8 v5, v5, -0x20

    if-gez v5, :cond_9

    .line 677
    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    .line 678
    const/4 v5, -0x1

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v56, v0

    invoke-interface/range {v56 .. v56}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 678
    return v5

    .line 681
    :cond_9
    add-int/lit8 v41, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v41    # "tmpNext":I
    :try_start_28
    aget-byte v5, p1, v40
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    .line 682
    add-int/lit8 v40, v41, 0x1

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :try_start_29
    aget-byte v56, p1, v41
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    shl-int/lit8 v56, v56, 0x8

    .line 681
    add-int v5, v5, v56

    .line 683
    add-int/lit8 v41, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v41    # "tmpNext":I
    :try_start_2a
    aget-byte v56, p1, v40

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    .line 681
    add-int v15, v5, v56

    .line 684
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x0

    aget-object v56, v24, v56

    int-to-long v0, v15

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 686
    int-to-long v0, v15

    move-wide/from16 v50, v0

    .line 688
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move-wide/from16 v56, v0

    int-to-long v0, v15

    move-wide/from16 v58, v0

    add-long v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    .line 689
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x1

    aget-object v56, v24, v56

    .line 690
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move-wide/from16 v58, v0

    .line 689
    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1

    .line 692
    add-int/lit8 v40, v41, 0x1

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :try_start_2b
    aget-byte v5, p1, v41
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    .line 693
    add-int/lit8 v41, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v41    # "tmpNext":I
    :try_start_2c
    aget-byte v56, p1, v40
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    shl-int/lit8 v56, v56, 0x8

    .line 692
    add-int v5, v5, v56

    .line 694
    add-int/lit8 v40, v41, 0x1

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :try_start_2d
    aget-byte v56, p1, v41

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    .line 692
    add-int v15, v5, v56

    .line 695
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x2

    aget-object v56, v24, v56

    int-to-long v0, v15

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 697
    int-to-long v0, v15

    move-wide/from16 v28, v0

    .line 699
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    move-wide/from16 v56, v0

    int-to-long v0, v15

    move-wide/from16 v58, v0

    add-long v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    .line 700
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x3

    aget-object v56, v24, v56

    .line 701
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    move-wide/from16 v58, v0

    .line 700
    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    .line 703
    add-int/lit8 v41, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v41    # "tmpNext":I
    :try_start_2e
    aget-byte v5, p1, v40
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    .line 704
    add-int/lit8 v40, v41, 0x1

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :try_start_2f
    aget-byte v56, p1, v41
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    shl-int/lit8 v56, v56, 0x8

    .line 703
    add-int v5, v5, v56

    .line 705
    add-int/lit8 v41, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v41    # "tmpNext":I
    :try_start_30
    aget-byte v56, p1, v40

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    .line 703
    add-int v15, v5, v56

    .line 706
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x4

    aget-object v56, v24, v56

    int-to-long v0, v15

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 708
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    move-wide/from16 v56, v0

    int-to-long v0, v15

    move-wide/from16 v58, v0

    add-long v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    .line 709
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x5

    aget-object v56, v24, v56

    .line 710
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    move-wide/from16 v58, v0

    .line 709
    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_1

    .line 712
    add-int/lit8 v40, v41, 0x1

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :try_start_31
    aget-byte v5, p1, v41
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    .line 713
    add-int/lit8 v41, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v41    # "tmpNext":I
    :try_start_32
    aget-byte v56, p1, v40
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_1

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    shl-int/lit8 v56, v56, 0x8

    .line 712
    add-int v5, v5, v56

    .line 714
    add-int/lit8 v40, v41, 0x1

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :try_start_33
    aget-byte v56, p1, v41

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    .line 712
    add-int v15, v5, v56

    .line 715
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x6

    aget-object v56, v24, v56

    int-to-long v0, v15

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 717
    int-to-long v0, v15

    move-wide/from16 v42, v0

    .line 719
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    move-wide/from16 v56, v0

    int-to-long v0, v15

    move-wide/from16 v58, v0

    add-long v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    .line 720
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x7

    aget-object v56, v24, v56

    .line 721
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    move-wide/from16 v58, v0

    .line 720
    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_0

    .line 723
    add-int/lit8 v41, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v41    # "tmpNext":I
    :try_start_34
    aget-byte v5, p1, v40
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    .line 724
    add-int/lit8 v40, v41, 0x1

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :try_start_35
    aget-byte v56, p1, v41
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_0

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    shl-int/lit8 v56, v56, 0x8

    .line 723
    add-int v5, v5, v56

    .line 725
    add-int/lit8 v41, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v41    # "tmpNext":I
    :try_start_36
    aget-byte v56, p1, v40

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    .line 723
    add-int v15, v5, v56

    .line 726
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    .line 727
    const/16 v56, 0x8

    aget-object v56, v24, v56

    int-to-double v0, v15

    move-wide/from16 v58, v0

    const-wide/high16 v60, 0x4059000000000000L    # 100.0

    div-double v58, v58, v60

    .line 726
    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 729
    int-to-double v0, v15

    move-wide/from16 v56, v0

    const-wide/high16 v58, 0x4059000000000000L    # 100.0

    div-double v16, v56, v58

    .line 731
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

    .line 732
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

    .line 734
    add-int/lit8 v40, v41, 0x1

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :try_start_37
    aget-byte v5, p1, v41

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v5

    int-to-double v0, v5

    move-wide/from16 v56, v0

    const-wide/high16 v58, 0x4024000000000000L    # 10.0

    div-double v36, v56, v58

    .line 735
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0xa

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    move-wide/from16 v1, v36

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_0

    .line 737
    add-int/lit8 v41, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v41    # "tmpNext":I
    :try_start_38
    aget-byte v15, p1, v40

    .line 738
    move/from16 v38, v15

    .line 739
    .restart local v38    # "stepStatus":I
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0xb

    aget-object v56, v24, v56

    move-object/from16 v0, v56

    invoke-virtual {v5, v0, v15}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1

    .line 741
    add-int/lit8 v40, v41, 0x1

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :try_start_39
    aget-byte v5, p1, v41
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    .line 742
    add-int/lit8 v41, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v41    # "tmpNext":I
    :try_start_3a
    aget-byte v56, p1, v40

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    .line 741
    add-int v15, v5, v56

    .line 743
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    .line 744
    const/16 v56, 0xc

    aget-object v56, v24, v56

    int-to-double v0, v15

    move-wide/from16 v58, v0

    const-wide/high16 v60, 0x4024000000000000L    # 10.0

    div-double v58, v58, v60

    .line 743
    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 746
    int-to-double v0, v15

    move-wide/from16 v56, v0

    const-wide/high16 v58, 0x4024000000000000L    # 10.0

    div-double v12, v56, v58

    .line 748
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

    .line 749
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

    .line 751
    add-int/lit8 v40, v41, 0x1

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :try_start_3b
    aget-byte v15, p1, v41

    .line 752
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    .line 753
    const/16 v56, 0xe

    aget-object v56, v24, v56

    int-to-double v0, v15

    move-wide/from16 v58, v0

    const-wide/high16 v60, 0x4024000000000000L    # 10.0

    div-double v58, v58, v60

    .line 752
    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_0

    .line 755
    add-int/lit8 v41, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v41    # "tmpNext":I
    :try_start_3c
    aget-byte v5, p1, v40
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    .line 756
    add-int/lit8 v40, v41, 0x1

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :try_start_3d
    aget-byte v56, p1, v41
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_0

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    shl-int/lit8 v56, v56, 0x8

    .line 755
    add-int v5, v5, v56

    .line 757
    add-int/lit8 v41, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v41    # "tmpNext":I
    :try_start_3e
    aget-byte v56, p1, v40

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    .line 755
    add-int v15, v5, v56

    .line 758
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0xf

    aget-object v56, v24, v56

    int-to-long v0, v15

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 760
    int-to-long v0, v15

    move-wide/from16 v54, v0

    .line 762
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    move-wide/from16 v56, v0

    int-to-long v0, v15

    move-wide/from16 v58, v0

    add-long v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    .line 763
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x10

    aget-object v56, v24, v56

    .line 764
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    move-wide/from16 v58, v0

    .line 763
    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_1

    .line 766
    add-int/lit8 v40, v41, 0x1

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :try_start_3f
    aget-byte v5, p1, v41
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    .line 767
    add-int/lit8 v41, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v41    # "tmpNext":I
    :try_start_40
    aget-byte v56, p1, v40
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_1

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    shl-int/lit8 v56, v56, 0x8

    .line 766
    add-int v5, v5, v56

    .line 768
    add-int/lit8 v40, v41, 0x1

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :try_start_41
    aget-byte v56, p1, v41

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    .line 766
    add-int v15, v5, v56

    .line 769
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x11

    aget-object v56, v24, v56

    int-to-long v0, v15

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 771
    int-to-long v0, v15

    move-wide/from16 v48, v0

    .line 773
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    move-wide/from16 v56, v0

    int-to-long v0, v15

    move-wide/from16 v58, v0

    add-long v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    .line 774
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x12

    aget-object v56, v24, v56

    .line 775
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    move-wide/from16 v58, v0

    .line 774
    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_0

    .line 777
    add-int/lit8 v41, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v41    # "tmpNext":I
    :try_start_42
    aget-byte v5, p1, v40
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    .line 778
    add-int/lit8 v40, v41, 0x1

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :try_start_43
    aget-byte v56, p1, v41
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_0

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    shl-int/lit8 v56, v56, 0x8

    .line 777
    add-int v5, v5, v56

    .line 779
    add-int/lit8 v41, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v41    # "tmpNext":I
    :try_start_44
    aget-byte v56, p1, v40

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    .line 777
    add-int v15, v5, v56

    .line 780
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x13

    aget-object v56, v24, v56

    int-to-long v0, v15

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 782
    int-to-long v0, v15

    move-wide/from16 v32, v0

    .line 784
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    move-wide/from16 v56, v0

    int-to-long v0, v15

    move-wide/from16 v58, v0

    add-long v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    .line 785
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x14

    aget-object v56, v24, v56

    .line 786
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    move-wide/from16 v58, v0

    .line 785
    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_1

    .line 788
    add-int/lit8 v40, v41, 0x1

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :try_start_45
    aget-byte v5, p1, v41
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    .line 789
    add-int/lit8 v41, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v41    # "tmpNext":I
    :try_start_46
    aget-byte v56, p1, v40
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_1

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    shl-int/lit8 v56, v56, 0x8

    .line 788
    add-int v5, v5, v56

    .line 790
    add-int/lit8 v40, v41, 0x1

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :try_start_47
    aget-byte v56, p1, v41

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0xff

    move/from16 v56, v0

    .line 788
    add-int v15, v5, v56

    .line 791
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x15

    aget-object v56, v24, v56

    int-to-long v0, v15

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 793
    int-to-long v0, v15

    move-wide/from16 v26, v0

    .line 795
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    move-wide/from16 v56, v0

    int-to-long v0, v15

    move-wide/from16 v58, v0

    add-long v56, v56, v58

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    .line 796
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v56, 0x16

    aget-object v56, v24, v56

    .line 797
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    move-wide/from16 v58, v0

    .line 796
    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 799
    const-wide/16 v56, 0x0

    cmp-long v5, v42, v56

    if-lez v5, :cond_2

    .line 801
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    const/16 v56, 0x1

    move/from16 v0, v56

    invoke-virtual {v5, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->updateBufferIndex(I)V

    .line 803
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v42

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putTotalStepInfoSingle(J)V

    .line 804
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v50

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkStepInfoSingle(J)V

    .line 805
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v28

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunStepInfoSingle(J)V

    .line 806
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v54

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkUpStepInfoSingle(J)V

    .line 807
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v32

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunUpStepInfoSingle(J)V

    .line 808
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v48

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkDnStepInfoSingle(J)V

    .line 809
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v26

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunDnStepInfoSingle(J)V

    .line 810
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putDistanceInfoSingle(D)V

    .line 811
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v5, v12, v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putCalorieInfoSingle(D)V

    .line 812
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v0, v36

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putSpeedInfoSingle(D)V

    .line 813
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    const/16 v56, 0x1

    move/from16 v0, v56

    invoke-virtual {v5, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->setDataMode(I)V
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_0

    goto/16 :goto_0

    .line 819
    .end local v4    # "calender":Ljava/util/Calendar;
    .end local v6    # "curUtcTime":J
    .end local v8    # "curTimeMillis":J
    .end local v12    # "calorieDiff":D
    .end local v15    # "data":I
    .end local v16    # "distanceDiff":D
    .end local v19    # "hour":I
    .end local v22    # "milliSec":I
    .end local v23    # "minute":I
    .end local v24    # "names":[Ljava/lang/String;
    .end local v26    # "runDownStepCountDiff":J
    .end local v28    # "runStepCountDiff":J
    .end local v32    # "runUpStepCountDiff":J
    .end local v34    # "second":I
    .end local v36    # "speed":D
    .end local v38    # "stepStatus":I
    .end local v42    # "totalStepCountDiff":J
    .end local v48    # "walkDownStepCountDiff":J
    .end local v50    # "walkStepCountDiff":J
    .end local v54    # "walkUpStepCountDiff":J
    :catchall_0
    move-exception v5

    .line 820
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v56, v0

    invoke-interface/range {v56 .. v56}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 819
    throw v5

    .end local v40    # "tmpNext":I
    .restart local v4    # "calender":Ljava/util/Calendar;
    .restart local v6    # "curUtcTime":J
    .restart local v8    # "curTimeMillis":J
    .restart local v12    # "calorieDiff":D
    .restart local v15    # "data":I
    .restart local v16    # "distanceDiff":D
    .restart local v19    # "hour":I
    .restart local v22    # "milliSec":I
    .restart local v23    # "minute":I
    .restart local v24    # "names":[Ljava/lang/String;
    .restart local v26    # "runDownStepCountDiff":J
    .restart local v28    # "runStepCountDiff":J
    .restart local v32    # "runUpStepCountDiff":J
    .restart local v34    # "second":I
    .restart local v36    # "speed":D
    .restart local v41    # "tmpNext":I
    .restart local v42    # "totalStepCountDiff":J
    .restart local v48    # "walkDownStepCountDiff":J
    .restart local v50    # "walkStepCountDiff":J
    .restart local v54    # "walkUpStepCountDiff":J
    :catchall_1
    move-exception v5

    move/from16 v40, v41

    .end local v41    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    goto :goto_2
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 9
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
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 913
    const/4 v2, 0x1

    .line 914
    .local v2, "result":Z
    new-array v1, v5, [B

    .line 916
    .local v1, "dataPacket":[B
    const/4 v3, 0x5

    if-ne p1, v3, :cond_0

    .line 917
    const-string/jumbo v3, "Height"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 919
    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v4

    .line 920
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 919
    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->setUserHeight(D)V

    .line 922
    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getUserHeight()D

    move-result-wide v4

    double-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v8

    .line 924
    const/16 v3, 0x12

    .line 923
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendCommonValueToSensorHub(B[B)Z

    move-result v2

    .line 962
    .end local v2    # "result":Z
    :goto_0
    return v2

    .line 925
    .restart local v2    # "result":Z
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_0
    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    .line 926
    const-string/jumbo v3, "Weight"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 928
    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v4

    .line 929
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 928
    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->setUserWeight(D)V

    .line 931
    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getUserWeight()D

    move-result-wide v4

    double-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v8

    .line 933
    const/16 v3, 0x13

    .line 932
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendCommonValueToSensorHub(B[B)Z

    move-result v2

    .local v2, "result":Z
    goto :goto_0

    .line 934
    .local v2, "result":Z
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_1
    const/4 v3, 0x6

    if-ne p1, v3, :cond_2

    .line 935
    const-string/jumbo v3, "Gender"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 937
    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v4

    .line 938
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 937
    invoke-virtual {v4, v3}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->setUserGender(I)V

    .line 940
    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getUserGender()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v8

    .line 942
    const/16 v3, 0x14

    .line 941
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendCommonValueToSensorHub(B[B)Z

    move-result v2

    .local v2, "result":Z
    goto :goto_0

    .line 943
    .local v2, "result":Z
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_2
    const/16 v3, 0x11

    if-ne p1, v3, :cond_3

    .line 944
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 946
    .local v0, "count":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Delivery Count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 949
    invoke-static {v0, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    .line 948
    const/16 v4, 0x15

    .line 947
    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendCommonValueToSensorHub(B[B)Z

    move-result v2

    .local v2, "result":Z
    goto/16 :goto_0

    .line 950
    .end local v0    # "count":I
    .local v2, "result":Z
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_3
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    .line 951
    const-string/jumbo v3, "History Data"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 952
    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 954
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendHistoryStepBuffer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 956
    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 955
    :catchall_0
    move-exception v3

    .line 956
    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 955
    throw v3

    .line 959
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0
.end method
