.class Lcom/samsung/android/os/SemDvfsEmmcManager;
.super Lcom/samsung/android/os/SemDvfsManager;
.source "SemDvfsEmmcManager.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tagName"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/os/SemDvfsManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 15
    const-class v0, Lcom/samsung/android/os/SemDvfsEmmcManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemDvfsEmmcManager;->acquire(I)V

    .line 33
    return-void
.end method

.method public acquire(I)V
    .locals 8
    .param p1, "timeout"    # I

    .prologue
    .line 39
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsValue:I

    const/16 v2, -0x3e7

    if-ne v1, v2, :cond_1

    .line 40
    :cond_0
    return-void

    .line 43
    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 45
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

    iget-boolean v4, p0, Lcom/samsung/android/os/SemDvfsEmmcManager;->mIsAcquired:Z

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

    .line 47
    iget-boolean v1, p0, Lcom/samsung/android/os/SemDvfsEmmcManager;->mIsAcquired:Z

    if-eqz v1, :cond_2

    .line 48
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    .line 49
    const-string/jumbo v2, "acquire:: DVFS lock is already acquired. Previous lock will be released first."

    .line 48
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 53
    :cond_2
    iget v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_4

    .line 54
    const/4 v3, -0x1

    .line 56
    .local v3, "freq":I
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_3

    .line 57
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 58
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 61
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 62
    int-to-long v4, p1

    .line 63
    iget-object v6, p0, Lcom/samsung/android/os/SemDvfsManager;->mTagName:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/os/SemDvfsManager;->mContext:Landroid/content/Context;

    .line 62
    const/16 v2, 0x8

    .line 61
    invoke-virtual/range {v1 .. v7}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 66
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_4

    .line 67
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 70
    .end local v3    # "freq":I
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/os/SemDvfsEmmcManager;->mIsAcquired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 38
    return-void

    .line 71
    :catchall_0
    move-exception v1

    .line 72
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 71
    throw v1
.end method

.method public clearDvfsValue()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsValue:I

    .line 28
    return-void
.end method

.method public setDvfsValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsValue:I

    .line 19
    return-void
.end method

.method public setDvfsValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 24
    return-void
.end method
