.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;
.source "ActivityTrackerBatchRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;
    }
.end annotation


# static fields
.field private static CHECK_PERIOD:J = 0x0L

.field private static DEFAULT_ACTIVITY_RECORDING_PERIOD:I = 0x0

.field private static final DEFAULT_BATCHING_PERIOD:I = 0x4b0

.field private static final MSG_TIMER_EXPIRED:I = 0xfeed

.field private static final mBatchingPeriod:I = 0x4b0


# instance fields
.field private final mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

.field private mHandler:Landroid/os/Handler;

.field private mHistoryDataReq:Z

.field private final mListActivityInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMutex:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mMutex:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mHistoryDataReq:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->sendHistoryData()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const v0, 0x1b7740

    sput v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->DEFAULT_ACTIVITY_RECORDING_PERIOD:I

    const-wide/16 v0, 0x4e20

    sput-wide v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->CHECK_PERIOD:J

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mHistoryDataReq:Z

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mMutex:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    invoke-direct {p0, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->createHandler(Landroid/os/Looper;)V

    return-void
.end method

.method private createHandler(Landroid/os/Looper;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$1;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getMostActivity()I
    .locals 14

    iget-object v9, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v4, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    if-lez v5, :cond_0

    iget-object v9, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget-wide v10, v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    sget-wide v12, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->CHECK_PERIOD:J

    cmp-long v9, v10, v12

    if-lez v9, :cond_1

    iget-object v9, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget v4, v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->activityType:I

    :cond_0
    :goto_0
    return v4

    :cond_1
    const-wide/16 v6, 0x0

    add-int/lit8 v1, v5, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    add-int/lit8 v0, v5, -0x1

    :goto_1
    const-wide/16 v10, 0x7530

    cmp-long v9, v6, v10

    if-gtz v9, :cond_4

    if-ltz v1, :cond_4

    iget-object v9, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget-wide v10, v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    const-wide/16 v12, 0xbb8

    cmp-long v9, v10, v12

    if-gez v9, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    iget-object v9, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget-wide v10, v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    long-to-float v9, v10

    int-to-float v10, v2

    div-float v8, v9, v10

    cmpg-float v9, v3, v8

    if-gez v9, :cond_3

    move v3, v8

    move v0, v1

    add-int/lit8 v2, v2, 0x1

    :cond_3
    iget-object v9, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget-wide v10, v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    add-long/2addr v6, v10

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    iget-object v9, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget v4, v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->activityType:I

    goto :goto_0
.end method

.method private sendHistoryData()V
    .locals 11

    const/4 v10, 0x0

    const-string/jumbo v8, "start"

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->getBufferSize()I

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v8, "History Data Buffer is null!!"

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_0
    new-array v1, v5, [I

    new-array v0, v5, [I

    new-array v2, v5, [J

    new-array v7, v5, [J

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    invoke-virtual {v8, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->getActivityType(I)I

    move-result v8

    aput v8, v1, v4

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    invoke-virtual {v8, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->getActivityAccuracy(I)I

    move-result v8

    aput v8, v0, v4

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    invoke-virtual {v8, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->getActivityDuration(I)J

    move-result-wide v8

    aput-wide v8, v2, v4

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    invoke-virtual {v8, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->getActivityTimestamp(I)J

    move-result-wide v8

    aput-wide v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    aget-object v9, v6, v10

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getModeType()B

    move-result v10

    int-to-short v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;S)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v9, v6, v9

    invoke-virtual {v8, v9, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    const/4 v9, 0x3

    aget-object v9, v6, v9

    invoke-virtual {v8, v9, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    const/4 v9, 0x4

    aget-object v9, v6, v9

    invoke-virtual {v8, v9, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    const/4 v9, 0x5

    aget-object v9, v6, v9

    invoke-virtual {v8, v9, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    const/4 v9, 0x6

    aget-object v9, v6, v9

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getMostActivity()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    const/4 v9, 0x7

    aget-object v9, v6, v9

    invoke-virtual {v8, v9, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    const/16 v9, 0x8

    aget-object v9, v6, v9

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->notifyObserver()V

    const-string/jumbo v8, "end"

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    return-void
.end method

.method private updateActivityInfo(J[I[J[II)V
    .locals 15

    const/4 v2, 0x0

    :goto_0
    move/from16 v0, p6

    if-ge v2, v0, :cond_4

    aget v8, p3, v2

    if-eqz v8, :cond_0

    aget v8, p5, v2

    if-nez v8, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_2

    aget v9, p3, v2

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget v8, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->activityType:I

    if-ne v9, v8, :cond_2

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    add-int/lit8 v9, v5, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget-wide v10, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    aget-wide v12, p4, v2

    add-long/2addr v10, v12

    iput-wide v10, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    const/4 v8, 0x0

    invoke-direct {v3, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;)V

    aget v8, p3, v2

    iput v8, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->activityType:I

    iget v8, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->activityType:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3

    const/4 v8, 0x1

    iput v8, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->activityType:I

    :cond_3
    aget-wide v8, p4, v2

    iput-wide v8, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    aget v8, p5, v2

    iput v8, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->accuracy:I

    move-wide/from16 v0, p1

    iput-wide v0, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->timestamp:J

    aget-wide v8, p4, v2

    add-long p1, p1, v8

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->DEFAULT_ACTIVITY_RECORDING_PERIOD:I

    int-to-long v10, v10

    sub-long v6, v8, v10

    const/4 v2, 0x0

    :goto_2
    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_5

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget-wide v8, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->timestamp:J

    cmp-long v8, v8, v6

    if-ltz v8, :cond_6

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_7

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mMutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->erase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mMutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->clear()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mMutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final disable()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mHistoryDataReq:Z

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mHandler:Landroid/os/Handler;

    const v1, 0xfeed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->disable()V

    return-void
.end method

.method public final enable()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->enable()V

    return-void
.end method

.method protected final getBatchingPeriod()I
    .locals 1

    const/16 v0, 0x4b0

    return v0
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER_BATCH:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContextValueNames()[Ljava/lang/String;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "OperationMode"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "TimeStamp"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "Count"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "ActivityType"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "Accuracy"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "Duration"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "MostActivity"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "TimeStampArray"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "HistoryMode"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method public final getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getModeType()B
    .locals 1

    const/4 v0, 0x2

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

.method public parse([BI)I
    .locals 20

    move/from16 v18, p2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v3, "parse start"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    move-object/from16 v0, p1

    array-length v3, v0

    sub-int v3, v3, p2

    add-int/lit8 v3, v3, -0x4

    if-gez v3, :cond_0

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v3, -0x1

    return v3

    :cond_0
    const/4 v3, 0x4

    new-array v0, v3, [B

    move-object/from16 v17, v0

    add-int/lit8 v18, p2, 0x1

    aget-byte v3, p1, p2

    const/4 v11, 0x0

    aput-byte v3, v17, v11

    add-int/lit8 v19, v18, 0x1

    aget-byte v3, p1, v18

    const/4 v11, 0x1

    aput-byte v3, v17, v11

    add-int/lit8 v18, v19, 0x1

    aget-byte v3, p1, v19

    const/4 v11, 0x2

    aput-byte v3, v17, v11

    add-int/lit8 v19, v18, 0x1

    aget-byte v3, p1, v18

    const/4 v11, 0x3

    aput-byte v3, v17, v11

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->byteArrayToLong([B)J

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(J)J

    move-result-wide v4

    move-object/from16 v0, p1

    array-length v3, v0

    sub-int v3, v3, v19

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_1

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v3, -0x1

    return v3

    :cond_1
    add-int/lit8 v18, v19, 0x1

    aget-byte v9, p1, v19

    if-gtz v9, :cond_2

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_BATCH_DATA_COUNT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v3, -0x1

    return v3

    :cond_2
    new-array v6, v9, [I

    new-array v8, v9, [I

    new-array v7, v9, [J

    const/4 v2, 0x0

    move/from16 v19, v18

    :goto_0
    if-ge v2, v9, :cond_4

    move-object/from16 v0, p1

    array-length v3, v0

    sub-int v3, v3, v19

    add-int/lit8 v3, v3, -0x5

    if-gez v3, :cond_3

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v3, -0x1

    return v3

    :cond_3
    add-int/lit8 v18, v19, 0x1

    aget-byte v3, p1, v19

    aput v3, v6, v2

    add-int/lit8 v19, v18, 0x1

    aget-byte v3, p1, v18

    aput v3, v8, v2

    add-int/lit8 v18, v19, 0x1

    aget-byte v3, p1, v19

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v19, v18, 0x1

    aget-byte v11, p1, v18

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    add-int/2addr v3, v11

    add-int/lit8 v18, v19, 0x1

    aget-byte v11, p1, v19

    and-int/lit16 v11, v11, 0xff

    add-int/2addr v3, v11

    int-to-long v12, v3

    aput-wide v12, v7, v2

    add-int/lit8 v2, v2, 0x1

    move/from16 v19, v18

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mMutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object/from16 v3, p0

    :try_start_0
    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->updateActivityInfo(J[I[J[II)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    move-wide v12, v4

    move-object v14, v6

    move-object v15, v8

    move-object/from16 v16, v7

    invoke-virtual/range {v11 .. v16}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->putActivityData(J[I[I[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v11, 0x0

    aget-object v11, v10, v11

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getModeType()B

    move-result v12

    int-to-short v12, v12

    invoke-virtual {v3, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;S)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v11, 0x1

    aget-object v11, v10, v11

    invoke-virtual {v3, v11, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v11, 0x2

    aget-object v11, v10, v11

    invoke-virtual {v3, v11, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v11, 0x3

    aget-object v11, v10, v11

    invoke-virtual {v3, v11, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v11, 0x4

    aget-object v11, v10, v11

    invoke-virtual {v3, v11, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v11, 0x5

    aget-object v11, v10, v11

    invoke-virtual {v3, v11, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v11, 0x6

    aget-object v11, v10, v11

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getMostActivity()I

    move-result v12

    invoke-virtual {v3, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->notifyObserver()V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mHistoryDataReq:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mHandler:Landroid/os/Handler;

    const v11, 0xfeed

    invoke-virtual {v3, v11}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mHistoryDataReq:Z

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->sendHistoryData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mMutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string/jumbo v3, "parse end"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    return v19

    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mMutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v11}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    const-string/jumbo v2, "History Data"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    new-array v0, v4, [B

    aput-byte v4, v0, v3

    aput-byte v3, v0, v6

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getInstLibType()B

    move-result v2

    const/16 v3, -0x48

    invoke-virtual {p0, v3, v2, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendCmdToSensorHub(BB[B)V

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    const v3, 0xfeed

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput-boolean v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mHistoryDataReq:Z

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
