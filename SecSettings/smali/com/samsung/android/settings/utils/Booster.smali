.class public Lcom/samsung/android/settings/utils/Booster;
.super Ljava/lang/Object;
.source "Booster.java"


# instance fields
.field private mCPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

.field private mContext:Landroid/content/Context;

.field private mCpuMinFreq:I

.field private mGPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

.field private mGpuMinFreq:I

.field private mLastBoosterDuration:J

.field private mLastBoosterTime:J

.field private mSupportedCPUFreqTable:[I

.field private mSupportedGPUFreqTable:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mCPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    iput-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mGPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    iput v0, p0, Lcom/samsung/android/settings/utils/Booster;->mCpuMinFreq:I

    iput v0, p0, Lcom/samsung/android/settings/utils/Booster;->mGpuMinFreq:I

    iput-wide v2, p0, Lcom/samsung/android/settings/utils/Booster;->mLastBoosterTime:J

    iput-wide v2, p0, Lcom/samsung/android/settings/utils/Booster;->mLastBoosterDuration:J

    iput-object p1, p0, Lcom/samsung/android/settings/utils/Booster;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/settings/utils/Booster;->prepareBooster()V

    return-void
.end method

.method private prepareBooster()V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/utils/Booster;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    invoke-static {v1, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mCPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mCPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mSupportedCPUFreqTable:[I

    iget-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mSupportedCPUFreqTable:[I

    if-nez v1, :cond_0

    const-string/jumbo v1, "Booster"

    const-string/jumbo v2, "mSupportedCPUFreqTable is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mSupportedCPUFreqTable:[I

    array-length v0, v1

    if-le v0, v5, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mSupportedCPUFreqTable:[I

    aget v1, v1, v5

    iput v1, p0, Lcom/samsung/android/settings/utils/Booster;->mCpuMinFreq:I

    :goto_0
    iget v1, p0, Lcom/samsung/android/settings/utils/Booster;->mCpuMinFreq:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mCPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    iget v2, p0, Lcom/samsung/android/settings/utils/Booster;->mCpuMinFreq:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    :cond_1
    const-string/jumbo v1, "Booster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCpuMinFreq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/utils/Booster;->mCpuMinFreq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/utils/Booster;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v1, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mGPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mGPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mSupportedGPUFreqTable:[I

    iget-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mSupportedGPUFreqTable:[I

    if-nez v1, :cond_4

    return-void

    :cond_2
    if-lez v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mSupportedCPUFreqTable:[I

    aget v1, v1, v4

    iput v1, p0, Lcom/samsung/android/settings/utils/Booster;->mCpuMinFreq:I

    goto :goto_0

    :cond_3
    iput v6, p0, Lcom/samsung/android/settings/utils/Booster;->mCpuMinFreq:I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mSupportedGPUFreqTable:[I

    array-length v0, v1

    if-le v0, v5, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mSupportedGPUFreqTable:[I

    aget v1, v1, v5

    iput v1, p0, Lcom/samsung/android/settings/utils/Booster;->mGpuMinFreq:I

    :goto_1
    iget v1, p0, Lcom/samsung/android/settings/utils/Booster;->mGpuMinFreq:I

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mGPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    iget v2, p0, Lcom/samsung/android/settings/utils/Booster;->mGpuMinFreq:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    :cond_5
    const-string/jumbo v1, "Booster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mGpuMinFreq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/utils/Booster;->mGpuMinFreq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    if-lez v0, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mSupportedGPUFreqTable:[I

    aget v1, v1, v4

    iput v1, p0, Lcom/samsung/android/settings/utils/Booster;->mGpuMinFreq:I

    goto :goto_1

    :cond_7
    iput v6, p0, Lcom/samsung/android/settings/utils/Booster;->mGpuMinFreq:I

    goto :goto_1
.end method


# virtual methods
.method public start(I)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/samsung/android/settings/utils/Booster;->mLastBoosterTime:J

    sub-long v2, v0, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    iget-wide v4, p0, Lcom/samsung/android/settings/utils/Booster;->mLastBoosterDuration:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    return-void

    :cond_0
    iput-wide v0, p0, Lcom/samsung/android/settings/utils/Booster;->mLastBoosterTime:J

    int-to-long v4, p1

    iput-wide v4, p0, Lcom/samsung/android/settings/utils/Booster;->mLastBoosterDuration:J

    iget v4, p0, Lcom/samsung/android/settings/utils/Booster;->mCpuMinFreq:I

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/utils/Booster;->mCPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v4, p1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    :cond_1
    iget v4, p0, Lcom/samsung/android/settings/utils/Booster;->mGpuMinFreq:I

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/utils/Booster;->mGPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v4, p1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    :cond_2
    return-void
.end method
