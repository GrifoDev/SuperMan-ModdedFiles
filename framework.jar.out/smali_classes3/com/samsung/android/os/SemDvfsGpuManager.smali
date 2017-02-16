.class Lcom/samsung/android/os/SemDvfsGpuManager;
.super Lcom/samsung/android/os/SemDvfsManager;
.source "SemDvfsGpuManager.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/os/SemDvfsManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 15
    const-class v0, Lcom/samsung/android/os/SemDvfsGpuManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, "GPU"

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mName:Ljava/lang/String;

    .line 17
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedGPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mSupportedValues:[I

    .line 18
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedGPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mSupportedValuesForSsrm:[I

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/os/SemDvfsGpuManager;->adjustGPUFreqTable()V

    .line 13
    return-void
.end method

.method private adjustGPUFreqTable()V
    .locals 5

    .prologue
    .line 89
    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsManager;->mSupportedValues:[I

    if-nez v3, :cond_0

    .line 90
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    .line 94
    .local v0, "SHIFT_STEPS":I
    const-string/jumbo v3, "ha"

    const-string/jumbo v4, "hrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "ka"

    const-string/jumbo v4, "hrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "sa"

    const-string/jumbo v4, "hrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 95
    const-string/jumbo v3, "ta"

    const-string/jumbo v4, "hrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 94
    if-nez v3, :cond_1

    .line 95
    const-string/jumbo v3, "hrl"

    const-string/jumbo v4, "hrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 94
    if-nez v3, :cond_1

    .line 96
    const-string/jumbo v3, "hrq"

    const-string/jumbo v4, "hrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 94
    if-eqz v3, :cond_3

    .line 97
    :cond_1
    const/4 v0, 0x2

    .line 102
    :cond_2
    :goto_0
    if-lez v0, :cond_5

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsManager;->mSupportedValues:[I

    array-length v3, v3

    if-le v3, v0, :cond_5

    .line 103
    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsManager;->mSupportedValues:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    new-array v2, v3, [I

    .line 104
    .local v2, "newGPUFreqTable":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsManager;->mSupportedValues:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    if-ge v1, v3, :cond_4

    .line 105
    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsManager;->mSupportedValues:[I

    add-int v4, v1, v0

    aget v3, v3, v4

    aput v3, v2, v1

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 98
    .end local v1    # "i":I
    .end local v2    # "newGPUFreqTable":[I
    :cond_3
    const-string/jumbo v3, "zl"

    const-string/jumbo v4, "hrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 99
    const/4 v0, 0x3

    goto :goto_0

    .line 107
    .restart local v1    # "i":I
    .restart local v2    # "newGPUFreqTable":[I
    :cond_4
    iput-object v2, p0, Lcom/samsung/android/os/SemDvfsManager;->mSupportedValues:[I

    .line 88
    .end local v1    # "i":I
    .end local v2    # "newGPUFreqTable":[I
    :cond_5
    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemDvfsGpuManager;->acquire(I)V

    .line 37
    return-void
.end method

.method public acquire(I)V
    .locals 8
    .param p1, "timeout"    # I

    .prologue
    const/4 v5, -0x1

    .line 43
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v1, :cond_0

    .line 44
    return-void

    .line 47
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 49
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "acquire:: timeout = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", mIsAcquired = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mIsAcquired:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " , mTagName : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/os/SemDvfsManager;->mTagName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-boolean v1, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mIsAcquired:Z

    if-eqz v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    .line 53
    const-string/jumbo v2, "acquire:: DVFS lock is already acquired. Previous lock will be released first."

    .line 52
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 57
    :cond_1
    iget v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mType:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    .line 58
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mSupportedValues:[I

    if-eqz v1, :cond_2

    .line 59
    iget v3, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsValue:I

    .line 61
    .local v3, "freq":I
    if-eq v3, v5, :cond_2

    .line 62
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 63
    int-to-long v4, p1

    .line 64
    iget-object v6, p0, Lcom/samsung/android/os/SemDvfsManager;->mTagName:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/os/SemDvfsManager;->mContext:Landroid/content/Context;

    .line 63
    const/4 v2, 0x1

    .line 62
    invoke-virtual/range {v1 .. v7}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 78
    .end local v3    # "freq":I
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_3

    .line 79
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 81
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mIsAcquired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 42
    return-void

    .line 67
    :cond_4
    :try_start_1
    iget v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mType:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_2

    .line 68
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mSupportedValues:[I

    if-eqz v1, :cond_2

    .line 69
    iget v3, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsValue:I

    .line 71
    .restart local v3    # "freq":I
    if-eq v3, v5, :cond_2

    .line 72
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 73
    int-to-long v4, p1

    .line 74
    iget-object v6, p0, Lcom/samsung/android/os/SemDvfsManager;->mTagName:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/os/SemDvfsManager;->mContext:Landroid/content/Context;

    .line 73
    const/16 v2, 0x9

    .line 72
    invoke-virtual/range {v1 .. v7}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 82
    .end local v3    # "freq":I
    :catchall_0
    move-exception v1

    .line 83
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 82
    throw v1
.end method

.method public clearDvfsValue()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsValue:I

    .line 32
    return-void
.end method

.method public setDvfsValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsValue:I

    .line 23
    return-void
.end method

.method public setDvfsValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 28
    return-void
.end method
