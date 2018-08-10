.class Lcom/samsung/android/os/SemDvfsEmmcManager;
.super Lcom/samsung/android/os/SemDvfsManager;
.source "SemDvfsEmmcManager.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/os/SemDvfsManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const-class v0, Lcom/samsung/android/os/SemDvfsEmmcManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsEmmcManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemDvfsEmmcManager;->acquire(I)V

    return-void
.end method

.method public acquire(I)V
    .locals 8

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsEmmcManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/os/SemDvfsEmmcManager;->mDvfsValue:I

    const/16 v2, -0x3e7

    if-ne v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsEmmcManager;->LOG_TAG:Ljava/lang/String;

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

    iget-boolean v4, p0, Lcom/samsung/android/os/SemDvfsEmmcManager;->mIsAcquired:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " , mTagName : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/os/SemDvfsEmmcManager;->mTagName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/os/SemDvfsEmmcManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/os/SemDvfsEmmcManager;->mIsAcquired:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsEmmcManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "acquire:: DVFS lock is already acquired. Previous lock will be released first."

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/os/SemDvfsEmmcManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsEmmcManager;->release()V

    :cond_2
    iget v1, p0, Lcom/samsung/android/os/SemDvfsEmmcManager;->mType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_4

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsEmmcManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsEmmcManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsEmmcManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsEmmcManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    int-to-long v4, p1

    iget-object v6, p0, Lcom/samsung/android/os/SemDvfsEmmcManager;->mTagName:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/os/SemDvfsEmmcManager;->mContext:Landroid/content/Context;

    const/16 v2, 0x8

    invoke-virtual/range {v1 .. v7}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsEmmcManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsEmmcManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsEmmcManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/os/SemDvfsEmmcManager;->mIsAcquired:Z
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

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/os/SemDvfsEmmcManager;->mDvfsValue:I

    return-void
.end method

.method public setDvfsValue(I)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/os/SemDvfsEmmcManager;->mDvfsValue:I

    return-void
.end method

.method public setDvfsValue(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
