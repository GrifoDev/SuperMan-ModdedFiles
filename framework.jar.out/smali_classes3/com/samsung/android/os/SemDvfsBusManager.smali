.class Lcom/samsung/android/os/SemDvfsBusManager;
.super Lcom/samsung/android/os/SemDvfsManager;
.source "SemDvfsBusManager.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/os/SemDvfsManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const-class v0, Lcom/samsung/android/os/SemDvfsBusManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsBusManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "BUS"

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mName:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedSysBusFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mSupportedValues:[I

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedSysBusFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mSupportedValuesForSsrm:[I

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemDvfsBusManager;->acquire(I)V

    return-void
.end method

.method public acquire(I)V
    .locals 13

    const/4 v12, -0x1

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsBusManager;->LOG_TAG:Ljava/lang/String;

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

    iget-boolean v4, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mIsAcquired:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " , mTagName : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mTagName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/os/SemDvfsBusManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mIsAcquired:Z

    if-eqz v1, :cond_1

    if-ne p1, v12, :cond_1

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsBusManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "acquire:: DVFS lock is already acquired. Previous lock will be released first."

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/os/SemDvfsBusManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsBusManager;->release()V

    :cond_1
    iget v1, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mType:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mSupportedValues:[I

    if-eqz v1, :cond_7

    iget v3, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mDvfsValue:I

    if-eq v3, v12, :cond_2

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    int-to-long v4, p1

    iget-object v6, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mTagName:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mContext:Landroid/content/Context;

    const/16 v2, 0xa

    invoke-virtual/range {v1 .. v7}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    :cond_2
    if-eq v3, v12, :cond_7

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_7

    if-lez p1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    int-to-long v4, p1

    invoke-virtual {v1, v4, v5}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->setValueTimeout(J)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1, v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->setValueFreq(I)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsBusManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "acquire:: DVFS setvalue doesn\'t work : TYPE_BUS_MIN_busMinfreq = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/os/SemDvfsBusManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :cond_4
    :try_start_1
    iget v1, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mType:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mSupportedValues:[I

    if-eqz v1, :cond_7

    iget v7, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mDvfsValue:I

    if-eq v7, v12, :cond_5

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-nez v1, :cond_5

    iget-object v5, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    int-to-long v8, p1

    iget-object v10, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mTagName:Ljava/lang/String;

    iget-object v11, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mContext:Landroid/content/Context;

    const/16 v6, 0xb

    invoke-virtual/range {v5 .. v11}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    :cond_5
    if-eq v7, v12, :cond_7

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_7

    if-lez p1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    int-to-long v4, p1

    invoke-virtual {v1, v4, v5}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->setValueTimeout(J)V

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1, v7}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->setValueFreq(I)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsBusManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "acquire:: DVFS setvalue doesn\'t work : TYPE_BUS_MAX_busMaxfreq = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/os/SemDvfsBusManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :cond_7
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    :cond_8
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mIsAcquired:Z
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

    iput v0, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mDvfsValue:I

    return-void
.end method

.method public setDvfsValue(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/os/SemDvfsBusManager;->mDvfsValue:I

    return-void
.end method

.method public setDvfsValue(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
