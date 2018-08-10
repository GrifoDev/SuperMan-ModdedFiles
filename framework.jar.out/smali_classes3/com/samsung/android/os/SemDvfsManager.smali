.class public abstract Lcom/samsung/android/os/SemDvfsManager;
.super Ljava/lang/Object;
.source "SemDvfsManager.java"


# static fields
.field public static final HINT_AMS_ACT_LAZY:Ljava/lang/String; = "AMS_ACT_LAZY"

.field public static final HINT_AMS_ACT_RESUME:Ljava/lang/String; = "AMS_ACT_RESUME"

.field public static final HINT_AMS_ACT_START:Ljava/lang/String; = "AMS_ACT_START"

.field public static final HINT_AMS_APP_HOME:Ljava/lang/String; = "AMS_APP_HOME"

.field public static final HINT_AMS_APP_SWITCH:Ljava/lang/String; = "AMS_APP_SWITCH"

.field public static final HINT_AMS_RELAUNCH_RESUME:Ljava/lang/String; = "AMS_RELAUNCH_RESUME"

.field public static final HINT_AMS_RESUME:Ljava/lang/String; = "AMS_RESUME"

.field public static final HINT_AMS_RESUME_TAIL:Ljava/lang/String; = "AMS_RESUME_TAIL"

.field public static final HINT_AMS_RESUME_TAIL_CSTATE:Ljava/lang/String; = "AMS_RESUME_TAIL_CSTATE"

.field public static final HINT_APP_LAUNCH:Ljava/lang/String; = "APP_LAUNCH"

.field public static final HINT_BADGE_UPDATE:Ljava/lang/String; = "BADGE_UPDATE"

.field public static final HINT_BROWSER_FLING:Ljava/lang/String; = "BROWSER_FLING"

.field public static final HINT_BROWSER_TOUCH:Ljava/lang/String; = "BROWSER_TOUCH"

.field public static final HINT_CONTACT_SCROLL:Ljava/lang/String; = "CONTACT_SCROLL"

.field public static final HINT_DEVICE_WAKEUP:Ljava/lang/String; = "DEVICE_WAKEUP"

.field public static final HINT_GALLERY_SCROLL:Ljava/lang/String; = "GALLERY_SCROLL"

.field public static final HINT_GALLERY_TOUCH:Ljava/lang/String; = "GALLERY_TOUCH"

.field public static final HINT_GALLERY_TOUCH_TAIL:Ljava/lang/String; = "GALLERY_TOUCH_TAIL"

.field public static final HINT_GESTURE_DETECTED:Ljava/lang/String; = "GESTURE_DETECTED"

.field public static final HINT_HOME_KEY_TOUCH:Ljava/lang/String; = "HOME_KEY_TOUCH"

.field public static final HINT_LAUNCHER_TOUCH:Ljava/lang/String; = "LAUNCHER_TOUCH"

.field public static final HINT_LISTVIEW_SCROLL:Ljava/lang/String; = "LISTVIEW_SCROLL"

.field public static final HINT_PWM_ROTATION:Ljava/lang/String; = "PWM_ROTATION"

.field public static final HINT_SMOOTH_SCROLL:Ljava/lang/String; = "SMOOTH_SCROLL"

.field public static final TYPE_BUS_MAX:I = 0x14

.field public static final TYPE_BUS_MIN:I = 0x13

.field public static final TYPE_CPUCTL:I = 0x1c

.field public static final TYPE_CPUSET:I = 0x1b

.field public static final TYPE_CPU_CORE_NUM_MAX:I = 0xf

.field public static final TYPE_CPU_CORE_NUM_MIN:I = 0xe

.field public static final TYPE_CPU_HOTPLUG_DISABLE:I = 0x19

.field public static final TYPE_CPU_LEGACY_SCHEDULER:I = 0x18

.field public static final TYPE_CPU_MAX:I = 0xd

.field public static final TYPE_CPU_MIN:I = 0xc

.field public static final TYPE_CPU_POWER_COLLAPSE_DISABLE:I = 0x17

.field public static final TYPE_EMMC_BURST_MODE:I = 0x12

.field public static final TYPE_FPS_MAX:I = 0x16

.field public static final TYPE_GPU_MAX:I = 0x11

.field public static final TYPE_GPU_MIN:I = 0x10

.field public static final TYPE_HINT:I = 0x15

.field public static final TYPE_LPM_BIAS:I = 0x1e

.field public static final TYPE_MAX:I = 0x1f

.field public static final TYPE_NONE:I = 0xb

.field public static final TYPE_PCIE_PSM_DISABLE:I = 0x1a

.field public static final TYPE_SCHEDTUNE_POLICY:I = 0x1d

.field static mToken:I


# instance fields
.field final BASE_MODEL:Ljava/lang/String;

.field BOARD_PLATFORM:Ljava/lang/String;

.field final DVFS_FILENAME:Ljava/lang/String;

.field LOG_TAG:Ljava/lang/String;

