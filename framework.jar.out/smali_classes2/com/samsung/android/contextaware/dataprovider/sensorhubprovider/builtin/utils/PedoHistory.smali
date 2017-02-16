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

    .prologue
    const/16 v1, 0x5a0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mTimeStampArray:[J

    .line 31
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mDistanceArray:[D

    .line 32
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mCalorieArray:[D

    .line 33
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mSpeedArray:[D

    .line 34
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkStepCountArray:[J

    .line 35
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunStepCountArray:[J

    .line 36
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkUpStepCountArray:[J

    .line 37
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkDnStepCountArray:[J

    .line 38
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunUpStepCountArray:[J

    .line 39
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunDnStepCountArray:[J

    .line 40
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mTotalStepCountArray:[J

    .line 75
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->initialize()V

    .line 76
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->registerObserver(Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;)V

    .line 74
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    if-nez v0, :cond_1

    .line 65
    const-class v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    monitor-enter v1

    .line 66
    :try_start_0
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 71
    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getLastSavingTimestamp()J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mLastSavingTimestamp:J

    return-wide v0
.end method

.method private getLatestBufferIndex()I
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    return v0
.end method

.method private increaseBufferIndex()V
    .locals 2

    .prologue
    const/16 v1, 0x5a0

    .line 340
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    .line 341
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    if-ne v0, v1, :cond_0

    .line 342
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    .line 345
    :cond_0
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    if-ge v0, v1, :cond_1

    .line 346
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    .line 339
    :cond_1
    return-void
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    .line 83
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->resetAccumulatedStepInfo()V

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mLastSavingTimestamp:J

    .line 86
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mLastDataMode:I

    .line 79
    return-void
.end method

.method private resetAccumulatedStepInfo()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    .line 229
    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedTotalStep:J

    .line 230
    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkStep:J

    .line 231
    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunStep:J

    .line 232
    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkUpStep:J

    .line 233
    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunUpStep:J

    .line 234
    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkDnStep:J

    .line 235
    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunDnStep:J

    .line 236
    iput-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedDistance:D

    .line 237
    iput-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedCalorie:D

    .line 238
    iput-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAverageSpeed:D

    .line 239
    iput-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mNumAccumulatedData:D

    .line 228
    return-void
.end method


# virtual methods
.method public erase()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->initialize()V

    .line 94
    const-string/jumbo v0, "erased"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    return v0
.end method

.method public getCalorieArraySingle(I)D
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/16 v2, 0x5a0

    .line 580
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    if-lt v1, v2, :cond_1

    .line 581
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    .line 582
    .local v0, "modifiedIndex":I
    if-lt v0, v2, :cond_0

    .line 583
    add-int/lit16 v0, v0, -0x5a0

    .line 589
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mCalorieArray:[D

    aget-wide v2, v1, v0

    return-wide v2

    .line 586
    .end local v0    # "modifiedIndex":I
    :cond_1
    move v0, p1

    .restart local v0    # "modifiedIndex":I
    goto :goto_0
.end method

.method public getDistanceArraySingle(I)D
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/16 v2, 0x5a0

    .line 562
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    if-lt v1, v2, :cond_1

    .line 563
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    .line 564
    .local v0, "modifiedIndex":I
    if-lt v0, v2, :cond_0

    .line 565
    add-int/lit16 v0, v0, -0x5a0

    .line 571
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mDistanceArray:[D

    aget-wide v2, v1, v0

    return-wide v2

    .line 568
    .end local v0    # "modifiedIndex":I
    :cond_1
    move v0, p1

    .restart local v0    # "modifiedIndex":I
    goto :goto_0
.end method

.method public getLastCallBackMode()I
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mLastDataMode:I

    return v0
.end method

.method public getMaxBufferSize()I
    .locals 1

    .prologue
    .line 391
    const/16 v0, 0x5a0

    return v0
.end method

.method public getRunDnStepCountSingle(I)J
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/16 v2, 0x5a0

    .line 544
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    if-lt v1, v2, :cond_1

    .line 545
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    .line 546
    .local v0, "modifiedIndex":I
    if-lt v0, v2, :cond_0

    .line 547
    add-int/lit16 v0, v0, -0x5a0

    .line 553
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunDnStepCountArray:[J

    aget-wide v2, v1, v0

    return-wide v2

    .line 550
    .end local v0    # "modifiedIndex":I
    :cond_1
    move v0, p1

    .restart local v0    # "modifiedIndex":I
    goto :goto_0
.end method

.method public getRunStepCountSingle(I)J
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/16 v2, 0x5a0

    .line 472
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    if-lt v1, v2, :cond_1

    .line 473
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    .line 474
    .local v0, "modifiedIndex":I
    if-lt v0, v2, :cond_0

    .line 475
    add-int/lit16 v0, v0, -0x5a0

    .line 481
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunStepCountArray:[J

    aget-wide v2, v1, v0

    return-wide v2

    .line 478
    .end local v0    # "modifiedIndex":I
    :cond_1
    move v0, p1

    .restart local v0    # "modifiedIndex":I
    goto :goto_0
.end method

.method public getRunUpStepCountSingle(I)J
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/16 v2, 0x5a0

    .line 508
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    if-lt v1, v2, :cond_1

    .line 509
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    .line 510
    .local v0, "modifiedIndex":I
    if-lt v0, v2, :cond_0

    .line 511
    add-int/lit16 v0, v0, -0x5a0

    .line 517
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunUpStepCountArray:[J

    aget-wide v2, v1, v0

    return-wide v2

    .line 514
    .end local v0    # "modifiedIndex":I
    :cond_1
    move v0, p1

    .restart local v0    # "modifiedIndex":I
    goto :goto_0
.end method

.method public getSpeedArraySingle(I)D
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/16 v2, 0x5a0

    .line 598
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    if-lt v1, v2, :cond_1

    .line 599
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    .line 600
    .local v0, "modifiedIndex":I
    if-lt v0, v2, :cond_0

    .line 601
    add-int/lit16 v0, v0, -0x5a0

    .line 607
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mSpeedArray:[D

    aget-wide v2, v1, v0

    return-wide v2

    .line 604
    .end local v0    # "modifiedIndex":I
    :cond_1
    move v0, p1

    .restart local v0    # "modifiedIndex":I
    goto :goto_0
.end method

.method public getTimeStampSingle(I)J
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/16 v2, 0x5a0

    .line 418
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    if-lt v1, v2, :cond_1

    .line 419
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    .line 420
    .local v0, "modifiedIndex":I
    if-lt v0, v2, :cond_0

    .line 421
    add-int/lit16 v0, v0, -0x5a0

    .line 427
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mTimeStampArray:[J

    aget-wide v2, v1, v0

    return-wide v2

    .line 424
    .end local v0    # "modifiedIndex":I
    :cond_1
    move v0, p1

    .restart local v0    # "modifiedIndex":I
    goto :goto_0
.end method

.method public getTotalStepCountSingle(I)J
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/16 v2, 0x5a0

    .line 436
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    if-lt v1, v2, :cond_1

    .line 437
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    .line 438
    .local v0, "modifiedIndex":I
    if-lt v0, v2, :cond_0

    .line 439
    add-int/lit16 v0, v0, -0x5a0

    .line 445
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mTotalStepCountArray:[J

    aget-wide v2, v1, v0

    return-wide v2

    .line 442
    .end local v0    # "modifiedIndex":I
    :cond_1
    move v0, p1

    .restart local v0    # "modifiedIndex":I
    goto :goto_0
.end method

.method public getWalkDnStepCountSingle(I)J
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/16 v2, 0x5a0

    .line 526
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    if-lt v1, v2, :cond_1

    .line 527
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    .line 528
    .local v0, "modifiedIndex":I
    if-lt v0, v2, :cond_0

    .line 529
    add-int/lit16 v0, v0, -0x5a0

    .line 535
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkDnStepCountArray:[J

    aget-wide v2, v1, v0

    return-wide v2

    .line 532
    .end local v0    # "modifiedIndex":I
    :cond_1
    move v0, p1

    .restart local v0    # "modifiedIndex":I
    goto :goto_0
.end method

.method public getWalkStepCountSingle(I)J
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/16 v2, 0x5a0

    .line 454
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    if-lt v1, v2, :cond_1

    .line 455
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    .line 456
    .local v0, "modifiedIndex":I
    if-lt v0, v2, :cond_0

    .line 457
    add-int/lit16 v0, v0, -0x5a0

    .line 463
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkStepCountArray:[J

    aget-wide v2, v1, v0

    return-wide v2

    .line 460
    .end local v0    # "modifiedIndex":I
    :cond_1
    move v0, p1

    .restart local v0    # "modifiedIndex":I
    goto :goto_0
.end method

.method public getWalkUpStepCountSingle(I)J
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/16 v2, 0x5a0

    .line 490
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    if-lt v1, v2, :cond_1

    .line 491
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    .line 492
    .local v0, "modifiedIndex":I
    if-lt v0, v2, :cond_0

    .line 493
    add-int/lit16 v0, v0, -0x5a0

    .line 499
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkUpStepCountArray:[J

    aget-wide v2, v1, v0

    return-wide v2

    .line 496
    .end local v0    # "modifiedIndex":I
    :cond_1
    move v0, p1

    .restart local v0    # "modifiedIndex":I
    goto :goto_0
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->erase()V

    .line 611
    return-void
.end method

.method public putCalorieInfo(D)V
    .locals 3
    .param p1, "calorie"    # D

    .prologue
    .line 329
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mCalorieArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 328
    return-void
.end method

.method public putCalorieInfoSingle(D)V
    .locals 5
    .param p1, "calorie"    # D

    .prologue
    .line 215
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedCalorie:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedCalorie:D

    .line 216
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mCalorieArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedCalorie:D

    aput-wide v2, v0, v1

    .line 214
    return-void
.end method

.method public putDistanceInfo(D)V
    .locals 3
    .param p1, "distance"    # D

    .prologue
    .line 322
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mDistanceArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 321
    return-void
.end method

.method public putDistanceInfoSingle(D)V
    .locals 5
    .param p1, "distance"    # D

    .prologue
    .line 207
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedDistance:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedDistance:D

    .line 208
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mDistanceArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedDistance:D

    aput-wide v2, v0, v1

    .line 206
    return-void
.end method

.method public putRunDnStepInfo(J)V
    .locals 3
    .param p1, "scRunDn"    # J

    .prologue
    .line 315
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunDnStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 314
    return-void
.end method

.method public putRunDnStepInfoSingle(J)V
    .locals 5
    .param p1, "scRunDn"    # J

    .prologue
    .line 199
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunDnStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunDnStep:J

    .line 200
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunDnStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunDnStep:J

    aput-wide v2, v0, v1

    .line 198
    return-void
.end method

.method public putRunStepInfo(J)V
    .locals 3
    .param p1, "scRun"    # J

    .prologue
    .line 287
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 286
    return-void
.end method

.method public putRunStepInfoSingle(J)V
    .locals 5
    .param p1, "scRun"    # J

    .prologue
    .line 167
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunStep:J

    .line 168
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunStep:J

    aput-wide v2, v0, v1

    .line 166
    return-void
.end method

.method public putRunUpStepInfo(J)V
    .locals 3
    .param p1, "scRunUp"    # J

    .prologue
    .line 301
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunUpStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 300
    return-void
.end method

.method public putRunUpStepInfoSingle(J)V
    .locals 5
    .param p1, "scRunUp"    # J

    .prologue
    .line 183
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunUpStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunUpStep:J

    .line 184
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunUpStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunUpStep:J

    aput-wide v2, v0, v1

    .line 182
    return-void
.end method

.method public putSpeedInfo(D)V
    .locals 3
    .param p1, "speed"    # D

    .prologue
    .line 336
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mSpeedArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 335
    return-void
.end method

.method public putSpeedInfoSingle(D)V
    .locals 7
    .param p1, "speed"    # D

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 223
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAverageSpeed:D

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mNumAccumulatedData:D

    mul-double/2addr v0, v2

    add-double/2addr v0, p1

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mNumAccumulatedData:D

    add-double/2addr v2, v4

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAverageSpeed:D

    .line 224
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mNumAccumulatedData:D

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mNumAccumulatedData:D

    .line 225
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mSpeedArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAverageSpeed:D

    aput-wide v2, v0, v1

    .line 222
    return-void
.end method

.method public putStepInfo(JJJJJJJDDD)V
    .locals 3
    .param p1, "scTotal"    # J
    .param p3, "scWalk"    # J
    .param p5, "scRun"    # J
    .param p7, "scWalkUp"    # J
    .param p9, "scRunUp"    # J
    .param p11, "scWalkDn"    # J
    .param p13, "scRunDn"    # J
    .param p15, "distance"    # D
    .param p17, "calorie"    # D
    .param p19, "speed"    # D

    .prologue
    .line 247
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mTotalStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 248
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p3, v0, v1

    .line 249
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p5, v0, v1

    .line 250
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkUpStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p7, v0, v1

    .line 251
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunUpStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p9, v0, v1

    .line 252
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkDnStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p11, v0, v1

    .line 253
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunDnStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p13, v0, v1

    .line 255
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mDistanceArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p15, v0, v1

    .line 256
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mCalorieArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p17, v0, v1

    .line 257
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mSpeedArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p19, v0, v1

    .line 259
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mLastDataMode:I

    .line 246
    return-void
.end method

.method public putStepInfoSingle(JJJJJJJDDD)V
    .locals 7
    .param p1, "scTotal"    # J
    .param p3, "scWalk"    # J
    .param p5, "scRun"    # J
    .param p7, "scWalkUp"    # J
    .param p9, "scRunUp"    # J
    .param p11, "scWalkDn"    # J
    .param p13, "scRunDn"    # J
    .param p15, "distance"    # D
    .param p17, "calorie"    # D
    .param p19, "speed"    # D

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedTotalStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedTotalStep:J

    .line 121
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkStep:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkStep:J

    .line 122
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunStep:J

    add-long/2addr v0, p5

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunStep:J

    .line 123
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkUpStep:J

    add-long/2addr v0, p7

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkUpStep:J

    .line 124
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunUpStep:J

    add-long v0, v0, p9

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunUpStep:J

    .line 125
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkDnStep:J

    add-long v0, v0, p11

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkDnStep:J

    .line 126
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunDnStep:J

    add-long v0, v0, p13

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunDnStep:J

    .line 127
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedDistance:D

    add-double v0, v0, p15

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedDistance:D

    .line 128
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedCalorie:D

    add-double v0, v0, p17

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedCalorie:D

    .line 129
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAverageSpeed:D

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mNumAccumulatedData:D

    mul-double/2addr v0, v2

    add-double v0, v0, p19

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mNumAccumulatedData:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAverageSpeed:D

    .line 130
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mNumAccumulatedData:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mNumAccumulatedData:D

    .line 132
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mTotalStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedTotalStep:J

    aput-wide v2, v0, v1

    .line 133
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkStep:J

    aput-wide v2, v0, v1

    .line 134
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunStep:J

    aput-wide v2, v0, v1

    .line 135
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkUpStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkUpStep:J

    aput-wide v2, v0, v1

    .line 136
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunUpStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunUpStep:J

    aput-wide v2, v0, v1

    .line 137
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkDnStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkDnStep:J

    aput-wide v2, v0, v1

    .line 138
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunDnStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunDnStep:J

    aput-wide v2, v0, v1

    .line 140
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mDistanceArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedDistance:D

    aput-wide v2, v0, v1

    .line 141
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mCalorieArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedCalorie:D

    aput-wide v2, v0, v1

    .line 142
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mSpeedArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAverageSpeed:D

    aput-wide v2, v0, v1

    .line 144
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mLastDataMode:I

    .line 119
    return-void
.end method

.method public putTimestamp(J)V
    .locals 3
    .param p1, "curTimeStamp"    # J

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mLastSavingTimestamp:J

    .line 112
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mTimeStampArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 104
    return-void
.end method

.method public putTotalStepInfo(J)V
    .locals 3
    .param p1, "scTotal"    # J

    .prologue
    .line 273
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mTotalStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 272
    return-void
.end method

.method public putTotalStepInfoSingle(J)V
    .locals 5
    .param p1, "scTotal"    # J

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedTotalStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedTotalStep:J

    .line 152
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mTotalStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedTotalStep:J

    aput-wide v2, v0, v1

    .line 150
    return-void
.end method

.method public putWalkDnStepInfo(J)V
    .locals 3
    .param p1, "scWalkDn"    # J

    .prologue
    .line 308
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkDnStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 307
    return-void
.end method

.method public putWalkDnStepInfoSingle(J)V
    .locals 5
    .param p1, "scWalkDn"    # J

    .prologue
    .line 191
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkDnStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkDnStep:J

    .line 192
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkDnStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkDnStep:J

    aput-wide v2, v0, v1

    .line 190
    return-void
.end method

.method public putWalkStepInfo(J)V
    .locals 3
    .param p1, "scWalk"    # J

    .prologue
    .line 280
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 279
    return-void
.end method

.method public putWalkStepInfoSingle(J)V
    .locals 5
    .param p1, "scWalk"    # J

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkStep:J

    .line 160
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkStep:J

    aput-wide v2, v0, v1

    .line 158
    return-void
.end method

.method public putWalkUpStepInfo(J)V
    .locals 3
    .param p1, "scWalkUp"    # J

    .prologue
    .line 294
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkUpStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 293
    return-void
.end method

.method public putWalkUpStepInfoSingle(J)V
    .locals 5
    .param p1, "scWalkUp"    # J

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkUpStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkUpStep:J

    .line 176
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkUpStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkUpStep:J

    aput-wide v2, v0, v1

    .line 174
    return-void
.end method

.method public setDataMode(I)V
    .locals 0
    .param p1, "dataMode"    # I

    .prologue
    .line 266
    iput p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mLastDataMode:I

    .line 265
    return-void
.end method

.method public updateBufferIndex(I)V
    .locals 13
    .param p1, "dataMode"    # I

    .prologue
    const/16 v12, 0xc

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 355
    if-ne p1, v11, :cond_1

    .line 356
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->increaseBufferIndex()V

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    const/4 v8, 0x1

    if-ne p1, v8, :cond_0

    .line 358
    new-instance v8, Ljava/util/SimpleTimeZone;

    .line 359
    const-string/jumbo v9, "GMT"

    .line 358
    invoke-direct {v8, v10, v9}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v8}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 360
    .local v0, "calender":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 361
    .local v2, "curTimeMillis":J
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 363
    .local v7, "minute":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 364
    .local v6, "lastUpdatedTime":Ljava/util/Calendar;
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getLastSavingTimestamp()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 365
    invoke-virtual {v6, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 366
    .local v1, "lastUpdatedMinute":I
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getLastSavingTimestamp()J

    move-result-wide v8

    sub-long v4, v2, v8

    .line 368
    .local v4, "diffTimeStamp":J
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getLastCallBackMode()I

    move-result v8

    if-ne v8, v11, :cond_2

    .line 369
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->increaseBufferIndex()V

    .line 370
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->resetAccumulatedStepInfo()V

    .line 371
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putTimestamp(J)V

    goto :goto_0

    .line 373
    :cond_2
    if-ne v7, v1, :cond_3

    const-wide/32 v8, 0xea60

    cmp-long v8, v4, v8

    if-lez v8, :cond_4

    .line 375
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->increaseBufferIndex()V

    .line 376
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->resetAccumulatedStepInfo()V

    .line 377
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putTimestamp(J)V

    goto :goto_0

    .line 374
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getLatestBufferIndex()I

    move-result v8

    if-gez v8, :cond_0

    goto :goto_1
.end method
