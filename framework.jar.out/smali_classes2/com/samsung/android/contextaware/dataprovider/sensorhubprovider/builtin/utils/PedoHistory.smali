.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;
.super Ljava/lang/Object;
.source "PedoHistory.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;


# static fields
.field public static final DATA_MODE_BATCH:I = 0x2

.field public static final DATA_MODE_NORMAL:I = 0x1

.field private static final LOG_BUFFER_SIZE:I = 0x5a0

.field private static volatile mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;


# instance fields
.field private mAccumulatedCalorie:D

.field private mAccumulatedDistance:D

.field private mAccumulatedRunDnStep:J

.field private mAccumulatedRunStep:J

.field private mAccumulatedRunUpStep:J

.field private mAccumulatedTotalStep:J

.field private mAccumulatedWalkDnStep:J

.field private mAccumulatedWalkStep:J

.field private mAccumulatedWalkUpStep:J

.field private mAverageSpeed:D

.field private final mCalorieArray:[D

.field private final mDistanceArray:[D

.field private mHistoryArrayIndex:I

.field private mHistoryArraySize:I

.field private mLastDataMode:I

.field private mLastSavingTimestamp:J

.field private mNumAccumulatedData:D

.field private final mRunDnStepCountArray:[J

.field private final mRunStepCountArray:[J

.field private final mRunUpStepCountArray:[J

.field private final mSpeedArray:[D

.field private final mTimeStampArray:[J

.field private final mTotalStepCountArray:[J

.field private final mWalkDnStepCountArray:[J

.field private final mWalkStepCountArray:[J

.field private final mWalkUpStepCountArray:[J


# direct methods
.method private constructor <init>()V
    .locals 2

    const/16 v1, 0x5a0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mTimeStampArray:[J

    new-array v0, v1, [D

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mDistanceArray:[D

    new-array v0, v1, [D

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mCalorieArray:[D

    new-array v0, v1, [D

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mSpeedArray:[D

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkStepCountArray:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunStepCountArray:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkUpStepCountArray:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkDnStepCountArray:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunUpStepCountArray:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunDnStepCountArray:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mTotalStepCountArray:[J

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->initialize()V

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->registerObserver(Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;)V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;
    .locals 2

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    if-nez v0, :cond_1

    const-class v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getLastSavingTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mLastSavingTimestamp:J

    return-wide v0
.end method

.method private getLatestBufferIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    return v0
.end method

.method private increaseBufferIndex()V
    .locals 2

    const/16 v1, 0x5a0

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    :cond_0
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    :cond_1
    return-void
.end method

.method private initialize()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->resetAccumulatedStepInfo()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mLastSavingTimestamp:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mLastDataMode:I

    return-void
.end method

.method private resetAccumulatedStepInfo()V
    .locals 4

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedTotalStep:J

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkStep:J

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunStep:J

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkUpStep:J

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunUpStep:J

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkDnStep:J

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunDnStep:J

    iput-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedDistance:D

    iput-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedCalorie:D

    iput-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAverageSpeed:D

    iput-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mNumAccumulatedData:D

    return-void
.end method


# virtual methods
.method public erase()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->initialize()V

    const-string/jumbo v0, "erased"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    return-void
.end method

.method public getBufferSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    return v0
.end method

.method public getCalorieArraySingle(I)D
    .locals 4

    const/16 v2, 0x5a0

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    if-lt v1, v2, :cond_1

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    if-lt v0, v2, :cond_0

    add-int/lit16 v0, v0, -0x5a0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mCalorieArray:[D

    aget-wide v2, v1, v0

    return-wide v2

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method public getDistanceArraySingle(I)D
    .locals 4

    const/16 v2, 0x5a0

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    if-lt v1, v2, :cond_1

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    if-lt v0, v2, :cond_0

    add-int/lit16 v0, v0, -0x5a0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mDistanceArray:[D

    aget-wide v2, v1, v0

    return-wide v2

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method public getLastCallBackMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mLastDataMode:I

    return v0
.end method

.method public getMaxBufferSize()I
    .locals 1

    const/16 v0, 0x5a0

    return v0
.end method

.method public getRunDnStepCountSingle(I)J
    .locals 4

    const/16 v2, 0x5a0

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    if-lt v1, v2, :cond_1

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    if-lt v0, v2, :cond_0

    add-int/lit16 v0, v0, -0x5a0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunDnStepCountArray:[J

    aget-wide v2, v1, v0

    return-wide v2

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method public getRunStepCountSingle(I)J
    .locals 4

    const/16 v2, 0x5a0

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    if-lt v1, v2, :cond_1

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    if-lt v0, v2, :cond_0

    add-int/lit16 v0, v0, -0x5a0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunStepCountArray:[J

    aget-wide v2, v1, v0

    return-wide v2

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method public getRunUpStepCountSingle(I)J
    .locals 4

    const/16 v2, 0x5a0

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    if-lt v1, v2, :cond_1

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    if-lt v0, v2, :cond_0

    add-int/lit16 v0, v0, -0x5a0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunUpStepCountArray:[J

    aget-wide v2, v1, v0

    return-wide v2

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method public getSpeedArraySingle(I)D
    .locals 4

    const/16 v2, 0x5a0

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    if-lt v1, v2, :cond_1

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    if-lt v0, v2, :cond_0

    add-int/lit16 v0, v0, -0x5a0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mSpeedArray:[D

    aget-wide v2, v1, v0

    return-wide v2

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method public getTimeStampSingle(I)J
    .locals 4

    const/16 v2, 0x5a0

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    if-lt v1, v2, :cond_1

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    if-lt v0, v2, :cond_0

    add-int/lit16 v0, v0, -0x5a0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mTimeStampArray:[J

    aget-wide v2, v1, v0

    return-wide v2

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method public getTotalStepCountSingle(I)J
    .locals 4

    const/16 v2, 0x5a0

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    if-lt v1, v2, :cond_1

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    if-lt v0, v2, :cond_0

    add-int/lit16 v0, v0, -0x5a0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mTotalStepCountArray:[J

    aget-wide v2, v1, v0

    return-wide v2

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method public getWalkDnStepCountSingle(I)J
    .locals 4

    const/16 v2, 0x5a0

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    if-lt v1, v2, :cond_1

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    if-lt v0, v2, :cond_0

    add-int/lit16 v0, v0, -0x5a0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkDnStepCountArray:[J

    aget-wide v2, v1, v0

    return-wide v2

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method public getWalkStepCountSingle(I)J
    .locals 4

    const/16 v2, 0x5a0

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    if-lt v1, v2, :cond_1

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    if-lt v0, v2, :cond_0

    add-int/lit16 v0, v0, -0x5a0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkStepCountArray:[J

    aget-wide v2, v1, v0

    return-wide v2

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method public getWalkUpStepCountSingle(I)J
    .locals 4

    const/16 v2, 0x5a0

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    if-lt v1, v2, :cond_1

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    if-lt v0, v2, :cond_0

    add-int/lit16 v0, v0, -0x5a0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkUpStepCountArray:[J

    aget-wide v2, v1, v0

    return-wide v2

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method public onTimeChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->erase()V

    return-void
.end method

.method public putCalorieInfo(D)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mCalorieArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public putCalorieInfoSingle(D)V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedCalorie:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedCalorie:D

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mCalorieArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedCalorie:D

    aput-wide v2, v0, v1

    return-void
.end method

.method public putDistanceInfo(D)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mDistanceArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public putDistanceInfoSingle(D)V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedDistance:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedDistance:D

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mDistanceArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedDistance:D

    aput-wide v2, v0, v1

    return-void
.end method

.method public putRunDnStepInfo(J)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunDnStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public putRunDnStepInfoSingle(J)V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunDnStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunDnStep:J

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunDnStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunDnStep:J

    aput-wide v2, v0, v1

    return-void
.end method

.method public putRunStepInfo(J)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public putRunStepInfoSingle(J)V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunStep:J

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunStep:J

    aput-wide v2, v0, v1

    return-void
.end method

.method public putRunUpStepInfo(J)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunUpStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public putRunUpStepInfoSingle(J)V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunUpStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunUpStep:J

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunUpStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunUpStep:J

    aput-wide v2, v0, v1

    return-void
.end method

.method public putSpeedInfo(D)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mSpeedArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public putSpeedInfoSingle(D)V
    .locals 7

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAverageSpeed:D

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mNumAccumulatedData:D

    mul-double/2addr v0, v2

    add-double/2addr v0, p1

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mNumAccumulatedData:D

    add-double/2addr v2, v4

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAverageSpeed:D

    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mNumAccumulatedData:D

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mNumAccumulatedData:D

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mSpeedArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAverageSpeed:D

    aput-wide v2, v0, v1

    return-void
.end method

.method public putStepInfo(JJJJJJJDDD)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mTotalStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p3, v0, v1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p5, v0, v1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkUpStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p7, v0, v1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunUpStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p9, v0, v1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkDnStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p11, v0, v1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunDnStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p13, v0, v1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mDistanceArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p15, v0, v1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mCalorieArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p17, v0, v1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mSpeedArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p19, v0, v1

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mLastDataMode:I

    return-void
.end method

.method public putStepInfoSingle(JJJJJJJDDD)V
    .locals 7

    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedTotalStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedTotalStep:J

    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkStep:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkStep:J

    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunStep:J

    add-long/2addr v0, p5

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunStep:J

    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkUpStep:J

    add-long/2addr v0, p7

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkUpStep:J

    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunUpStep:J

    add-long v0, v0, p9

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunUpStep:J

    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkDnStep:J

    add-long v0, v0, p11

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkDnStep:J

    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunDnStep:J

    add-long v0, v0, p13

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunDnStep:J

    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedDistance:D

    add-double v0, v0, p15

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedDistance:D

    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedCalorie:D

    add-double v0, v0, p17

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedCalorie:D

    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAverageSpeed:D

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mNumAccumulatedData:D

    mul-double/2addr v0, v2

    add-double v0, v0, p19

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mNumAccumulatedData:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAverageSpeed:D

    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mNumAccumulatedData:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mNumAccumulatedData:D

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mTotalStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedTotalStep:J

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkStep:J

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunStep:J

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkUpStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkUpStep:J

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunUpStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunUpStep:J

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkDnStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkDnStep:J

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunDnStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunDnStep:J

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mDistanceArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedDistance:D

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mCalorieArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedCalorie:D

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mSpeedArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAverageSpeed:D

    aput-wide v2, v0, v1

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mLastDataMode:I

    return-void
.end method

.method public putTimestamp(J)V
    .locals 3

    iput-wide p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mLastSavingTimestamp:J

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mTimeStampArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public putTotalStepInfo(J)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mTotalStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public putTotalStepInfoSingle(J)V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedTotalStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedTotalStep:J

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mTotalStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedTotalStep:J

    aput-wide v2, v0, v1

    return-void
.end method

.method public putWalkDnStepInfo(J)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkDnStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public putWalkDnStepInfoSingle(J)V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkDnStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkDnStep:J

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkDnStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkDnStep:J

    aput-wide v2, v0, v1

    return-void
.end method

.method public putWalkStepInfo(J)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public putWalkStepInfoSingle(J)V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkStep:J

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkStep:J

    aput-wide v2, v0, v1

    return-void
.end method

.method public putWalkUpStepInfo(J)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkUpStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public putWalkUpStepInfoSingle(J)V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkUpStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkUpStep:J

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkUpStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkUpStep:J

    aput-wide v2, v0, v1

    return-void
.end method

.method public setDataMode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mLastDataMode:I

    return-void
.end method

.method public updateBufferIndex(I)V
    .locals 13

    const/16 v12, 0xc

    const/4 v11, 0x2

    const/4 v10, 0x0

    if-ne p1, v11, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->increaseBufferIndex()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v8, 0x1

    if-ne p1, v8, :cond_0

    new-instance v8, Ljava/util/SimpleTimeZone;

    const-string/jumbo v9, "GMT"

    invoke-direct {v8, v10, v9}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v8}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getLastSavingTimestamp()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v6, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getLastSavingTimestamp()J

    move-result-wide v8

    sub-long v4, v2, v8

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getLastCallBackMode()I

    move-result v8

    if-ne v8, v11, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->increaseBufferIndex()V

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->resetAccumulatedStepInfo()V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putTimestamp(J)V

    goto :goto_0

    :cond_2
    if-ne v7, v1, :cond_3

    const-wide/32 v8, 0xea60

    cmp-long v8, v4, v8

    if-lez v8, :cond_4

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->increaseBufferIndex()V

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->resetAccumulatedStepInfo()V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putTimestamp(J)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getLatestBufferIndex()I

    move-result v8

    if-gez v8, :cond_0

    goto :goto_1
.end method
