.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;
.super Ljava/lang/Object;
.source "SLMHistory.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;


# static fields
.field private static final MAX_BUFFER_SIZE:I = 0xf

.field private static volatile mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;


# instance fields
.field private mAccumulatedCalorie:D

.field private mAccumulatedDistance:D

.field private mAccumulatedDuration:I

.field private mAccumulatedStepCount:I

.field private mBufferIndex:I

.field private mBufferSize:I

.field private mCalorieArray:[D

.field private mDistanceArray:[D

.field private mDurationArray:[I

.field private mLastStepType:I

.field private mStepCountArray:[I

.field private mStepTypeArray:[I

.field private mTimeStampArray:[J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xf

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mTimeStampArray:[J

    .line 14
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mStepTypeArray:[I

    .line 15
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mStepCountArray:[I

    .line 16
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mDistanceArray:[D

    .line 17
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mCalorieArray:[D

    .line 18
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mDurationArray:[I

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->initialize()V

    .line 51
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->registerObserver(Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;)V

    .line 48
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 45
    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initialize()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    .line 56
    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferSize:I

    .line 57
    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mLastStepType:I

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->resetAccumulatedStepInfo()V

    .line 54
    return-void
.end method


# virtual methods
.method public erase()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->initialize()V

    .line 63
    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferSize:I

    return v0
.end method

.method public getLastStepType()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mLastStepType:I

    return v0
.end method

.method public getLatestBufferIndex()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    return v0
.end method

.method public getMaxBufferSize()I
    .locals 1

    .prologue
    .line 118
    const/16 v0, 0xf

    return v0
.end method

.method public getTimeStampSingle(I)J
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/16 v2, 0xf

    .line 137
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferSize:I

    if-lt v1, v2, :cond_1

    .line 138
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    .line 139
    .local v0, "modifiedIndex":I
    if-lt v0, v2, :cond_0

    .line 140
    add-int/lit8 v0, v0, -0xf

    .line 147
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mTimeStampArray:[J

    aget-wide v2, v1, v0

    return-wide v2

    .line 144
    .end local v0    # "modifiedIndex":I
    :cond_1
    move v0, p1

    .restart local v0    # "modifiedIndex":I
    goto :goto_0
.end method

.method public getmCalorieArraySingle(I)D
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/16 v2, 0xf

    .line 219
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferSize:I

    if-lt v1, v2, :cond_1

    .line 220
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    .line 221
    .local v0, "modifiedIndex":I
    if-lt v0, v2, :cond_0

    .line 222
    add-int/lit8 v0, v0, -0xf

    .line 229
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mCalorieArray:[D

    aget-wide v2, v1, v0

    return-wide v2

    .line 226
    .end local v0    # "modifiedIndex":I
    :cond_1
    move v0, p1

    .restart local v0    # "modifiedIndex":I
    goto :goto_0
.end method

.method public getmDistanceArraySingle(I)D
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/16 v2, 0xf

    .line 203
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferSize:I

    if-lt v1, v2, :cond_1

    .line 204
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    .line 205
    .local v0, "modifiedIndex":I
    if-lt v0, v2, :cond_0

    .line 206
    add-int/lit8 v0, v0, -0xf

    .line 213
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mDistanceArray:[D

    aget-wide v2, v1, v0

    return-wide v2

    .line 210
    .end local v0    # "modifiedIndex":I
    :cond_1
    move v0, p1

    .restart local v0    # "modifiedIndex":I
    goto :goto_0
.end method

.method public getmDurationArraySingle(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/16 v2, 0xf

    .line 187
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferSize:I

    if-lt v1, v2, :cond_1

    .line 188
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    .line 189
    .local v0, "modifiedIndex":I
    if-lt v0, v2, :cond_0

    .line 190
    add-int/lit8 v0, v0, -0xf

    .line 197
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mDurationArray:[I

    aget v1, v1, v0

    return v1

    .line 194
    .end local v0    # "modifiedIndex":I
    :cond_1
    move v0, p1

    .restart local v0    # "modifiedIndex":I
    goto :goto_0
.end method

.method public getmStepCountArraySingle(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/16 v2, 0xf

    .line 170
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferSize:I

    if-lt v1, v2, :cond_1

    .line 171
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    .line 172
    .local v0, "modifiedIndex":I
    if-lt v0, v2, :cond_0

    .line 173
    add-int/lit8 v0, v0, -0xf

    .line 180
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mStepCountArray:[I

    aget v1, v1, v0

    return v1

    .line 177
    .end local v0    # "modifiedIndex":I
    :cond_1
    move v0, p1

    .restart local v0    # "modifiedIndex":I
    goto :goto_0
.end method

.method public getmStepTypeArraySingle(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/16 v2, 0xf

    .line 154
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferSize:I

    if-lt v1, v2, :cond_1

    .line 155
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int v0, v1, p1

    .line 156
    .local v0, "modifiedIndex":I
    if-lt v0, v2, :cond_0

    .line 157
    add-int/lit8 v0, v0, -0xf

    .line 164
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mStepTypeArray:[I

    aget v1, v1, v0

    return v1

    .line 161
    .end local v0    # "modifiedIndex":I
    :cond_1
    move v0, p1

    .restart local v0    # "modifiedIndex":I
    goto :goto_0
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->erase()V

    .line 233
    return-void
.end method

.method public putSLMData(JIIDDI)V
    .locals 5
    .param p1, "timeStamp"    # J
    .param p3, "stepType"    # I
    .param p4, "stepCount"    # I
    .param p5, "distance"    # D
    .param p7, "calorie"    # D
    .param p9, "duration"    # I

    .prologue
    .line 84
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mLastStepType:I

    if-eq v0, p3, :cond_1

    .line 85
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0xf

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    .line 87
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferSize:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    .line 88
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferSize:I

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->resetAccumulatedStepInfo()V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mTimeStampArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    aput-wide p1, v0, v1

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mStepTypeArray:[I

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    iput p3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mLastStepType:I

    aput p3, v0, v1

    .line 100
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedStepCount:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedStepCount:I

    .line 101
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mStepCountArray:[I

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedStepCount:I

    aput v2, v0, v1

    .line 104
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedDistance:D

    add-double/2addr v0, p5

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedDistance:D

    .line 105
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mDistanceArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedDistance:D

    aput-wide v2, v0, v1

    .line 108
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedCalorie:D

    add-double/2addr v0, p7

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedCalorie:D

    .line 109
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mCalorieArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedCalorie:D

    aput-wide v2, v0, v1

    .line 112
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedDuration:I

    add-int/2addr v0, p9

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedDuration:I

    .line 113
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mDurationArray:[I

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedDuration:I

    aput v2, v0, v1

    .line 83
    return-void
.end method

.method public resetAccumulatedStepInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 71
    iput v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedStepCount:I

    .line 72
    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedDistance:D

    .line 73
    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedCalorie:D

    .line 74
    iput v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedDuration:I

    .line 70
    return-void
.end method
