.class Lcom/samsung/android/os/SemDvfsPresets;
.super Ljava/lang/Object;
.source "SemDvfsPresets.java"


# static fields
.field static final BASE_MODEL:Ljava/lang/String; = "hrl"

.field static BOARD_PLATFORM:Ljava/lang/String; = null

.field static final CHIP_NAME:Ljava/lang/String;

.field static final DEVICE_TYPE:Ljava/lang/String;

.field static final HARDWARE_NAME:Ljava/lang/String;

.field static final SIOP_MODEL:Ljava/lang/String; = "ssrm_hero2l_xx"

.field static sIsDebugLevelHigh:Z


# instance fields
.field private mCustomFreqManager:Landroid/os/CustomFrequencyManager;

.field mSupportedCPUCoreNum:[I

.field mSupportedCPUCoreNumForSSRM:[I

.field mSupportedCPUFrequency:[I

.field mSupportedCPUFrequencyForSSRM:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "0x4948"

    const-string/jumbo v1, "ro.debug_level"

    const-string/jumbo v2, "0x4f4c"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/os/SemDvfsPresets;->sIsDebugLevelHigh:Z

    const-string/jumbo v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/os/SemDvfsPresets;->BOARD_PLATFORM:Ljava/lang/String;

    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/os/SemDvfsPresets;->DEVICE_TYPE:Ljava/lang/String;

    const-string/jumbo v0, "ro.chipname"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/os/SemDvfsPresets;->CHIP_NAME:Ljava/lang/String;

    const-string/jumbo v0, "ro.hardware"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/os/SemDvfsPresets;->HARDWARE_NAME:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUCoreNum:[I

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUCoreNumForSSRM:[I

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUFrequency:[I

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUFrequencyForSSRM:[I

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsPresets;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const-string/jumbo v0, "CustomFrequencyManagerService"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CustomFrequencyManager;

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsPresets;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsPresets;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsPresets;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedCPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUFrequency:[I

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsPresets;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedCPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUFrequencyForSSRM:[I

    invoke-direct {p0}, Lcom/samsung/android/os/SemDvfsPresets;->adjustCPUFreqTable()V

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsPresets;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedCPUCoreNum()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUCoreNum:[I

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsPresets;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedCPUCoreNum()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUCoreNumForSSRM:[I

    invoke-direct {p0}, Lcom/samsung/android/os/SemDvfsPresets;->adjustCPUCoreTable()V

    return-void
.end method

.method private adjustCPUCoreTable()V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUCoreNum:[I

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

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUCoreNum:[I

    array-length v3, v3

    if-le v3, v0, :cond_4

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUCoreNum:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    new-array v2, v3, [I

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUCoreNum:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUCoreNum:[I

    add-int v4, v1, v0

    aget v3, v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iput-object v2, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUCoreNum:[I

    :cond_4
    return-void
.end method

.method private adjustCPUFreqTable()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUFrequency:[I

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v3, "hf"

    const-string/jumbo v4, "hrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v0, 0x1

    :cond_1
    :goto_0
    const-string/jumbo v3, "ssrm_hero2l_xx"

    const-string/jumbo v4, "lentis"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "ssrm_hero2l_xx"

    const-string/jumbo v4, "kcat6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "ta"

    const-string/jumbo v4, "hrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_2
    const/4 v0, 0x2

    :cond_3
    :goto_1
    if-lez v0, :cond_c

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUFrequency:[I

    array-length v3, v3

    if-le v3, v0, :cond_c

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUFrequency:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    new-array v2, v3, [I

    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUFrequency:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    if-ge v1, v3, :cond_b

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUFrequency:[I

    add-int v4, v1, v0

    aget v3, v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const-string/jumbo v3, "hrl"

    const-string/jumbo v4, "hrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "island"

    const-string/jumbo v4, "hrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "ssrm_hero2l_xx"

    const-string/jumbo v4, "novel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const-string/jumbo v3, "hrq"

    const-string/jumbo v4, "hrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, "kf"

    const-string/jumbo v4, "hrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, "ka"

    const-string/jumbo v4, "hrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, "tr3ca"

    const-string/jumbo v4, "hrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, "zl"

    const-string/jumbo v4, "hrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, "zq"

    const-string/jumbo v4, "hrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v3, "tf"

    const-string/jumbo v4, "hrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUFrequency:[I

    aget v3, v3, v5

    const v4, 0x286e00

    if-ne v3, v4, :cond_9

    const/4 v0, 0x5

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v3, "ssrm_hero2l_xx"

    const-string/jumbo v4, "ja_kor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x3

    goto/16 :goto_1

    :cond_b
    iput-object v2, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUFrequency:[I

    :cond_c
    return-void
.end method
