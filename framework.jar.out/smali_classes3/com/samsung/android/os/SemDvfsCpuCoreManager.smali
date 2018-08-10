.class Lcom/samsung/android/os/SemDvfsCpuCoreManager;
.super Lcom/samsung/android/os/SemDvfsManager;
.source "SemDvfsCpuCoreManager.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/os/SemDvfsManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const-class v0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "CPU_CORE"

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mName:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedCPUCoreNum()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mSupportedValues:[I

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedCPUCoreNum()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mSupportedValuesForSsrm:[I

    invoke-direct {p0}, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->adjustCPUCoreTable()V

    return-void
.end method

.method private adjustCPUCoreTable()V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mSupportedValues:[I

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v3, "isla"

    const-string/jumbo v4, "hrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "carmen2"

    const-string/jumbo v4, "hrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    if-lez v0, :cond_4

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mSupportedValues:[I

    array-length v3, v3

    if-le v3, v0, :cond_4

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mSupportedValues:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    new-array v2, v3, [I

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mSupportedValues:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mSupportedValues:[I

    add-int v4, v1, v0

    aget v3, v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iput-object v2, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mSupportedValues:[I

    :cond_4
    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->acquire(I)V

    return-void
.end method

.method public acquire(I)V
    .locals 8

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->LOG_TAG:Ljava/lang/String;

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

    iget-boolean v4, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mIsAcquired:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " , mTagName : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mTagName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mIsAcquired:Z

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "acquire:: DVFS lock is already acquired. Previous lock will be released first."

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->release()V

    :cond_1
    iget v1, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mType:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mSupportedValues:[I

    if-eqz v1, :cond_8

    iget v3, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mDvfsValue:I

    if-lez v3, :cond_2

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    int-to-long v4, p1

    iget-object v6, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mTagName:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-virtual/range {v1 .. v7}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    :cond_2
    if-lez v3, :cond_8

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_8

    if-lez p1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    int-to-long v4, p1

    invoke-virtual {v1, v4, v5}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->setValueTimeout(J)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1, v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->setValueFreq(I)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "acquire:: DVFS setvalue doesn\'t work : TYPE_CPU_CORE_NUM_MIN_coreNum = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :cond_4
    :try_start_1
    iget v1, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mType:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mSupportedValues:[I

    if-eqz v1, :cond_8

    iget v3, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mDvfsValue:I

    if-gtz v3, :cond_5

    const-string/jumbo v1, "msm8992"

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "msm8952"

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    int-to-long v4, p1

    iget-object v6, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mTagName:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-virtual/range {v1 .. v7}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    :cond_6
    if-lez v3, :cond_8

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_8

    if-lez p1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    int-to-long v4, p1

    invoke-virtual {v1, v4, v5}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->setValueTimeout(J)V

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1, v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->setValueFreq(I)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "acquire:: DVFS setvalue doesn\'t work : TYPE_CPU_CORE_NUM_MAX_coreNum = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :cond_8
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mIsAcquired:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method public clearDvfsValue()V
    .locals 1

    const/16 v0, -0x3e7

    iput v0, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mDvfsValue:I

    return-void
.end method

.method public setDvfsValue(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;->mDvfsValue:I

    return-void
.end method

.method public setDvfsValue(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
