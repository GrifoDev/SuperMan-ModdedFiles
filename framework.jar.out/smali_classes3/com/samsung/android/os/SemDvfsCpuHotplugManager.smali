.class Lcom/samsung/android/os/SemDvfsCpuHotplugManager;
.super Lcom/samsung/android/os/SemDvfsManager;
.source "SemDvfsCpuHotplugManager.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/os/SemDvfsManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const-class v0, Lcom/samsung/android/os/SemDvfsCpuHotplugManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsCpuHotplugManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "HOTPLUG_DISABLE"

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsCpuHotplugManager;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemDvfsCpuHotplugManager;->acquire(I)V

    return-void
.end method

.method public acquire(I)V
    .locals 9

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuHotplugManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v8

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuHotplugManager;->LOG_TAG:Ljava/lang/String;

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

    iget-boolean v3, p0, Lcom/samsung/android/os/SemDvfsCpuHotplugManager;->mIsAcquired:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , mTagName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsCpuHotplugManager;->mTagName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/os/SemDvfsCpuHotplugManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/os/SemDvfsCpuHotplugManager;->mIsAcquired:Z

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuHotplugManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "acquire:: DVFS lock is already acquired. Previous lock will be released first."

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/os/SemDvfsCpuHotplugManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsCpuHotplugManager;->release()V

    :cond_1
    iget v1, p0, Lcom/samsung/android/os/SemDvfsCpuHotplugManager;->mType:I

    const/16 v2, 0x19

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuHotplugManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuHotplugManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    int-to-long v4, p1

    iget-object v6, p0, Lcom/samsung/android/os/SemDvfsCpuHotplugManager;->mTagName:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/os/SemDvfsCpuHotplugManager;->mContext:Landroid/content/Context;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuHotplugManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuHotplugManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuHotplugManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/os/SemDvfsCpuHotplugManager;->mIsAcquired:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v8}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v8}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method public clearDvfsValue()V
    .locals 1

    const/16 v0, -0x3e7

    iput v0, p0, Lcom/samsung/android/os/SemDvfsCpuHotplugManager;->mDvfsValue:I

    return-void
.end method

.method public setDvfsValue(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/os/SemDvfsCpuHotplugManager;->mDvfsValue:I

    return-void
.end method

.method public setDvfsValue(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
