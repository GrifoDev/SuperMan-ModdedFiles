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

    .prologue
    .line 15
    const-string/jumbo v0, "0x4948"

    .line 16
    const-string/jumbo v1, "ro.debug_level"

    const-string/jumbo v2, "0x4f4c"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/os/SemDvfsPresets;->sIsDebugLevelHigh:Z

    .line 22
    const-string/jumbo v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/os/SemDvfsPresets;->BOARD_PLATFORM:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/os/SemDvfsPresets;->DEVICE_TYPE:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "ro.chipname"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/os/SemDvfsPresets;->CHIP_NAME:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "ro.hardware"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/os/SemDvfsPresets;->HARDWARE_NAME:Ljava/lang/String;

    .line 13
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUCoreNum:[I

    .line 32
    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUCoreNumForSSRM:[I

    .line 34
    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUFrequency:[I

    .line 36
    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUFrequencyForSSRM:[I

    .line 38
    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsPresets;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 42
    const-string/jumbo v0, "CustomFrequencyManagerService"

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CustomFrequencyManager;

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsPresets;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 43
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsPresets;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v0, :cond_0

    .line 44
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsPresets;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedCPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUFrequency:[I

    .line 48
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsPresets;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedCPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUFrequencyForSSRM:[I

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/os/SemDvfsPresets;->adjustCPUFreqTable()V

    .line 50
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsPresets;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedCPUCoreNum()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUCoreNum:[I

    .line 51
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsPresets;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedCPUCoreNum()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUCoreNumForSSRM:[I

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/os/SemDvfsPresets;->adjustCPUCoreTable()V

    .line 40
    return-void
.end method

.method private adjustCPUCoreTable()V
    .locals 5

    .prologue
    .line 99
    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUCoreNum:[I

    if-nez v3, :cond_0

    .line 100
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x0

    .line 104
    .local v0, "SHIFT_STEPS":I
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

    .line 105
    :cond_1
    const/4 v0, 0x1

    .line 108
    :cond_2
    if-lez v0, :cond_4

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUCoreNum:[I

    array-length v3, v3

    if-le v3, v0, :cond_4

    .line 109
    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUCoreNum:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    new-array v2, v3, [I

    .line 110
    .local v2, "newCPUCoreTable":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUCoreNum:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    if-ge v1, v3, :cond_3

    .line 111
    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUCoreNum:[I

    add-int v4, v1, v0

    aget v3, v3, v4

    aput v3, v2, v1

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_3
    iput-object v2, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUCoreNum:[I

    .line 98
    .end local v1    # "i":I
    .end local v2    # "newCPUCoreTable":[I
    :cond_4
    return-void
.end method

.method private adjustCPUFreqTable()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 57
    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUFrequency:[I

    if-nez v3, :cond_0

    .line 58
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 62
    .local v0, "SHIFT_STEPS":I
    const-string/jumbo v3, "hf"

    const-string/jumbo v4, "hrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 63
    const/4 v0, 0x1

    .line 81
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

    .line 82
    const-string/jumbo v3, "ta"

    const-string/jumbo v4, "hrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 81
    if-eqz v3, :cond_a

    .line 83
    :cond_2
    const/4 v0, 0x2

    .line 88
    :cond_3
    :goto_1
    if-lez v0, :cond_c

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUFrequency:[I

    array-length v3, v3

    if-le v3, v0, :cond_c

    .line 89
    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUFrequency:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    new-array v2, v3, [I

    .line 90
    .local v2, "newCPUFreqTable":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUFrequency:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    if-ge v1, v3, :cond_b

    .line 91
    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUFrequency:[I

    add-int v4, v1, v0

    aget v3, v3, v4

    aput v3, v2, v1

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 64
    .end local v1    # "i":I
    .end local v2    # "newCPUFreqTable":[I
    :cond_4
    const-string/jumbo v3, "hrl"

    const-string/jumbo v4, "hrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 65
    const/4 v0, 0x6

    goto :goto_0

    .line 66
    :cond_5
    const-string/jumbo v3, "island"

    const-string/jumbo v4, "hrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 67
    const-string/jumbo v3, "ssrm_hero2l_xx"

    const-string/jumbo v4, "novel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    const/4 v0, 0x1

    goto :goto_0

    .line 70
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

    .line 71
    const-string/jumbo v3, "tr3ca"

    const-string/jumbo v4, "hrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 70
    if-nez v3, :cond_7

    .line 71
    const-string/jumbo v3, "zl"

    const-string/jumbo v4, "hrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 70
    if-nez v3, :cond_7

    .line 72
    const-string/jumbo v3, "zq"

    const-string/jumbo v4, "hrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 70
    if-eqz v3, :cond_8

    .line 73
    :cond_7
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 74
    :cond_8
    const-string/jumbo v3, "tf"

    const-string/jumbo v4, "hrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUFrequency:[I

    aget v3, v3, v5

    const v4, 0x286e00

    if-ne v3, v4, :cond_9

    .line 76
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 78
    :cond_9
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 84
    :cond_a
    const-string/jumbo v3, "ssrm_hero2l_xx"

    const-string/jumbo v4, "ja_kor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 85
    const/4 v0, 0x3

    goto/16 :goto_1

    .line 93
    .restart local v1    # "i":I
    .restart local v2    # "newCPUFreqTable":[I
    :cond_b
    iput-object v2, p0, Lcom/samsung/android/os/SemDvfsPresets;->mSupportedCPUFrequency:[I

    .line 56
    .end local v1    # "i":I
    .end local v2    # "newCPUFreqTable":[I
    :cond_c
    return-void
.end method