.field final SIOP_MODEL:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mCustomFreqManager:Landroid/os/CustomFrequencyManager;

.field mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field mDvfsValue:I

.field volatile mIsAcquired:Z

.field mName:Ljava/lang/String;

.field mSupportedValues:[I

.field mSupportedValuesForSsrm:[I

.field mTagName:Ljava/lang/String;

.field mType:I

.field sIsDebugLevelHigh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/os/SemDvfsManager;->mToken:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "0x4948"

    const-string/jumbo v1, "ro.debug_level"

    const-string/jumbo v2, "0x4f4c"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/os/SemDvfsManager;->sIsDebugLevelHigh:Z

    const-string/jumbo v0, "hrl"

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->BASE_MODEL:Ljava/lang/String;

    const-string/jumbo v0, "ssrm_hero2l_xx"

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->SIOP_MODEL:Ljava/lang/String;

    const-string/jumbo v0, "dvfs_policy_jungfrau_xx"

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->DVFS_FILENAME:Ljava/lang/String;

    const-string/jumbo v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->BOARD_PLATFORM:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/os/SemDvfsManager;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/samsung/android/os/SemDvfsManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    iput-object v3, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iput-object v3, p0, Lcom/samsung/android/os/SemDvfsManager;->mTagName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mIsAcquired:Z

    const/16 v0, 0xb

    iput v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mType:I

    iput-object v3, p0, Lcom/samsung/android/os/SemDvfsManager;->mName:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/os/SemDvfsManager;->mSupportedValues:[I

    iput-object v3, p0, Lcom/samsung/android/os/SemDvfsManager;->mSupportedValuesForSsrm:[I

    const/16 v0, -0x3e7

    iput v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsValue:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/os/SemDvfsManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/os/SemDvfsManager;->mTagName:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/os/SemDvfsManager;->mType:I

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "CustomFrequencyManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CustomFrequencyManager;

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "SemDvfsManager:: failed to load CFMS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemDvfsManager:: New instance is created for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsManager;->mTagName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/os/SemDvfsManager;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/os/SemDvfsManager;->mToken:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/android/os/SemDvfsManager;->mToken:I

    if-eqz p2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/samsung/android/os/SemDvfsManager;->mToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mTagName:Ljava/lang/String;

    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/samsung/android/os/SemDvfsManager;->mToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mTagName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static createInstance(Landroid/content/Context;I)Lcom/samsung/android/os/SemDvfsManager;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    return-object v0
.end method

.method public static createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;
    .locals 2

    const/16 v1, 0x15

    const/16 v0, 0xc

    if-eq p2, v0, :cond_0

    const/16 v0, 0xd

    if-ne p2, v0, :cond_1

    :cond_0
    new-instance v0, Lcom/samsung/android/os/SemDvfsCpuManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/os/SemDvfsCpuManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0

    :cond_1
    const/16 v0, 0xe

    if-eq p2, v0, :cond_2

    const/16 v0, 0xf

    if-ne p2, v0, :cond_3

    :cond_2
    new-instance v0, Lcom/samsung/android/os/SemDvfsCpuCoreManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/os/SemDvfsCpuCoreManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0

    :cond_3
    const/16 v0, 0x10

    if-eq p2, v0, :cond_4

    const/16 v0, 0x11

    if-ne p2, v0, :cond_5

    :cond_4
    new-instance v0, Lcom/samsung/android/os/SemDvfsGpuManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/os/SemDvfsGpuManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0

    :cond_5
    const/16 v0, 0x12

    if-ne p2, v0, :cond_6

    new-instance v0, Lcom/samsung/android/os/SemDvfsEmmcManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/os/SemDvfsEmmcManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0

    :cond_6
    const/16 v0, 0x13

    if-eq p2, v0, :cond_7

    const/16 v0, 0x14

    if-ne p2, v0, :cond_8

    :cond_7
    new-instance v0, Lcom/samsung/android/os/SemDvfsBusManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/os/SemDvfsBusManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0

    :cond_8
    const/16 v0, 0x17

    if-ne p2, v0, :cond_9

    new-instance v0, Lcom/samsung/android/os/SemDvfsPowerCollapseManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/os/SemDvfsPowerCollapseManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0

    :cond_9
    const/16 v0, 0x19

    if-ne p2, v0, :cond_a

    new-instance v0, Lcom/samsung/android/os/SemDvfsCpuHotplugManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/os/SemDvfsCpuHotplugManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0

    :cond_a
    const/16 v0, 0x1d

    if-ne p2, v0, :cond_b

    new-instance v0, Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0

    :cond_b
    const/16 v0, 0x1e

    if-ne p2, v0, :cond_c

    new-instance v0, Lcom/samsung/android/os/SemDvfsLpmBiasManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/os/SemDvfsLpmBiasManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0

    :cond_c
    if-ne p2, v1, :cond_d

    new-instance v0, Lcom/samsung/android/os/SemDvfsHintManager;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/samsung/android/os/SemDvfsHintManager;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    return-object v0

    :cond_d
    if-le p2, v1, :cond_e

    new-instance v0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0

    :cond_e
    sget v0, Lcom/samsung/android/os/SemDvfsManager;->mToken:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/android/os/SemDvfsManager;->mToken:I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static createInstance(Landroid/content/Context;Ljava/lang/String;II)Lcom/samsung/android/os/SemDvfsManager;
    .locals 1

    const/16 v0, 0x15

    if-ne p2, v0, :cond_0

    new-instance v0, Lcom/samsung/android/os/SemDvfsHintManager;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/os/SemDvfsHintManager;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    return-object v0

    :cond_0
    sget v0, Lcom/samsung/android/os/SemDvfsManager;->mToken:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/android/os/SemDvfsManager;->mToken:I

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public abstract acquire()V
.end method

.method public acquire(I)V
    .locals 0

    return-void
.end method

.method public acquire(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public abstract clearDvfsValue()V
.end method

.method public getApproximateFrequency(I)I
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsManager;->mSupportedValues:[I

    if-eqz v2, :cond_0

    if-gez p1, :cond_1

    :cond_0
    return v4

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsManager;->mSupportedValues:[I

    array-length v0, v2

    if-gtz v0, :cond_2

    return v4

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsManager;->mSupportedValues:[I

    aget v1, v2, v3

    :goto_0
    if-lez v0, :cond_3

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsManager;->mSupportedValues:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-lt v2, p1, :cond_4

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsManager;->mSupportedValues:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v2, v3

    :cond_3
    return v1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getApproximateFrequencyByPercent(D)I
    .locals 7

    const/4 v5, 0x0

    const/4 v4, -0x1

    const-string/jumbo v1, "CPU_CORE"

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsManager;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mSupportedValues:[I

    if-nez v1, :cond_1

    :cond_0
    return v4

    :cond_1
    const-wide/16 v2, 0x0

    cmpg-double v1, p1, v2

    if-ltz v1, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, p1, v2

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mSupportedValues:[I

    array-length v0, v1

    if-gtz v0, :cond_2

    return v4

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mSupportedValues:[I

    aget v1, v1, v5

    int-to-double v2, v1

    mul-double/2addr v2, p1

    double-to-int v1, v2

    invoke-virtual {p0, v1}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequency(I)I

    move-result v1

    return v1
.end method

.method public getApproximateFrequencyByPercentForSsrm(D)I
    .locals 7

    const/4 v5, 0x0

    const/4 v4, -0x1

    const-string/jumbo v1, "CPU_CORE"

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsManager;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mSupportedValuesForSsrm:[I

    if-nez v1, :cond_1

    :cond_0
    return v4

    :cond_1
    const-wide/16 v2, 0x0

    cmpg-double v1, p1, v2

    if-ltz v1, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, p1, v2

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mSupportedValuesForSsrm:[I

    array-length v0, v1

    if-gtz v0, :cond_2

    return v4

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mSupportedValuesForSsrm:[I

    aget v1, v1, v5

    int-to-double v2, v1

    mul-double/2addr v2, p1

    double-to-int v1, v2

    invoke-virtual {p0, v1}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyForSsrm(I)I

    move-result v1

    return v1
.end method

.method public getApproximateFrequencyForSsrm(I)I
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getApproximateFrequencyForSsrm , mName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/os/SemDvfsManager;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , freq : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "CPU"

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "CORE_NUM"

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "GPU"

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "BUS"

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsManager;->mSupportedValuesForSsrm:[I

    if-eqz v2, :cond_1

    if-gez p1, :cond_2

    :cond_1
    return v6

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsManager;->mSupportedValuesForSsrm:[I

    array-length v0, v2

    if-gtz v0, :cond_3

    return v6

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsManager;->mSupportedValuesForSsrm:[I

    aget v1, v2, v5

    :goto_0
    if-lez v0, :cond_4

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsManager;->mSupportedValuesForSsrm:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-lt v2, p1, :cond_5

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsManager;->mSupportedValuesForSsrm:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v2, v3

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getApproximateFrequencyForSsrm = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/os/SemDvfsManager;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , freq : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p1}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequency(I)I

    move-result v2

    return v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedFrequency()[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mSupportedValues:[I

    return-object v0
.end method

.method public getSupportedFrequencyForSsrm()[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mSupportedValuesForSsrm:[I

    return-object v0
.end method

.method public logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/os/SemDvfsManager;->sIsDebugLevelHigh:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public release()V
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "release():: mIsAcquired = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/os/SemDvfsManager;->mIsAcquired:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/os/SemDvfsManager;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , mTagName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/os/SemDvfsManager;->mTagName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/os/SemDvfsManager;->mIsAcquired:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/os/SemDvfsManager;->mIsAcquired:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v2
.end method

.method public abstract setDvfsValue(I)V
.end method

.method public abstract setDvfsValue(Ljava/lang/String;)V
.end method

.method public update(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
