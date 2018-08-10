.class Lcom/samsung/android/os/SemDvfsPowerCollapseManager;
.super Lcom/samsung/android/os/SemDvfsManager;
.source "SemDvfsPowerCollapseManager.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/os/SemDvfsManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const-class v0, Lcom/samsung/android/os/SemDvfsPowerCollapseManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsPowerCollapseManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "POWER_COLLAPSE"

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsPowerCollapseManager;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemDvfsPowerCollapseManager;->acquire(I)V

    return-void
.end method

.method public acquire(I)V
    .locals 8

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsPowerCollapseManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsPowerCollapseManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "acquire:: timeout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mIsAcquired = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/os/SemDvfsPowerCollapseManager;->mIsAcquired:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , mTagName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsPowerCollapseManager;->mTagName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/os/SemDvfsPowerCollapseManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/os/SemDvfsPowerCollapseManager;->mIsAcquired:Z

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsPowerCollapseManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "acquire:: DVFS lock is already acquired. Previous lock will be released first."

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/os/SemDvfsPowerCollapseManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsPowerCollapseManager;->release()V

    :cond_1
    iget v1, p0, Lcom/samsung/android/os/SemDvfsPowerCollapseManager;->mType:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsPowerCollapseManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsPowerCollapseManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    int-to-long v4, p1

    iget-object v6, p0, Lcom/samsung/android/os/SemDvfsPowerCollapseManager;->mTagName:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/os/SemDvfsPowerCollapseManager;->mContext:Landroid/content/Context;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsPowerCollapseManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsPowerCollapseManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_4

    if-lez p1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsPowerCollapseManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->setValueTimeout(J)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsPowerCollapseManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/os/SemDvfsPowerCollapseManager;->mIsAcquired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    iput v0, p0, Lcom/samsung/android/os/SemDvfsPowerCollapseManager;->mDvfsValue:I

    return-void
.end method

.method public setDvfsValue(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/os/SemDvfsPowerCollapseManager;->mDvfsValue:I

    return-void
.end method

.method public setDvfsValue(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
