.class public Landroid/os/DVFSHelper;
.super Ljava/lang/Object;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/DVFSHelper$Model8930AB;,
        Landroid/os/DVFSHelper$Model;,
        Landroid/os/DVFSHelper$ModelA8E;,
        Landroid/os/DVFSHelper$ModelCARMEN2;,
        Landroid/os/DVFSHelper$ModelCORE33G;,
        Landroid/os/DVFSHelper$ModelD2;,
        Landroid/os/DVFSHelper$ModelDegasLTE;,
        Landroid/os/DVFSHelper$ModelExynos4;,
        Landroid/os/DVFSHelper$ModelGRL;,
        Landroid/os/DVFSHelper$ModelGRLForFHD;,
        Landroid/os/DVFSHelper$ModelGRLForHD;,
        Landroid/os/DVFSHelper$ModelGRQ;,
        Landroid/os/DVFSHelper$ModelGRQForFHD;,
        Landroid/os/DVFSHelper$ModelGRQForHD;,
        Landroid/os/DVFSHelper$ModelHA;,
        Landroid/os/DVFSHelper$ModelHF;,
        Landroid/os/DVFSHelper$ModelHRL;,
        Landroid/os/DVFSHelper$ModelHRQ;,
        Landroid/os/DVFSHelper$ModelHawaii;,
        Landroid/os/DVFSHelper$ModelISLA;,
        Landroid/os/DVFSHelper$ModelISLAND;,
        Landroid/os/DVFSHelper$ModelISLAQUAD;,
        Landroid/os/DVFSHelper$ModelJ210F;,
        Landroid/os/DVFSHelper$ModelJA;,
        Landroid/os/DVFSHelper$ModelJAKOR;,
        Landroid/os/DVFSHelper$ModelJAVA;,
        Landroid/os/DVFSHelper$ModelJBP;,
        Landroid/os/DVFSHelper$ModelJF;,
        Landroid/os/DVFSHelper$ModelJOSHUA;,
        Landroid/os/DVFSHelper$ModelKA;,
        Landroid/os/DVFSHelper$ModelKAM;,
        Landroid/os/DVFSHelper$ModelKF;,
        Landroid/os/DVFSHelper$ModelKMINI;,
        Landroid/os/DVFSHelper$ModelKQ;,
        Landroid/os/DVFSHelper$ModelM0;,
        Landroid/os/DVFSHelper$ModelMSM8916;,
        Landroid/os/DVFSHelper$ModelMSM8916_A3;,
        Landroid/os/DVFSHelper$ModelMSM8917;,
        Landroid/os/DVFSHelper$ModelMSM8929;,
        Landroid/os/DVFSHelper$ModelMSM8939;,
        Landroid/os/DVFSHelper$ModelMSM8952;,
        Landroid/os/DVFSHelper$ModelMSM8953;,
        Landroid/os/DVFSHelper$ModelMSM8976;,
        Landroid/os/DVFSHelper$ModelMSM8992;,
        Landroid/os/DVFSHelper$ModelMSM8x26;,
        Landroid/os/DVFSHelper$ModelNOVEL;,
        Landroid/os/DVFSHelper$ModelON5;,
        Landroid/os/DVFSHelper$ModelPP;,
        Landroid/os/DVFSHelper$ModelPXA1088;,
        Landroid/os/DVFSHelper$ModelPXA1908;,
        Landroid/os/DVFSHelper$ModelPXA1936;,
        Landroid/os/DVFSHelper$ModelPicasso3GWIFI;,
        Landroid/os/DVFSHelper$ModelSA;,
        Landroid/os/DVFSHelper$ModelSF;,
        Landroid/os/DVFSHelper$ModelSantos10;,
        Landroid/os/DVFSHelper$ModelTA;,
        Landroid/os/DVFSHelper$ModelTF;,
        Landroid/os/DVFSHelper$ModelTFJpn;,
        Landroid/os/DVFSHelper$ModelTR3CA;,
        Landroid/os/DVFSHelper$ModelV13GWIFI;,
        Landroid/os/DVFSHelper$ModelV23GWIFI;,
        Landroid/os/DVFSHelper$ModelVIVALTO3MVE;,
        Landroid/os/DVFSHelper$ModelZL;
    }
.end annotation


# static fields
.field public static final ACTION_AMS_RESUME:Ljava/lang/String; = "ActivityManager_resume"

.field public static final ACTION_APP_LAUNCH:Ljava/lang/String; = "Application_launch"

.field public static final ACTION_BROWSER_FLING:Ljava/lang/String; = "Browser_fling"

.field public static final ACTION_BROWSER_TOUCH:Ljava/lang/String; = "Browser_touch"

.field public static final ACTION_CONTACT_SCROLL:Ljava/lang/String; = "Contact_scroll"

.field private static final ACTION_DEVICE_WAKEUP:Ljava/lang/String; = "Device_wakeup"

.field public static final ACTION_GALLERY_TOUCH:Ljava/lang/String; = "Gallery_touch"

.field public static final ACTION_GALLERY_TOUCH_TAIL:Ljava/lang/String; = "Gallery_touch_tail"

.field public static final ACTION_LAUNCHER_HOMEMENU:Ljava/lang/String; = "Launcher_homemenu"

.field public static final ACTION_LAUNCHER_TOUCH:Ljava/lang/String; = "Launcher_touch"

.field public static final ACTION_LISTVIEW_SCROLL:Ljava/lang/String; = "ListView_scroll"

.field public static final ACTION_PWM_ROTATION:Ljava/lang/String; = "PhoneWindowManager_rotation"

.field public static final ACTION_SHAREMUSIC_GROUPPLAY:Ljava/lang/String; = "ShareMusic_groupPlay"

.field public static final AMS_RESUME_BOOST_TYPE_ACQUIRE:I = 0x1

.field public static final AMS_RESUME_BOOST_TYPE_RELEASE:I = 0x2

.field public static final AMS_RESUME_BOOST_TYPE_TAIL:I = 0x3

.field public static volatile AMS_RESUME_TAIL_BOOST_TIMEOUT:I = 0x0

.field private static final BASE_MODEL:Ljava/lang/String; = ""

.field private static final BOARD_PLATFORM:Ljava/lang/String;

.field public static final BOOST_TYPE_LCD_FRAME_RATE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BOOST_TYPE_TOUCH:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BO_BUS_MAX:J = 0x8L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BO_CPU_MAX:J = 0x2L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BO_CUSTOM_VALUE:J = 0x20L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final CHIP_NAME:Ljava/lang/String;

.field private static final DEVICE_TYPE:Ljava/lang/String;

.field private static final HARDWARE_NAME:Ljava/lang/String;

.field public static volatile LIST_SCROLL_BOOSTER_CORE_NUM:I = 0x0

.field private static final LOG_LEVEL_PROP:Ljava/lang/String; = "ro.debug_level"

.field private static final LOG_LEVEL_PROP_HIGH:Ljava/lang/String; = "0x4948"

.field private static final LOG_LEVEL_PROP_LOW:Ljava/lang/String; = "0x4f4c"

.field private static final LOG_LEVEL_PROP_MID:Ljava/lang/String; = "0x494d"

.field private static final LOG_TAG:Ljava/lang/String; = "DVFSHelper"

.field public static volatile PWM_ROTATION_BOOST_TIMEOUT:I = 0x0

.field private static final SIOP_MODEL:Ljava/lang/String; = ""

.field public static final TYPE_BUS_MAX:I = 0x14

.field public static final TYPE_BUS_MIN:I = 0x13

.field public static final TYPE_CPUCTL:I = 0x1b

.field public static final TYPE_CPUSET:I = 0x1a

.field public static final TYPE_CPU_CORE_NUM_MAX:I = 0xf

.field public static final TYPE_CPU_CORE_NUM_MIN:I = 0xe

.field public static final TYPE_CPU_DISABLE_CSTATE:I = 0x16

.field public static final TYPE_CPU_HOTPLUG_DISABLE:I = 0x18

.field public static final TYPE_CPU_LEGACY_SCHED:I = 0x17

.field public static final TYPE_CPU_MAX:I = 0xd

.field public static final TYPE_CPU_MIN:I = 0xc

.field public static final TYPE_EMMC_BURST_MODE:I = 0x12

.field public static final TYPE_FPS_MAX:I = 0x15

.field public static final TYPE_GPU_MAX:I = 0x11

.field public static final TYPE_GPU_MIN:I = 0x10

.field public static final TYPE_MAX:I = 0x1c

.field public static final TYPE_NONE:I = 0xb

.field public static final TYPE_PCIE_PSM_DISABLE:I = 0x19

.field public static volatile WAKEUP_BOOSTER_CORE_NUM:I

.field private static final isEngBinary:Z

.field private static volatile mAMSCState:Landroid/os/DVFSHelper;

.field private static volatile mAMSCStateTail:Landroid/os/DVFSHelper;

.field private static mToken:I

.field static volatile sCfmsService:Landroid/os/ICustomFrequencyManager;

.field private static sIsDebugLevelHigh:Z


# instance fields
.field final APP_LAUNCH_BOOSTING_TIMEOUT_L:I

.field final APP_LAUNCH_BOOSTING_TIMEOUT_LL:I

.field final APP_LAUNCH_BOOSTING_TIMEOUT_M:I

.field final APP_LAUNCH_BOOSTING_TIMEOUT_S:I

.field private DISPLAY_FHD:Z

.field private DISPLAY_HD:Z

.field private DISPLAY_WQXGA:Z

.field private final REGION_JPN:Z

.field final ROTATION_BOOSTING_TIMEOUT:I

.field final ROTATION_GPU_BOOSTING_TIMEOUT:I

.field busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field cpuHotplugDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field cpuLegacySchedulerRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field cpuctlRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field cpusetRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

.field mAppLaunchBoostTime:I

.field mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

.field mAppLaunchCPUCoreNumBooster:Landroid/os/DVFSHelper;

.field mAppLaunchCState:Landroid/os/DVFSHelper;

.field mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

.field private mAppLaunchPackages:[Ljava/lang/String;

.field mBUSFrequencyTable:[I

.field mCPUCoreTable:[I

.field mCPUFrequencyTable:[I

.field private mContext:Landroid/content/Context;

.field private mCustomFreqManager:Landroid/os/CustomFrequencyManager;

.field mGPUFrequencyTable:[I

.field private mHintList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/DVFSHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mHintTimeout:I

.field private mIntentExtra:Landroid/content/Intent;

.field private volatile mIsAcquired:Z

.field private mIsHintNotifier:Z

.field private mIsHintValid:Z

.field private mModel:Landroid/os/DVFSHelper$Model;

.field private mPkgName:Ljava/lang/String;

.field mRotationBUSBooster:Landroid/os/DVFSHelper;

.field mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

.field mRotationGPUBooster:Landroid/os/DVFSHelper;

.field private mSupportedBUSFrequency:[I

.field mSupportedCPUCoreNum:[I

.field private mSupportedCPUCoreNumForSSRM:[I

.field private mSupportedCPUFrequency:[I

.field mSupportedCPUFrequencyForSSRM:[I

.field private mSupportedGPUFrequency:[I

.field private mSupportedGPUFrequencyForSSRM:[I

.field private mType:I

.field mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field pciePsmDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field private wm:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Landroid/os/DVFSHelper;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/os/DVFSHelper;->REGION_JPN:Z

    return v0
.end method

.method static synthetic -get3(Landroid/os/DVFSHelper;)[I
    .locals 1

    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNumForSSRM:[I

    return-object v0
.end method

.method static synthetic -get4(Landroid/os/DVFSHelper;)[I
    .locals 1

    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "0x4948"

    const-string/jumbo v1, "ro.debug_level"

    const-string/jumbo v2, "0x4f4c"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/DVFSHelper;->sIsDebugLevelHigh:Z

    sput v3, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    sput v3, Landroid/os/DVFSHelper;->WAKEUP_BOOSTER_CORE_NUM:I

    sput v3, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    sput v3, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    const-string/jumbo v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/DVFSHelper;->DEVICE_TYPE:Ljava/lang/String;

    const-string/jumbo v0, "ro.chipname"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    const-string/jumbo v0, "ro.hardware"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/DVFSHelper;->HARDWARE_NAME:Ljava/lang/String;

    sput v3, Landroid/os/DVFSHelper;->mToken:I

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/DVFSHelper;->isEngBinary:Z

    sput-object v4, Landroid/os/DVFSHelper;->mAMSCState:Landroid/os/DVFSHelper;

    sput-object v4, Landroid/os/DVFSHelper;->mAMSCStateTail:Landroid/os/DVFSHelper;

    sput-object v4, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    const/16 v7, 0x1c

    const/4 v1, 0x1

    const/16 v6, 0x13

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    iput-object v4, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    iput-object v4, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    const/16 v0, 0xb

    iput v0, p0, Landroid/os/DVFSHelper;->mType:I

    iput-object v4, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    iput-object v4, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    iput-object v4, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    iput-object v4, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    iput-object v4, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNumForSSRM:[I

    iput-object v4, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    iput-object v4, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequencyForSSRM:[I

    iput-object v4, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    iput-object v4, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iput-object v4, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iput-object v4, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iput-object v4, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iput-object v4, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iput-object v4, p0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iput-object v4, p0, Landroid/os/DVFSHelper;->cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iput-object v4, p0, Landroid/os/DVFSHelper;->cpuLegacySchedulerRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iput-object v4, p0, Landroid/os/DVFSHelper;->cpuHotplugDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iput-object v4, p0, Landroid/os/DVFSHelper;->pciePsmDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iput-object v4, p0, Landroid/os/DVFSHelper;->cpusetRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iput-object v4, p0, Landroid/os/DVFSHelper;->cpuctlRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iput-boolean v5, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    iput-boolean v5, p0, Landroid/os/DVFSHelper;->DISPLAY_WQXGA:Z

    iput-boolean v5, p0, Landroid/os/DVFSHelper;->DISPLAY_FHD:Z

    iput-boolean v5, p0, Landroid/os/DVFSHelper;->DISPLAY_HD:Z

    iput-object v4, p0, Landroid/os/DVFSHelper;->wm:Landroid/view/WindowManager;

    const-string/jumbo v0, ""

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    const-string/jumbo v2, "jpn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "DCM"

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "KDI"

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Landroid/os/DVFSHelper;->REGION_JPN:Z

    iput-object v4, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

    iput-object v4, p0, Landroid/os/DVFSHelper;->mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

    iput-object v4, p0, Landroid/os/DVFSHelper;->mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

    iput-object v4, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUCoreNumBooster:Landroid/os/DVFSHelper;

    iput-object v4, p0, Landroid/os/DVFSHelper;->mAppLaunchCState:Landroid/os/DVFSHelper;

    iput-object v4, p0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    iput-object v4, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    iput-object v4, p0, Landroid/os/DVFSHelper;->mGPUFrequencyTable:[I

    iput-object v4, p0, Landroid/os/DVFSHelper;->mBUSFrequencyTable:[I

    const/16 v0, 0xfa0

    iput v0, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_LL:I

    const/16 v0, 0x7d0

    iput v0, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_L:I

    const/16 v0, 0x1f4

    iput v0, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_S:I

    const/16 v0, 0x3e8

    iput v0, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_M:I

    const/16 v0, 0x7d0

    iput v0, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    new-array v2, v7, [I

    fill-array-data v2, :array_0

    invoke-direct {p0, v2}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    const/16 v2, 0x1e

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-direct {p0, v2}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-array v2, v6, [I

    fill-array-data v2, :array_2

    invoke-direct {p0, v2}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const/16 v2, 0x15

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    invoke-direct {p0, v2}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v7, [I

    fill-array-data v2, :array_4

    invoke-direct {p0, v2}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v6, [I

    fill-array-data v2, :array_5

    invoke-direct {p0, v2}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v6, [I

    fill-array-data v2, :array_6

    invoke-direct {p0, v2}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v7, [I

    fill-array-data v2, :array_7

    invoke-direct {p0, v2}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v0, v3

    const/16 v2, 0x19

    new-array v2, v2, [I

    fill-array-data v2, :array_8

    invoke-direct {p0, v2}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v0, v3

    const/16 v2, 0x19

    new-array v2, v2, [I

    fill-array-data v2, :array_9

    invoke-direct {p0, v2}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v0, v3

    const/16 v2, 0x17

    new-array v2, v2, [I

    fill-array-data v2, :array_a

    invoke-direct {p0, v2}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v6, [I

    fill-array-data v2, :array_b

    invoke-direct {p0, v2}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v0, v3

    const/16 v2, 0xe

    new-array v2, v2, [I

    fill-array-data v2, :array_c

    invoke-direct {p0, v2}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v0, v3

    const/16 v2, 0x12

    new-array v2, v2, [I

    fill-array-data v2, :array_d

    invoke-direct {p0, v2}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v6, [I

    fill-array-data v2, :array_e

    invoke-direct {p0, v2}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, v0, v3

    iput-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchPackages:[Ljava/lang/String;

    const/16 v0, 0x1f4

    iput v0, p0, Landroid/os/DVFSHelper;->ROTATION_BOOSTING_TIMEOUT:I

    const/16 v0, 0x7d0

    iput v0, p0, Landroid/os/DVFSHelper;->ROTATION_GPU_BOOSTING_TIMEOUT:I

    iput-object v4, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    iput-object v4, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    iput-object v4, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    iput-object v4, p0, Landroid/os/DVFSHelper;->mHintList:Ljava/util/ArrayList;

    iput-boolean v5, p0, Landroid/os/DVFSHelper;->mIsHintNotifier:Z

    iput-boolean v5, p0, Landroid/os/DVFSHelper;->mIsHintValid:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/DVFSHelper;->mHintTimeout:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mHintList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Landroid/os/DVFSHelper;->mIsHintNotifier:Z

    return-void

    :cond_1
    move v0, v1

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x54
        0x9
        0x18
        0x8
        0x15
        0xd
        0x9
        0x1f
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x9
        0x54
        0x19
        0x12
        0x8
        0x15
        0x17
        0x1f
    .end array-data

    :array_2
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x18
        0x8
        0x15
        0xd
        0x9
        0x1f
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0x17
    .end array-data

    :array_4
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1f
        0x17
        0x1b
        0x13
        0x16
        0x54
        0xf
        0x13
    .end array-data

    :array_5
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1c
        0x1b
        0x19
        0x1f
        0x18
        0x15
        0x15
        0x11
        0x54
        0x11
        0x1b
        0xe
        0x1b
        0x14
        0x1b
    .end array-data

    :array_6
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0xc
        0x1f
        0x14
        0x1e
        0x13
        0x14
        0x1d
    .end array-data

    :array_7
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1f
        0xc
        0x1f
        0x8
        0x1d
        0x16
        0x1b
        0x1e
        0x1f
        0x9
        0x54
        0xc
        0x13
        0x1e
        0x1f
        0x15
    .end array-data

    :array_8
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0xc
        0x13
        0x1e
        0x1f
        0x15
    .end array-data

    :array_9
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0x1b
        0x16
        0x16
        0x1f
        0x8
        0x3
        0x49
        0x1e
    .end array-data

    :array_a
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x17
        0x1b
        0xa
        0x9
    .end array-data

    :array_b
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x18
        0x1b
        0x13
        0x1e
        0xf
        0x54
        0x1b
        0xa
        0xa
        0x9
        0x1f
        0x1b
        0x8
        0x19
        0x12
    .end array-data

    :array_c
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x13
        0x14
        0x1b
        0x54
        0xd
        0x1f
        0x13
        0x18
        0x15
    .end array-data

    :array_d
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x18
        0x1b
        0x13
        0x1e
        0xf
        0x54
        0x38
        0x1b
        0x13
        0x1e
        0xf
        0x37
        0x1b
        0xa
    .end array-data

    :array_e
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xe
        0xd
        0x13
        0xe
        0xe
        0x1f
        0x8
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJ)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 10

    const/16 v9, 0x1c

    const/16 v8, 0x13

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    iput-object v6, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    iput-object v6, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    const/16 v2, 0xb

    iput v2, p0, Landroid/os/DVFSHelper;->mType:I

    iput-object v6, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    iput-object v6, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    iput-object v6, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    iput-object v6, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    iput-object v6, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNumForSSRM:[I

    iput-object v6, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    iput-object v6, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequencyForSSRM:[I

    iput-object v6, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    iput-object v6, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iput-object v6, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iput-object v6, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iput-object v6, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iput-object v6, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iput-object v6, p0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iput-object v6, p0, Landroid/os/DVFSHelper;->cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iput-object v6, p0, Landroid/os/DVFSHelper;->cpuLegacySchedulerRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iput-object v6, p0, Landroid/os/DVFSHelper;->cpuHotplugDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iput-object v6, p0, Landroid/os/DVFSHelper;->pciePsmDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iput-object v6, p0, Landroid/os/DVFSHelper;->cpusetRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iput-object v6, p0, Landroid/os/DVFSHelper;->cpuctlRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iput-boolean v7, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    iput-boolean v7, p0, Landroid/os/DVFSHelper;->DISPLAY_WQXGA:Z

    iput-boolean v7, p0, Landroid/os/DVFSHelper;->DISPLAY_FHD:Z

    iput-boolean v7, p0, Landroid/os/DVFSHelper;->DISPLAY_HD:Z

    iput-object v6, p0, Landroid/os/DVFSHelper;->wm:Landroid/view/WindowManager;

    const-string/jumbo v2, ""

    if-eqz v2, :cond_0

    const-string/jumbo v2, ""

    const-string/jumbo v4, "jpn"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v2, "DCM"

    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "KDI"

    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    iput-boolean v2, p0, Landroid/os/DVFSHelper;->REGION_JPN:Z

    iput-object v6, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

    iput-object v6, p0, Landroid/os/DVFSHelper;->mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

    iput-object v6, p0, Landroid/os/DVFSHelper;->mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

    iput-object v6, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUCoreNumBooster:Landroid/os/DVFSHelper;

    iput-object v6, p0, Landroid/os/DVFSHelper;->mAppLaunchCState:Landroid/os/DVFSHelper;

    iput-object v6, p0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    iput-object v6, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    iput-object v6, p0, Landroid/os/DVFSHelper;->mGPUFrequencyTable:[I

    iput-object v6, p0, Landroid/os/DVFSHelper;->mBUSFrequencyTable:[I

    const/16 v2, 0xfa0

    iput v2, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_LL:I

    const/16 v2, 0x7d0

    iput v2, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_L:I

    const/16 v2, 0x1f4

    iput v2, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_S:I

    const/16 v2, 0x3e8

    iput v2, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_M:I

    const/16 v2, 0x7d0

    iput v2, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    const/16 v2, 0xf

    new-array v2, v2, [Ljava/lang/String;

    new-array v4, v9, [I

    fill-array-data v4, :array_0

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    const/16 v4, 0x1e

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-array v4, v8, [I

    fill-array-data v4, :array_2

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v2, v5

    const/16 v4, 0x15

    new-array v4, v4, [I

    fill-array-data v4, :array_3

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v2, v5

    new-array v4, v9, [I

    fill-array-data v4, :array_4

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v2, v5

    new-array v4, v8, [I

    fill-array-data v4, :array_5

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v2, v5

    new-array v4, v8, [I

    fill-array-data v4, :array_6

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v2, v5

    new-array v4, v9, [I

    fill-array-data v4, :array_7

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v2, v5

    const/16 v4, 0x19

    new-array v4, v4, [I

    fill-array-data v4, :array_8

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    aput-object v4, v2, v5

    const/16 v4, 0x19

    new-array v4, v4, [I

    fill-array-data v4, :array_9

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x9

    aput-object v4, v2, v5

    const/16 v4, 0x17

    new-array v4, v4, [I

    fill-array-data v4, :array_a

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    aput-object v4, v2, v5

    new-array v4, v8, [I

    fill-array-data v4, :array_b

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xb

    aput-object v4, v2, v5

    const/16 v4, 0xe

    new-array v4, v4, [I

    fill-array-data v4, :array_c

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc

    aput-object v4, v2, v5

    const/16 v4, 0x12

    new-array v4, v4, [I

    fill-array-data v4, :array_d

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xd

    aput-object v4, v2, v5

    new-array v4, v8, [I

    fill-array-data v4, :array_e

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xe

    aput-object v4, v2, v5

    iput-object v2, p0, Landroid/os/DVFSHelper;->mAppLaunchPackages:[Ljava/lang/String;

    const/16 v2, 0x1f4

    iput v2, p0, Landroid/os/DVFSHelper;->ROTATION_BOOSTING_TIMEOUT:I

    const/16 v2, 0x7d0

    iput v2, p0, Landroid/os/DVFSHelper;->ROTATION_GPU_BOOSTING_TIMEOUT:I

    iput-object v6, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    iput-object v6, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    iput-object v6, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    iput-object v6, p0, Landroid/os/DVFSHelper;->mHintList:Ljava/util/ArrayList;

    iput-boolean v7, p0, Landroid/os/DVFSHelper;->mIsHintNotifier:Z

    iput-boolean v7, p0, Landroid/os/DVFSHelper;->mIsHintValid:Z

    const/4 v2, -0x1

    iput v2, p0, Landroid/os/DVFSHelper;->mHintTimeout:I

    if-nez p1, :cond_2

    return-void

    :cond_1
    move v2, v3

    goto/16 :goto_0

    :cond_2
    iput-object p1, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Landroid/os/DVFSHelper;->wm:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/os/DVFSHelper;->wm:Landroid/view/WindowManager;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/os/DVFSHelper;->wm:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v2, v1, Landroid/graphics/Point;->x:I

    const/16 v4, 0xa00

    if-ge v2, v4, :cond_3

    iget v2, v1, Landroid/graphics/Point;->y:I

    const/16 v4, 0xa00

    if-lt v2, v4, :cond_5

    :cond_3
    iput-boolean v3, p0, Landroid/os/DVFSHelper;->DISPLAY_WQXGA:Z

    :cond_4
    :goto_1
    invoke-direct {p0}, Landroid/os/DVFSHelper;->createModel()Landroid/os/DVFSHelper$Model;

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    iget-object v2, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "CustomFrequencyManagerService"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/CustomFrequencyManager;

    iput-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v2, :cond_c

    const-string/jumbo v2, "DVFSHelper"

    const-string/jumbo v3, "DVFSHelper:: failed to load CFMS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iget v2, v1, Landroid/graphics/Point;->x:I

    const/16 v4, 0x800

    if-ne v2, v4, :cond_6

    iget v2, v1, Landroid/graphics/Point;->y:I

    const/16 v4, 0x600

    if-eq v2, v4, :cond_3

    :cond_6
    iget v2, v1, Landroid/graphics/Point;->y:I

    const/16 v4, 0x800

    if-ne v2, v4, :cond_7

    iget v2, v1, Landroid/graphics/Point;->x:I

    const/16 v4, 0x600

    if-ge v2, v4, :cond_3

    :cond_7
    iget v2, v1, Landroid/graphics/Point;->x:I

    const/16 v4, 0x780

    if-ne v2, v4, :cond_9

    iget v2, v1, Landroid/graphics/Point;->y:I

    const/16 v4, 0x438

    if-ne v2, v4, :cond_9

    :cond_8
    iput-boolean v3, p0, Landroid/os/DVFSHelper;->DISPLAY_FHD:Z

    goto :goto_1

    :cond_9
    iget v2, v1, Landroid/graphics/Point;->x:I

    const/16 v4, 0x438

    if-ne v2, v4, :cond_a

    iget v2, v1, Landroid/graphics/Point;->y:I

    const/16 v4, 0x780

    if-eq v2, v4, :cond_8

    :cond_a
    iget v2, v1, Landroid/graphics/Point;->x:I

    const/16 v4, 0x500

    if-ne v2, v4, :cond_b

    iget v2, v1, Landroid/graphics/Point;->y:I

    const/16 v4, 0x2d0

    if-ne v2, v4, :cond_b

    :goto_2
    iput-boolean v3, p0, Landroid/os/DVFSHelper;->DISPLAY_HD:Z

    goto :goto_1

    :cond_b
    iget v2, v1, Landroid/graphics/Point;->x:I

    const/16 v4, 0x2d0

    if-ne v2, v4, :cond_4

    iget v2, v1, Landroid/graphics/Point;->y:I

    const/16 v4, 0x500

    if-ne v2, v4, :cond_4

    goto :goto_2

    :cond_c
    const-string/jumbo v2, "DVFSHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DVFSHelper:: New instance is created for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager;->getSupportedCPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager;->getSupportedCPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    invoke-direct {p0}, Landroid/os/DVFSHelper;->adjustCPUFreqTable()V

    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager;->getSupportedCPUCoreNum()[I

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager;->getSupportedCPUCoreNum()[I

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNumForSSRM:[I

    invoke-direct {p0}, Landroid/os/DVFSHelper;->adjustCPUCoreTable()V

    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager;->getSupportedGPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager;->getSupportedGPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequencyForSSRM:[I

    invoke-direct {p0}, Landroid/os/DVFSHelper;->adjustGPUFreqTable()V

    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager;->getSupportedSysBusFrequency()[I

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    sget v2, Landroid/os/DVFSHelper;->mToken:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Landroid/os/DVFSHelper;->mToken:I

    if-eqz p2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/DVFSHelper;->mToken:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    :goto_3
    iput p3, p0, Landroid/os/DVFSHelper;->mType:I

    return-void

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/DVFSHelper;->mToken:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    goto :goto_3

    nop

    :array_0
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x54
        0x9
        0x18
        0x8
        0x15
        0xd
        0x9
        0x1f
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x9
        0x54
        0x19
        0x12
        0x8
        0x15
        0x17
        0x1f
    .end array-data

    :array_2
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x18
        0x8
        0x15
        0xd
        0x9
        0x1f
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0x17
    .end array-data

    :array_4
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1f
        0x17
        0x1b
        0x13
        0x16
        0x54
        0xf
        0x13
    .end array-data

    :array_5
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1c
        0x1b
        0x19
        0x1f
        0x18
        0x15
        0x15
        0x11
        0x54
        0x11
        0x1b
        0xe
        0x1b
        0x14
        0x1b
    .end array-data

    :array_6
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0xc
        0x1f
        0x14
        0x1e
        0x13
        0x14
        0x1d
    .end array-data

    :array_7
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1f
        0xc
        0x1f
        0x8
        0x1d
        0x16
        0x1b
        0x1e
        0x1f
        0x9
        0x54
        0xc
        0x13
        0x1e
        0x1f
        0x15
    .end array-data

    :array_8
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0xc
        0x13
        0x1e
        0x1f
        0x15
    .end array-data

    :array_9
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0x1b
        0x16
        0x16
        0x1f
        0x8
        0x3
        0x49
        0x1e
    .end array-data

    :array_a
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x17
        0x1b
        0xa
        0x9
    .end array-data

    :array_b
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x18
        0x1b
        0x13
        0x1e
        0xf
        0x54
        0x1b
        0xa
        0xa
        0x9
        0x1f
        0x1b
        0x8
        0x19
        0x12
    .end array-data

    :array_c
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x13
        0x14
        0x1b
        0x54
        0xd
        0x1f
        0x13
        0x18
        0x15
    .end array-data

    :array_d
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x18
        0x1b
        0x13
        0x1e
        0xf
        0x54
        0x38
        0x1b
        0x13
        0x1e
        0xf
        0x37
        0x1b
        0xa
    .end array-data

    :array_e
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xe
        0xd
        0x13
        0xe
        0xe
        0x1f
        0x8
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
    .end array-data
.end method

.method private acquireImpl(I)V
    .locals 40

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v37

    :try_start_0
    const-string/jumbo v3, "DVFSHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "acquire:: timeout = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", mIsAcquired = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "DVFSHelper"

    const-string/jumbo v4, "acquire:: DVFS lock is already acquired. Previous lock will be released first."

    invoke-static {v3, v4}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/DVFSHelper;->release()V

    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/os/DVFSHelper;->mType:I

    packed-switch v3, :pswitch_data_0

    const-string/jumbo v3, "DVFSHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "acquire:: the request type doesn\'t implemented yet. mType = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Landroid/os/DVFSHelper;->mType:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuLegacySchedulerRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuLegacySchedulerRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuHotplugDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuHotplugDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->pciePsmDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->pciePsmDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpusetRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpusetRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuctlRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuctlRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    :cond_e
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/os/DVFSHelper;->mIsAcquired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static/range {v37 .. v37}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :pswitch_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    const/4 v5, 0x0

    const/16 v39, 0x0

    if-eqz v2, :cond_f

    :try_start_2
    const-string/jumbo v3, "CORE_NUM"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v39

    :cond_f
    :goto_1
    if-eqz v39, :cond_10

    :try_start_3
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :cond_10
    if-lez v5, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    move/from16 v0, p1

    int-to-long v6, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    const/4 v4, 0x4

    invoke-virtual/range {v3 .. v9}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    invoke-static/range {v37 .. v37}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v3

    :catch_0
    move-exception v33

    :try_start_4
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_3

    const/4 v5, 0x0

    const/16 v39, 0x0

    if-eqz v2, :cond_11

    :try_start_5
    const-string/jumbo v3, "CORE_NUM"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v39

    :cond_11
    :goto_2
    if-eqz v39, :cond_12

    :try_start_6
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :cond_12
    if-gtz v5, :cond_13

    const-string/jumbo v3, "msm8992"

    sget-object v4, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string/jumbo v3, "msm8952"

    sget-object v4, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    move/from16 v0, p1

    int-to-long v6, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    const/4 v4, 0x5

    invoke-virtual/range {v3 .. v9}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_0

    :catch_1
    move-exception v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-eqz v3, :cond_3

    const/4 v9, -0x1

    if-eqz v2, :cond_14

    const-string/jumbo v3, "CPU"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_14

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    :cond_14
    const-string/jumbo v3, "ja"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const v3, 0x186a00

    if-le v9, v3, :cond_16

    const v3, 0x186a00

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v9

    :cond_15
    :goto_3
    const/4 v3, -0x1

    if-eq v9, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    move/from16 v0, p1

    int-to-long v10, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    const/4 v8, 0x6

    invoke-virtual/range {v7 .. v13}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v3, "hrl"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "ACTIVITY_RESUME_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "LIST_SCROLL_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "SMOOTH_SCROLL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "GESTURE_DETECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->wm:Landroid/view/WindowManager;

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->wm:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v32

    new-instance v38, Landroid/graphics/Point;

    invoke-direct/range {v38 .. v38}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0xa00

    if-ge v3, v4, :cond_18

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0xa00

    if-lt v3, v4, :cond_19

    :cond_18
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/os/DVFSHelper;->DISPLAY_WQXGA:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "ACTIVITY_RESUME_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const v9, 0x1afa40

    goto/16 :goto_3

    :cond_19
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x800

    if-ne v3, v4, :cond_1a

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x600

    if-eq v3, v4, :cond_18

    :cond_1a
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x800

    if-ne v3, v4, :cond_1b

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x600

    if-ge v3, v4, :cond_18

    :cond_1b
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x780

    if-ne v3, v4, :cond_20

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x438

    if-ne v3, v4, :cond_20

    :cond_1c
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/os/DVFSHelper;->DISPLAY_FHD:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "ACTIVITY_RESUME_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    const v9, 0x17cdc0

    goto/16 :goto_3

    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "LIST_SCROLL_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const v9, 0xb1bc0

    goto/16 :goto_3

    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "SMOOTH_SCROLL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const v9, 0x1174c0

    goto/16 :goto_3

    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "GESTURE_DETECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    const v9, 0xb1bc0

    goto/16 :goto_3

    :cond_20
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x438

    if-ne v3, v4, :cond_21

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x780

    if-eq v3, v4, :cond_1c

    :cond_21
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x500

    if-ne v3, v4, :cond_25

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x2d0

    if-ne v3, v4, :cond_25

    :goto_4
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/os/DVFSHelper;->DISPLAY_HD:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "ACTIVITY_RESUME_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_26

    const v9, 0x17cdc0

    goto/16 :goto_3

    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "LIST_SCROLL_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23

    const v9, 0xb1bc0

    goto/16 :goto_3

    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "SMOOTH_SCROLL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    const v9, 0x1174c0

    goto/16 :goto_3

    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "GESTURE_DETECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    const v9, 0xb1bc0

    goto/16 :goto_3

    :cond_25
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x2d0

    if-ne v3, v4, :cond_15

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x500

    if-ne v3, v4, :cond_15

    goto :goto_4

    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "LIST_SCROLL_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    const v9, 0x541b4

    goto/16 :goto_3

    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "SMOOTH_SCROLL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_28

    const v9, 0x541b4

    goto/16 :goto_3

    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "GESTURE_DETECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    const v9, 0x541b4

    goto/16 :goto_3

    :cond_29
    const-string/jumbo v3, "hrq"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "ACTIVITY_RESUME_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "LIST_SCROLL_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "SMOOTH_SCROLL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "GESTURE_DETECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->wm:Landroid/view/WindowManager;

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->wm:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v32

    new-instance v38, Landroid/graphics/Point;

    invoke-direct/range {v38 .. v38}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0xa00

    if-ge v3, v4, :cond_2b

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0xa00

    if-lt v3, v4, :cond_2c

    :cond_2b
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/os/DVFSHelper;->DISPLAY_WQXGA:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "ACTIVITY_RESUME_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_30

    const v9, 0x17bb00

    goto/16 :goto_3

    :cond_2c
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x800

    if-ne v3, v4, :cond_2d

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x600

    if-eq v3, v4, :cond_2b

    :cond_2d
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x800

    if-ne v3, v4, :cond_2e

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x600

    if-ge v3, v4, :cond_2b

    :cond_2e
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x780

    if-ne v3, v4, :cond_34

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x438

    if-ne v3, v4, :cond_34

    :cond_2f
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/os/DVFSHelper;->DISPLAY_FHD:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "ACTIVITY_RESUME_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_36

    const v9, 0x143700

    goto/16 :goto_3

    :cond_30
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "LIST_SCROLL_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_31

    const v9, 0xc4e00

    goto/16 :goto_3

    :cond_31
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "SMOOTH_SCROLL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_32

    const v9, 0x122a00

    goto/16 :goto_3

    :cond_32
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "GESTURE_DETECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_33

    const v9, 0xc4e00

    goto/16 :goto_3

    :cond_33
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "WAKEUP_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    const v9, 0x17bb00

    goto/16 :goto_3

    :cond_34
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x438

    if-ne v3, v4, :cond_35

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x780

    if-eq v3, v4, :cond_2f

    :cond_35
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x500

    if-ne v3, v4, :cond_3a

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x2d0

    if-ne v3, v4, :cond_3a

    :goto_5
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/os/DVFSHelper;->DISPLAY_HD:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "ACTIVITY_RESUME_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3b

    const v9, 0x143700

    goto/16 :goto_3

    :cond_36
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "LIST_SCROLL_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_37

    const v9, 0xb2200

    goto/16 :goto_3

    :cond_37
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "SMOOTH_SCROLL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_38

    const v9, 0xfd200

    goto/16 :goto_3

    :cond_38
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "GESTURE_DETECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_39

    const v9, 0xb2200

    goto/16 :goto_3

    :cond_39
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "WAKEUP_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    const v9, 0x122a00

    goto/16 :goto_3

    :cond_3a
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x2d0

    if-ne v3, v4, :cond_15

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x500

    if-ne v3, v4, :cond_15

    goto :goto_5

    :cond_3b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "LIST_SCROLL_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3c

    const v9, 0x87f00

    goto/16 :goto_3

    :cond_3c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "SMOOTH_SCROLL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3d

    const v9, 0xc4e00

    goto/16 :goto_3

    :cond_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "GESTURE_DETECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3e

    const v9, 0x87f00

    goto/16 :goto_3

    :cond_3e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "WAKEUP_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    const v9, 0x122a00

    goto/16 :goto_3

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-eqz v3, :cond_3

    const/4 v9, -0x1

    if-eqz v2, :cond_3f

    const-string/jumbo v3, "CPU"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_3f

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    :cond_3f
    const/4 v3, -0x1

    if-eq v9, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    move/from16 v0, p1

    int-to-long v10, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    const/4 v8, 0x7

    invoke-virtual/range {v7 .. v13}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-eqz v3, :cond_3

    const/4 v9, -0x1

    if-eqz v2, :cond_40

    const-string/jumbo v3, "GPU"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    if-eqz v36, :cond_40

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    :cond_40
    const/4 v3, -0x1

    if-eq v9, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    move/from16 v0, p1

    int-to-long v10, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-virtual/range {v7 .. v13}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-eqz v3, :cond_3

    const/4 v9, -0x1

    if-eqz v2, :cond_41

    const-string/jumbo v3, "GPU"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    if-eqz v36, :cond_41

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    :cond_41
    const/4 v3, -0x1

    if-eq v9, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    move/from16 v0, p1

    int-to-long v10, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    const/16 v8, 0x9

    invoke-virtual/range {v7 .. v13}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_0

    :pswitch_6
    const/4 v9, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_42

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    :cond_42
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    move/from16 v0, p1

    int-to-long v10, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    const/16 v8, 0x8

    invoke-virtual/range {v7 .. v13}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    if-eqz v3, :cond_3

    const/4 v13, -0x1

    if-eqz v2, :cond_43

    const-string/jumbo v3, "BUS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_43

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    :cond_43
    const/4 v3, -0x1

    if-eq v13, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    move/from16 v0, p1

    int-to-long v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v12, 0xa

    invoke-virtual/range {v11 .. v17}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    if-eqz v3, :cond_3

    const/16 v17, -0x1

    if-eqz v2, :cond_44

    const-string/jumbo v3, "BUS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_44

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    :cond_44
    const/4 v3, -0x1

    move/from16 v0, v17

    if-eq v0, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v16, 0xb

    invoke-virtual/range {v15 .. v21}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_0

    :pswitch_9
    const/16 v21, 0x63

    if-eqz v2, :cond_45

    const-string/jumbo v3, "FPS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_45

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    :cond_45
    if-ltz v21, :cond_3

    const/16 v3, 0x63

    move/from16 v0, v21

    if-ge v0, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    move-object/from16 v19, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v25}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    move-object/from16 v23, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const/16 v24, 0xc

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v29}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    move-object/from16 v23, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const/16 v24, 0xd

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v29}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->cpuLegacySchedulerRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    move-object/from16 v23, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const/16 v24, 0xe

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v29}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->cpuHotplugDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    move-object/from16 v23, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const/16 v24, 0xf

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v29}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->pciePsmDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    move-object/from16 v23, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const/16 v24, 0x10

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v29}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->cpusetRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_0

    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    move-object/from16 v23, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const/16 v24, 0x11

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v29}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->cpuctlRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private addHelper(Landroid/os/DVFSHelper;)V
    .locals 1

    iget-object v0, p0, Landroid/os/DVFSHelper;->mHintList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private adjustCPUCoreTable()V
    .locals 5

    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v3, "isla"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "carmen2"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    if-lez v0, :cond_4

    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    array-length v3, v3

    if-le v3, v0, :cond_4

    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    new-array v2, v3, [I

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    add-int v4, v1, v0

    aget v3, v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    :cond_4
    return-void
.end method

.method private adjustCPUFreqTable()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v3, "hf"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v0, 0x1

    :cond_1
    :goto_0
    const-string/jumbo v3, ""

    const-string/jumbo v4, "lentis"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, ""

    const-string/jumbo v4, "kcat6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "ta"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_2
    const/4 v0, 0x2

    :cond_3
    :goto_1
    if-lez v0, :cond_c

    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v3, v3

    if-le v3, v0, :cond_c

    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    new-array v2, v3, [I

    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    if-ge v1, v3, :cond_b

    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    add-int v4, v1, v0

    aget v3, v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const-string/jumbo v3, "hrl"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "island"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, ""

    const-string/jumbo v4, "novel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const-string/jumbo v3, "hrq"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, "kf"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, "ka"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, "tr3ca"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, "zl"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, "zq"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v3, "tf"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    aget v3, v3, v5

    const v4, 0x286e00

    if-ne v3, v4, :cond_9

    const/4 v0, 0x5

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v3, ""

    const-string/jumbo v4, "ja_kor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x3

    goto/16 :goto_1

    :cond_b
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    :cond_c
    return-void
.end method

.method private adjustGPUFreqTable()V
    .locals 5

    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v3, "ha"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "ka"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "sa"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "ta"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "hrl"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "hrq"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    const/4 v0, 0x2

    :cond_2
    :goto_0
    if-lez v0, :cond_5

    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    array-length v3, v3

    if-le v3, v0, :cond_5

    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    new-array v2, v3, [I

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    add-int v4, v1, v0

    aget v3, v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "zl"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    :cond_5
    return-void
.end method

.method public static createBusBooster(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .locals 7

    new-instance v0, Landroid/os/DVFSHelper;

    const-wide/16 v4, 0x0

    const/16 v3, 0x13

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v6

    if-eqz v6, :cond_0

    const-string/jumbo v1, "BUS"

    const/4 v2, 0x0

    aget v2, v6, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_0
    return-object v0
.end method

.method public static createBusLimiter(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .locals 6

    new-instance v0, Landroid/os/DVFSHelper;

    const-wide/16 v4, 0x0

    const/16 v3, 0x14

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    return-object v0
.end method

.method public static createCpuBooster(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .locals 7

    new-instance v0, Landroid/os/DVFSHelper;

    const-wide/16 v4, 0x0

    const/16 v3, 0xc

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v6

    if-eqz v6, :cond_0

    const-string/jumbo v1, "CPU"

    const/4 v2, 0x0

    aget v2, v6, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_0
    return-object v0
.end method

.method public static createCpuCoreBooster(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .locals 7

    new-instance v0, Landroid/os/DVFSHelper;

    const-wide/16 v4, 0x0

    const/16 v3, 0xe

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v6

    if-eqz v6, :cond_0

    const-string/jumbo v1, "CORE_NUM"

    const/4 v2, 0x0

    aget v2, v6, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_0
    return-object v0
.end method

.method public static createCpuCoreLimiter(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .locals 6

    new-instance v0, Landroid/os/DVFSHelper;

    const-wide/16 v4, 0x0

    const/16 v3, 0xe

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    return-object v0
.end method

.method public static createCpuLimiter(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .locals 6

    new-instance v0, Landroid/os/DVFSHelper;

    const-wide/16 v4, 0x0

    const/16 v3, 0xd

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    return-object v0
.end method

.method public static createGpuBooster(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .locals 7

    new-instance v0, Landroid/os/DVFSHelper;

    const-wide/16 v4, 0x0

    const/16 v3, 0x10

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v6

    if-eqz v6, :cond_0

    const-string/jumbo v1, "GPU"

    const/4 v2, 0x0

    aget v2, v6, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_0
    return-object v0
.end method

.method public static createGpuLimiter(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .locals 6

    new-instance v0, Landroid/os/DVFSHelper;

    const-wide/16 v4, 0x0

    const/16 v3, 0x11

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    return-object v0
.end method

.method public static createHintNotifier(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .locals 20

    sget-object v3, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v3, :cond_2

    :try_start_0
    const-string/jumbo v3, "CustomFrequencyManagerService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v3

    sput-object v3, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v3, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    return-object v3

    :catch_0
    move-exception v10

    :try_start_1
    sget-boolean v3, Landroid/os/DVFSHelper;->sIsDebugLevelHigh:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "DVFSHelper"

    const-string/jumbo v4, "createHintNotifier:: failed to get cfms service."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    sget-object v3, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    return-object v3

    :catchall_0
    move-exception v3

    sget-object v4, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v4, :cond_1

    const/4 v3, 0x0

    return-object v3

    :cond_1
    throw v3

    :cond_2
    new-instance v15, Landroid/os/DVFSHelper;

    invoke-direct {v15}, Landroid/os/DVFSHelper;-><init>()V

    const/16 v16, 0x0

    :try_start_2
    sget-object v3, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Landroid/os/ICustomFrequencyManager;->getDvfsPolicyByHint(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v16

    :goto_0
    if-eqz v16, :cond_f

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v9, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/4 v2, 0x0

    const-string/jumbo v14, ""

    const/4 v3, 0x1

    new-array v11, v3, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v11, v4

    const-string/jumbo v3, "CPU_MIN"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v2, Landroid/os/DVFSHelper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "@CPU_MIN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    const/16 v5, 0xc

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    const-string/jumbo v14, "CPU"

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUFrequencyForSSRM()[I

    move-result-object v11

    :cond_4
    :goto_2
    if-eqz v2, :cond_3

    const-string/jumbo v3, "max"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    aget v3, v11, v3

    int-to-long v4, v3

    invoke-virtual {v2, v14, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    sget-boolean v3, Landroid/os/DVFSHelper;->sIsDebugLevelHigh:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "DVFSHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hint : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", moduleName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", freq = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v11, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    invoke-direct {v15, v2}, Landroid/os/DVFSHelper;->addHelper(Landroid/os/DVFSHelper;)V

    goto/16 :goto_1

    :catch_1
    move-exception v10

    const-string/jumbo v3, "DVFSHelper"

    const-string/jumbo v4, "createHintNotifier:: failed to call getDvfsPolicyByHint."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v3, "GPU_MIN"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v2, Landroid/os/DVFSHelper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "@GPU_MIN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    const/16 v5, 0x10

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    const-string/jumbo v14, "GPU"

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedGPUFrequencyForSSRM()[I

    move-result-object v11

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v3, "BUS_MIN"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v14, "BUS"

    new-instance v2, Landroid/os/DVFSHelper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "@BUS_MIN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    const/16 v5, 0x13

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v11

    goto/16 :goto_2

    :cond_8
    const-string/jumbo v3, "CORE_NUM_MIN"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v2, Landroid/os/DVFSHelper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "@CORE_NUM_MIN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    const/16 v5, 0xe

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    const-string/jumbo v14, "CORE_NUM"

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v11

    goto/16 :goto_2

    :cond_9
    const-string/jumbo v3, "timeout"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v15, Landroid/os/DVFSHelper;->mHintTimeout:I

    goto/16 :goto_2

    :cond_a
    const-string/jumbo v3, "%"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string/jumbo v3, "CPU"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string/jumbo v3, "%"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyByPercentOfMaximum(D)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v14, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    sget-boolean v3, Landroid/os/DVFSHelper;->sIsDebugLevelHigh:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "DVFSHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hint : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", moduleName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", freq = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "%"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    div-double v6, v6, v18

    invoke-virtual {v2, v6, v7}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyByPercentOfMaximum(D)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_b
    const-string/jumbo v3, "GPU"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string/jumbo v3, "%"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Landroid/os/DVFSHelper;->getApproximateGPUFrequencyByPercentOfMaximum(D)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v14, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    sget-boolean v3, Landroid/os/DVFSHelper;->sIsDebugLevelHigh:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "DVFSHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hint : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", moduleName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", freq = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "%"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    div-double v6, v6, v18

    invoke-virtual {v2, v6, v7}, Landroid/os/DVFSHelper;->getApproximateGPUFrequencyByPercentOfMaximum(D)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_c
    const-string/jumbo v3, "BUS"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "%"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Landroid/os/DVFSHelper;->getApproximateBUSFrequencyByPercentOfMaximum(D)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v14, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    sget-boolean v3, Landroid/os/DVFSHelper;->sIsDebugLevelHigh:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "DVFSHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hint : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", moduleName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", freq = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "%"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    div-double v6, v6, v18

    invoke-virtual {v2, v6, v7}, Landroid/os/DVFSHelper;->getApproximateBUSFrequencyByPercentOfMaximum(D)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_d
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v14, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    sget-boolean v3, Landroid/os/DVFSHelper;->sIsDebugLevelHigh:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "DVFSHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hint : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", moduleName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", freq = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_e
    const/4 v3, 0x1

    iput-boolean v3, v15, Landroid/os/DVFSHelper;->mIsHintValid:Z

    :cond_f
    return-object v15
.end method

.method private createModel()Landroid/os/DVFSHelper$Model;
    .locals 2

    const-string/jumbo v0, ""

    const-string/jumbo v1, "_gracel_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/os/DVFSHelper;->DISPLAY_FHD:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/DVFSHelper$ModelGRLForFHD;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelGRLForFHD;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_0
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->DISPLAY_HD:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/DVFSHelper$ModelGRLForHD;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelGRLForHD;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_1
    new-instance v0, Landroid/os/DVFSHelper$ModelGRL;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelGRL;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_2
    const-string/jumbo v0, ""

    const-string/jumbo v1, "_graceq_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/os/DVFSHelper;->DISPLAY_FHD:Z

    if-eqz v0, :cond_3

    new-instance v0, Landroid/os/DVFSHelper$ModelGRQForFHD;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelGRQForFHD;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_3
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->DISPLAY_HD:Z

    if-eqz v0, :cond_4

    new-instance v0, Landroid/os/DVFSHelper$ModelGRQForHD;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelGRQForHD;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_4
    new-instance v0, Landroid/os/DVFSHelper$ModelGRQ;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelGRQ;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_5
    const-string/jumbo v0, "hrq"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Landroid/os/DVFSHelper$ModelHRQ;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelHRQ;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_6
    const-string/jumbo v0, "hrl"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Landroid/os/DVFSHelper$ModelHRL;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelHRL;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_7
    const-string/jumbo v0, "zl"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Landroid/os/DVFSHelper$ModelZL;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelZL;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_8
    const-string/jumbo v0, "msm8992"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8992;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8992;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_9
    const-string/jumbo v0, "jf"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Landroid/os/DVFSHelper$ModelJF;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJF;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_a
    const-string/jumbo v0, "ja"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo v0, ""

    const-string/jumbo v1, "ja_kor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Landroid/os/DVFSHelper$ModelJAKOR;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJAKOR;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_b
    new-instance v0, Landroid/os/DVFSHelper$ModelJA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJA;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_c
    const-string/jumbo v0, "hf"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Landroid/os/DVFSHelper$ModelHF;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelHF;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_d
    const-string/jumbo v0, "ha"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, ""

    const-string/jumbo v1, "vienna"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Landroid/os/DVFSHelper$ModelV13GWIFI;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelV13GWIFI;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_e
    const-string/jumbo v0, ""

    const-string/jumbo v1, "v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Landroid/os/DVFSHelper$ModelV23GWIFI;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelV23GWIFI;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_f
    const-string/jumbo v0, ""

    const-string/jumbo v1, "picasso"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Landroid/os/DVFSHelper$ModelPicasso3GWIFI;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelPicasso3GWIFI;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_10
    new-instance v0, Landroid/os/DVFSHelper$ModelHA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelHA;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_11
    const-string/jumbo v0, "kf"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Landroid/os/DVFSHelper$ModelKF;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelKF;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_12
    const-string/jumbo v0, "ka"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Landroid/os/DVFSHelper$ModelKA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelKA;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_13
    const-string/jumbo v0, "kq"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Landroid/os/DVFSHelper$ModelKQ;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelKQ;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_14
    const-string/jumbo v0, "tf"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Landroid/os/DVFSHelper;->REGION_JPN:Z

    if-eqz v0, :cond_15

    new-instance v0, Landroid/os/DVFSHelper$ModelTFJpn;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelTFJpn;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_15
    new-instance v0, Landroid/os/DVFSHelper$ModelTF;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelTF;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_16
    const-string/jumbo v0, "ta"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Landroid/os/DVFSHelper$ModelTA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelTA;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_17
    const-string/jumbo v0, "sf"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Landroid/os/DVFSHelper$ModelSF;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelSF;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_18
    const-string/jumbo v0, "sa"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string/jumbo v0, ""

    const-string/jumbo v1, "_a8e_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v0, Landroid/os/DVFSHelper$ModelA8E;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelA8E;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_19
    new-instance v0, Landroid/os/DVFSHelper$ModelSA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelSA;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_1a
    const-string/jumbo v0, "clovertrail"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Landroid/os/DVFSHelper$ModelSantos10;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelSantos10;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_1b
    const-string/jumbo v0, "java"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Landroid/os/DVFSHelper$ModelJAVA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJAVA;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_1c
    const-string/jumbo v0, "island"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string/jumbo v0, ""

    const-string/jumbo v1, "novel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Landroid/os/DVFSHelper$ModelNOVEL;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelNOVEL;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_1d
    const-string/jumbo v0, ""

    const-string/jumbo v1, "on5lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Landroid/os/DVFSHelper$ModelON5;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelON5;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_1e
    new-instance v0, Landroid/os/DVFSHelper$ModelISLAND;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelISLAND;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_1f
    const-string/jumbo v0, "isla"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Landroid/os/DVFSHelper$ModelISLA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelISLA;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_20
    const-string/jumbo v0, "carmen2"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    new-instance v0, Landroid/os/DVFSHelper$ModelCARMEN2;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelCARMEN2;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_21
    const-string/jumbo v0, "islaquad"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Landroid/os/DVFSHelper$ModelISLAQUAD;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelISLAQUAD;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_22
    const-string/jumbo v0, "exynos7870"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    new-instance v0, Landroid/os/DVFSHelper$ModelJOSHUA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJOSHUA;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_23
    const-string/jumbo v0, "exynos4"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string/jumbo v0, "pp"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Landroid/os/DVFSHelper$ModelPP;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelPP;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_24
    const-string/jumbo v0, "m0"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Landroid/os/DVFSHelper$ModelM0;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelM0;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_25
    new-instance v0, Landroid/os/DVFSHelper$ModelExynos4;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelExynos4;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_26
    const-string/jumbo v0, "kam"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Landroid/os/DVFSHelper$ModelKAM;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelKAM;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_27
    const-string/jumbo v0, ""

    const-string/jumbo v1, "d2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Landroid/os/DVFSHelper$ModelD2;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelD2;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_28
    const-string/jumbo v0, "hawaii"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    new-instance v0, Landroid/os/DVFSHelper$ModelHawaii;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelHawaii;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_29
    const-string/jumbo v0, "msm8226"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8x26;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8x26;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_2a
    const-string/jumbo v0, "pxa1936"

    sget-object v1, Landroid/os/DVFSHelper;->HARDWARE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Landroid/os/DVFSHelper$ModelPXA1936;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelPXA1936;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_2b
    const-string/jumbo v0, "pxa1088"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    new-instance v0, Landroid/os/DVFSHelper$ModelPXA1088;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelPXA1088;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_2c
    const-string/jumbo v0, "pxa1908"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v0, Landroid/os/DVFSHelper$ModelPXA1908;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelPXA1908;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_2d
    const-string/jumbo v0, "kmini"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string/jumbo v0, ""

    const-string/jumbo v1, "degaslte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v0, Landroid/os/DVFSHelper$ModelDegasLTE;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelDegasLTE;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_2e
    new-instance v0, Landroid/os/DVFSHelper$ModelKMINI;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelKMINI;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_2f
    const-string/jumbo v0, "MSM8930AB"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    new-instance v0, Landroid/os/DVFSHelper$Model8930AB;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$Model8930AB;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_30
    const-string/jumbo v0, "msm8952"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string/jumbo v0, "MSM8976"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string/jumbo v0, "APQ8076"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_31
    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8976;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8976;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_32
    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8952;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8952;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_33
    const-string/jumbo v0, "msm8953"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8953;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8953;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_34
    const-string/jumbo v0, "msm8917"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string/jumbo v0, "msm8937"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_35
    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8917;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8917;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_36
    const-string/jumbo v0, "msm8916"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string/jumbo v0, ""

    const-string/jumbo v1, "a3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8916_A3;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8916_A3;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_37
    const-string/jumbo v0, "MSM8939"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8939;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8939;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_38
    const-string/jumbo v0, "MSM8929"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8929;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8929;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_39
    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8916;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8916;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_3a
    const-string/jumbo v0, "tr3ca"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    new-instance v0, Landroid/os/DVFSHelper$ModelTR3CA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelTR3CA;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_3b
    const-string/jumbo v0, "core33g"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    new-instance v0, Landroid/os/DVFSHelper$ModelCORE33G;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelCORE33G;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_3c
    const-string/jumbo v0, "vivalto3mve"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    new-instance v0, Landroid/os/DVFSHelper$ModelVIVALTO3MVE;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelVIVALTO3MVE;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_3d
    const-string/jumbo v0, "SC9830I"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    new-instance v0, Landroid/os/DVFSHelper$ModelJ210F;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJ210F;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    :cond_3e
    new-instance v0, Landroid/os/DVFSHelper$ModelJBP;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0
.end method

.method public static getStandbyTimeInUltraPowerSavingMode()I
    .locals 3

    :try_start_0
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "CustomFrequencyManagerService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    sput-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    :cond_0
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v2, :cond_1

    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2}, Landroid/os/ICustomFrequencyManager;->getStandbyTimeInUltraPowerSavingMode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private isPackageExistInAppLaunch(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v3, p0, Landroid/os/DVFSHelper;->mAppLaunchPackages:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Landroid/os/DVFSHelper;->sIsDebugLevelHigh:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static onScrollEvent(Z)V
    .locals 5

    :try_start_0
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "CustomFrequencyManagerService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    sput-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    :cond_0
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v2, :cond_1

    sget-object v3, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    const-string/jumbo v4, "TYPE_SCROLL"

    if-eqz p0, :cond_2

    const-string/jumbo v2, "TRUE"

    :goto_0
    invoke-interface {v3, v4, v2}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v2, "FALSE"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static onSmoothScrollEvent(Z)V
    .locals 5

    :try_start_0
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "CustomFrequencyManagerService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    sput-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    :cond_0
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v2, :cond_1

    sget-object v3, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    const-string/jumbo v4, "SMOOTH_SCROLL"

    if-eqz p0, :cond_2

    const-string/jumbo v2, "TRUE"

    :goto_0
    invoke-interface {v3, v4, v2}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v2, "FALSE"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private releaseImpl()V
    .locals 4

    iget-object v1, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    const-string/jumbo v1, "DVFSHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "release:: mIsAcquired = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    const-string/jumbo v1, "DVFSHelper"

    const-string/jumbo v2, "release:: cpuRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    :cond_2
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    const-string/jumbo v1, "DVFSHelper"

    const-string/jumbo v2, "release:: cpuNumRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    :cond_3
    iget-object v1, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    const-string/jumbo v1, "DVFSHelper"

    const-string/jumbo v2, "release:: gpuRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    :cond_4
    iget-object v1, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    const-string/jumbo v1, "DVFSHelper"

    const-string/jumbo v2, "release:: busRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    :cond_5
    iget-object v1, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    const-string/jumbo v1, "DVFSHelper"

    const-string/jumbo v2, "release:: mmcRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    :cond_6
    iget-object v1, p0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    const-string/jumbo v1, "DVFSHelper"

    const-string/jumbo v2, "release:: fpsRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    :cond_7
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    const-string/jumbo v1, "DVFSHelper"

    const-string/jumbo v2, "release:: cpuDisCStateRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    :cond_8
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuLegacySchedulerRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuLegacySchedulerRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    const-string/jumbo v1, "DVFSHelper"

    const-string/jumbo v2, "release:: cpuLegacySchedulerRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->cpuLegacySchedulerRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    :cond_9
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuHotplugDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuHotplugDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    const-string/jumbo v1, "DVFSHelper"

    const-string/jumbo v2, "release:: cpuHotplugDisableRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->cpuHotplugDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    :cond_a
    iget-object v1, p0, Landroid/os/DVFSHelper;->pciePsmDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/os/DVFSHelper;->pciePsmDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    const-string/jumbo v1, "DVFSHelper"

    const-string/jumbo v2, "release:: pciePsmDisableRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->pciePsmDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    :cond_b
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpusetRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/os/DVFSHelper;->cpusetRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    const-string/jumbo v1, "DVFSHelper"

    const-string/jumbo v2, "release:: cpusetRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->cpusetRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    :cond_c
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuctlRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuctlRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    const-string/jumbo v1, "DVFSHelper"

    const-string/jumbo v2, "release:: cpuctlRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->cpuctlRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    :cond_d
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method public static sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "CustomFrequencyManagerService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    sput-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    :cond_0
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v2, :cond_1

    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2, p0, p1}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private x([I)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget v2, p1, v0

    xor-int/lit8 v2, v2, 0x7a

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public acquire()V
    .locals 2

    const-string/jumbo v0, "DVFSHelper"

    const-string/jumbo v1, "This API(DVFSHelper) is no longer supported from NOS version"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public acquire(I)V
    .locals 2

    const-string/jumbo v0, "DVFSHelper"

    const-string/jumbo v1, "This API(DVFSHelper) is no longer supported from NOS version"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public acquire(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "DVFSHelper"

    const-string/jumbo v1, "This API(DVFSHelper) is no longer supported from NOS version"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addExtraOption(Ljava/lang/String;J)V
    .locals 4

    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public addExtraOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V
    .locals 7

    const/16 v6, 0xe

    const/16 v5, 0x10

    const/16 v4, 0x13

    const/16 v3, 0xc

    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "ActivityManager_resume"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAMSResumeCPUFreq()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAMSResumeGPUFreq()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v2, "GPU"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    :cond_3
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAMSResumeBUSFreq()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v2, "BUS"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    :cond_4
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v6, :cond_1

    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAMSResumeCPUCore()I

    move-result v0

    if-lez v0, :cond_1

    const-string/jumbo v2, "CORE_NUM"

    int-to-long v4, v0

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "Gallery_touch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getGalleryTouchCPUFreq()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    :cond_6
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getGalleryTouchBUSFreq()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v2, "BUS"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    :cond_7
    const-string/jumbo v2, "Browser_touch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getBrowserTouchCPUFreq()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_8
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getBrowserTouchBUSFreq()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v2, "BUS"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v2, "Launcher_touch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_a

    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getLauncherTouchCPUFreq()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_a
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v4, :cond_b

    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getLauncherTouchBUSFreq()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v2, "BUS"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_b
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v5, :cond_c

    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getLauncherTouchGPUFreq()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v2, "GPU"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_c
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v6, :cond_1

    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getLauncherTouchCPUCore()I

    move-result v0

    if-lez v0, :cond_1

    const-string/jumbo v2, "CORE_NUM"

    int-to-long v4, v0

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v2, "ListView_scroll"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_e

    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getListScrollCPUFreq()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_e
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v5, :cond_f

    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getListScrollGPUFreq()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v2, "GPU"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_f
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getListScrollBUSFreq()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v2, "BUS"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v2, "PhoneWindowManager_rotation"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getRotationCPUFreq()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v2, "Launcher_homemenu"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getLauncherTouchGPUFreq()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v2, "GPU"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v2, "ShareMusic_groupPlay"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getShareMusicCPUFreq()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v2, "Browser_fling"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getBrowserFlingCpuFreq()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v2, "Application_launch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_15

    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAppLaunchCPUFreq()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_15
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v5, :cond_16

    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAppLaunchGPUFreq()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v2, "GPU"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_16
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v4, :cond_17

    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAppLaunchBUSFreq()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v2, "BUS"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_17
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v6, :cond_1

    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAppLaunchCPUCore()I

    move-result v0

    if-lez v0, :cond_1

    const-string/jumbo v2, "CORE_NUM"

    int-to-long v4, v0

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v2, "Device_wakeup"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getDeviceWakeupCPUFreq()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v2, "Contact_scroll"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getContactScrollCPUFreq()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0
.end method

.method public cancelExtraOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    return-void
.end method

.method public getApproximateBUSFrequency(I)I
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    if-eqz v2, :cond_0

    if-gez p1, :cond_1

    :cond_0
    return v4

    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    array-length v0, v2

    if-gtz v0, :cond_2

    return v4

    :cond_2
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    aget v1, v2, v3

    :goto_0
    if-lez v0, :cond_3

    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-lt v2, p1, :cond_4

    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v2, v3

    :cond_3
    return v1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getApproximateBUSFrequencyByPercentOfMaximum(D)I
    .locals 7

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    cmpg-double v1, p1, v2

    if-gez v1, :cond_1

    :cond_0
    return v4

    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, p1, v2

    if-gtz v1, :cond_0

    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    array-length v0, v1

    if-gtz v0, :cond_2

    return v4

    :cond_2
    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    aget v1, v1, v5

    int-to-double v2, v1

    mul-double/2addr v2, p1

    double-to-int v1, v2

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateBUSFrequency(I)I

    move-result v1

    return v1
.end method

.method public getApproximateCPUCore(I)I
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    if-eqz v2, :cond_0

    if-gez p1, :cond_1

    :cond_0
    return v4

    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    array-length v0, v2

    if-gtz v0, :cond_2

    return v4

    :cond_2
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    aget v1, v2, v3

    :goto_0
    if-lez v0, :cond_3

    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-lt v2, p1, :cond_4

    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v2, v3

    :cond_3
    return v1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getApproximateCPUCoreForSSRM(I)I
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNumForSSRM:[I

    if-eqz v2, :cond_0

    if-gez p1, :cond_1

    :cond_0
    return v4

    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNumForSSRM:[I

    array-length v0, v2

    if-gtz v0, :cond_2

    return v4

    :cond_2
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNumForSSRM:[I

    aget v1, v2, v3

    :goto_0
    if-lez v0, :cond_3

    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNumForSSRM:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-lt v2, p1, :cond_4

    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNumForSSRM:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v2, v3

    :cond_3
    return v1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getApproximateCPUFrequency(I)I
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-eqz v2, :cond_0

    if-gez p1, :cond_1

    :cond_0
    return v4

    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v0, v2

    if-gtz v0, :cond_2

    return v4

    :cond_2
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    aget v1, v2, v3

    :goto_0
    if-lez v0, :cond_3

    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-lt v2, p1, :cond_4

    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v2, v3

    :cond_3
    return v1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getApproximateCPUFrequencyByPercentOfMaximum(D)I
    .locals 7

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    cmpg-double v1, p1, v2

    if-gez v1, :cond_1

    :cond_0
    return v4

    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, p1, v2

    if-gtz v1, :cond_0

    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v0, v1

    if-gtz v0, :cond_2

    return v4

    :cond_2
    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    aget v1, v1, v5

    int-to-double v2, v1

    mul-double/2addr v2, p1

    double-to-int v1, v2

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v1

    return v1
.end method

.method public getApproximateCPUFrequencyByPercentOfMaximumForSSRM(D)I
    .locals 5

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    array-length v0, v1

    if-gtz v0, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    aget v1, v1, v3

    int-to-double v2, v1

    mul-double/2addr v2, p1

    double-to-int v1, v2

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v1

    return v1
.end method

.method public getApproximateCPUFrequencyForSSRM(I)I
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    if-eqz v2, :cond_0

    if-gez p1, :cond_1

    :cond_0
    return v4

    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    array-length v0, v2

    if-gtz v0, :cond_2

    return v4

    :cond_2
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    aget v1, v2, v3

    :goto_0
    if-lez v0, :cond_3

    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-lt v2, p1, :cond_4

    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v2, v3

    :cond_3
    return v1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getApproximateGPUFrequency(I)I
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-eqz v2, :cond_0

    if-gez p1, :cond_1

    :cond_0
    return v4

    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    array-length v0, v2

    if-gtz v0, :cond_2

    return v4

    :cond_2
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    aget v1, v2, v3

    :goto_0
    if-lez v0, :cond_3

    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-lt v2, p1, :cond_4

    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v2, v3

    :cond_3
    return v1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getApproximateGPUFrequencyByPercentOfMaximum(D)I
    .locals 7

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    cmpg-double v1, p1, v2

    if-gez v1, :cond_1

    :cond_0
    return v4

    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, p1, v2

    if-gtz v1, :cond_0

    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    array-length v0, v1

    if-gtz v0, :cond_2

    return v4

    :cond_2
    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    aget v1, v1, v5

    int-to-double v2, v1

    mul-double/2addr v2, p1

    double-to-int v1, v2

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateGPUFrequency(I)I

    move-result v1

    return v1
.end method

.method public getSupportedBUSFrequency()[I
    .locals 1

    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    return-object v0
.end method

.method public getSupportedCPUCoreNum()[I
    .locals 1

    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    return-object v0
.end method

.method public getSupportedCPUCoreNumForSSRM()[I
    .locals 1

    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNumForSSRM:[I

    return-object v0
.end method

.method public getSupportedCPUFrequency()[I
    .locals 1

    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    return-object v0
.end method

.method public getSupportedCPUFrequencyForSSRM()[I
    .locals 1

    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    return-object v0
.end method

.method public getSupportedGPUFrequency()[I
    .locals 1

    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    return-object v0
.end method

.method public getSupportedGPUFrequencyForSSRM()[I
    .locals 1

    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequencyForSSRM:[I

    return-object v0
.end method

.method public isAquired()Z
    .locals 1

    iget-boolean v0, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    return v0
.end method

.method public isHintValid()Z
    .locals 1

    iget-boolean v0, p0, Landroid/os/DVFSHelper;->mIsHintValid:Z

    return v0
.end method

.method public isValidDVFSParam(I)Z
    .locals 1

    const/16 v0, 0xb

    if-le p1, v0, :cond_0

    const/16 v0, 0x1c

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isValidDVFSParam(IJ)Z
    .locals 2

    invoke-virtual {p0, p1}, Landroid/os/DVFSHelper;->isValidDVFSParam(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResumeEvent(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7

    const-wide/16 v4, 0x0

    const/16 v3, 0x16

    sget-object v0, Landroid/os/DVFSHelper;->mAMSCState:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/DVFSHelper;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Landroid/os/DVFSHelper;->mAMSCState:Landroid/os/DVFSHelper;

    :cond_0
    sget-object v0, Landroid/os/DVFSHelper;->mAMSCStateTail:Landroid/os/DVFSHelper;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/DVFSHelper;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Landroid/os/DVFSHelper;->mAMSCStateTail:Landroid/os/DVFSHelper;

    :cond_1
    packed-switch p3, :pswitch_data_0

    :try_start_0
    const-string/jumbo v0, "DVFSHelper"

    const-string/jumbo v1, "onActivityResumeEvent:: type is not defined"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Landroid/os/DVFSHelper;->mAMSCState:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2

    sget-object v0, Landroid/os/DVFSHelper;->mAMSCState:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    :try_start_1
    sget-object v0, Landroid/os/DVFSHelper;->mAMSCState:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2

    sget-object v0, Landroid/os/DVFSHelper;->mAMSCState:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_0

    :pswitch_2
    sget-object v0, Landroid/os/DVFSHelper;->mAMSCStateTail:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2

    sget-object v0, Landroid/os/DVFSHelper;->mAMSCStateTail:Landroid/os/DVFSHelper;

    sget v1, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onAppLaunchEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    const/16 v8, 0xfa0

    const/16 v7, 0x1f4

    const/16 v6, 0x7d0

    const-wide/16 v4, 0x0

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/DVFSHelper;

    const-string/jumbo v2, "LAUNCHER_APP_BOOSTER_CPU"

    const/16 v3, 0xc

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    iget-object v0, p0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

    const-string/jumbo v1, "Application_launch"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUCoreNumBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/DVFSHelper;

    const-string/jumbo v2, "LAUNCHER_APP_BOOSTER_CORE"

    const/16 v3, 0xe

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUCoreNumBooster:Landroid/os/DVFSHelper;

    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    iget-object v0, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUCoreNumBooster:Landroid/os/DVFSHelper;

    const-string/jumbo v1, "Application_launch"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_3

    new-instance v0, Landroid/os/DVFSHelper;

    const-string/jumbo v2, "LAUNCHER_APP_BOOSTER_GPU"

    const/16 v3, 0x10

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mGPUFrequencyTable:[I

    iget-object v0, p0, Landroid/os/DVFSHelper;->mGPUFrequencyTable:[I

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

    const-string/jumbo v1, "Application_launch"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    :cond_3
    :goto_2
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_4

    new-instance v0, Landroid/os/DVFSHelper;

    const-string/jumbo v2, "LAUNCHER_APP_BOOSTER_BUS"

    const/16 v3, 0x13

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mBUSFrequencyTable:[I

    iget-object v0, p0, Landroid/os/DVFSHelper;->mBUSFrequencyTable:[I

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

    const-string/jumbo v1, "Application_launch"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    :cond_4
    :goto_3
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCState:Landroid/os/DVFSHelper;

    if-nez v0, :cond_5

    new-instance v0, Landroid/os/DVFSHelper;

    const-string/jumbo v2, "LAUNCHER_APP_BOOSTER_CSTATE"

    const/16 v3, 0x16

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCState:Landroid/os/DVFSHelper;

    :cond_5
    const-string/jumbo v0, "hf"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "ha"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "kam"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_6
    iput v7, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    :goto_4
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

    iget v1, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    :cond_7
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUCoreNumBooster:Landroid/os/DVFSHelper;

    iget v1, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    :cond_8
    iget-object v0, p0, Landroid/os/DVFSHelper;->mGPUFrequencyTable:[I

    if-eqz v0, :cond_a

    const-string/jumbo v0, "pxa1088"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "pxa1908"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "pxa1936"

    sget-object v1, Landroid/os/DVFSHelper;->HARDWARE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

    iget v1, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    :cond_a
    iget-object v0, p0, Landroid/os/DVFSHelper;->mBUSFrequencyTable:[I

    if-eqz v0, :cond_c

    const-string/jumbo v0, "hrq"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "tf"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "kf"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "pxa1088"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "pxa1908"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "kmini"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "pxa1936"

    sget-object v1, Landroid/os/DVFSHelper;->HARDWARE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "MSM8976"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "MSM8953"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "APQ8076"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "MSM8937"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "MSM8917"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

    iget v1, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    :cond_c
    iget-object v0, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v0}, Landroid/os/DVFSHelper$Model;->getPlusFreq()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NONE"

    if-eq v0, v1, :cond_d

    :cond_d
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCState:Landroid/os/DVFSHelper;

    iget v1, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    return-void

    :cond_e
    const-string/jumbo v0, "DVFSHelper"

    const-string/jumbo v1, "onAppLaunchEvent:: mCPUFrequencyTable is null"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v0, "DVFSHelper"

    const-string/jumbo v1, "onAppLaunchEvent:: mCPUCoreTable is null"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    const-string/jumbo v0, "DVFSHelper"

    const-string/jumbo v1, "onAppLaunchEvent:: mGPUFrequencyTable is null"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_11
    const-string/jumbo v0, "DVFSHelper"

    const-string/jumbo v1, "onAppLaunchEvent:: mBUSFrequencyTable is null"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_12
    const-string/jumbo v0, "hrl"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "hrq"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "zl"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "kf"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "ka"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "kq"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "tf"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "ta"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "sf"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "sa"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "zq"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "tr3ca"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_13
    const-string/jumbo v0, "com.sec.android.app.camera"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    iput v6, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    goto/16 :goto_4

    :cond_14
    invoke-direct {p0, p2}, Landroid/os/DVFSHelper;->isPackageExistInAppLaunch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    iput v8, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    goto/16 :goto_4

    :cond_15
    const-string/jumbo v0, "sf"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string/jumbo v0, "sa"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_16
    const-string/jumbo v0, ""

    const-string/jumbo v1, "_a8e_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string/jumbo v0, ""

    const-string/jumbo v1, "_a8hp_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    iput v6, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    goto/16 :goto_4

    :cond_18
    iput v7, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    goto/16 :goto_4

    :cond_19
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    goto/16 :goto_4

    :cond_1a
    const-string/jumbo v0, "msm8916"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "island"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "java"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "isla"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "carmen2"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "islaquad"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    const-string/jumbo v1, "mrvl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    const-string/jumbo v1, "sc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "msm8992"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1b
    invoke-direct {p0, p2}, Landroid/os/DVFSHelper;->isPackageExistInAppLaunch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iput v8, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    goto/16 :goto_4

    :cond_1c
    iput v6, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    goto/16 :goto_4

    :cond_1d
    iput v6, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    goto/16 :goto_4
.end method

.method public onWindowRotationEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    const/16 v9, 0x7d0

    const/4 v8, 0x0

    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    if-nez v3, :cond_0

    new-instance v3, Landroid/os/DVFSHelper;

    const/16 v4, 0xe

    invoke-direct {v3, p1, v4}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    const-string/jumbo v4, "CORE_NUM"

    aget v5, v1, v8

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    const/16 v4, 0x1f4

    invoke-virtual {v3, v4}, Landroid/os/DVFSHelper;->acquire(I)V

    :cond_1
    const-string/jumbo v3, "exynos4"

    sget-object v4, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "exynos5"

    sget-object v4, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "hf"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "tablet"

    sget-object v4, Landroid/os/DVFSHelper;->DEVICE_TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const-string/jumbo v3, "pxa1088"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "pxa1908"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "msm8226"

    sget-object v4, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "pxa1936"

    sget-object v4, Landroid/os/DVFSHelper;->HARDWARE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    if-nez v3, :cond_5

    new-instance v3, Landroid/os/DVFSHelper;

    const/16 v4, 0x10

    invoke-direct {v3, p1, v4}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v2

    if-eqz v2, :cond_e

    const-string/jumbo v3, ""

    const-string/jumbo v4, "zl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "exynos4"

    sget-object v4, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_4
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    const-string/jumbo v4, "GPU"

    array-length v5, v2

    add-int/lit8 v5, v5, -0x2

    aget v5, v2, v5

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_5
    :goto_1
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3, v9}, Landroid/os/DVFSHelper;->acquire(I)V

    :cond_6
    const-string/jumbo v3, "pxa1088"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, "pxa1908"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, "pxa1936"

    sget-object v4, Landroid/os/DVFSHelper;->HARDWARE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_7
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    if-nez v3, :cond_8

    new-instance v3, Landroid/os/DVFSHelper;

    const/16 v4, 0x13

    invoke-direct {v3, p1, v4}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    const-string/jumbo v4, "BUS"

    aget v5, v0, v8

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_8
    :goto_2
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3, v9}, Landroid/os/DVFSHelper;->acquire(I)V

    :cond_9
    return-void

    :cond_a
    const-string/jumbo v3, "DVFSHelper"

    const-string/jumbo v4, "onWindowRotationEvent:: coreTable is null"

    invoke-static {v3, v4}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v3, "pxa1088"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string/jumbo v3, "pxa1908"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string/jumbo v3, "msm8226"

    sget-object v4, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string/jumbo v3, "pxa1936"

    sget-object v4, Landroid/os/DVFSHelper;->HARDWARE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_c
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    const-string/jumbo v4, "GPU"

    aget v5, v2, v8

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_1

    :cond_d
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    const-string/jumbo v4, "GPU"

    const/4 v5, 0x1

    aget v5, v2, v5

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v3, "DVFSHelper"

    const-string/jumbo v4, "onWindowRotationEvent:: gpuTable is null"

    invoke-static {v3, v4}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v3, "DVFSHelper"

    const-string/jumbo v4, "onWindowRotationEvent:: busTable is null"

    invoke-static {v3, v4}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public release()V
    .locals 3

    iget-boolean v2, p0, Landroid/os/DVFSHelper;->mIsHintNotifier:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/os/DVFSHelper;->mHintList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DVFSHelper;

    invoke-direct {v0}, Landroid/os/DVFSHelper;->releaseImpl()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/os/DVFSHelper;->releaseImpl()V

    :cond_1
    return-void
.end method

.method public setFrequency(J)Landroid/os/DVFSHelper;
    .locals 1

    iget v0, p0, Landroid/os/DVFSHelper;->mType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object p0

    :pswitch_1
    const-string/jumbo v0, "CPU"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "GPU"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "CORE_NUM"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "BUS"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public setFrequencyByPercent(I)Landroid/os/DVFSHelper;
    .locals 4

    const-wide/16 v2, 0x0

    iget v0, p0, Landroid/os/DVFSHelper;->mType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object p0

    :pswitch_1
    const-string/jumbo v0, "CPU"

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "GPU"

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "CORE_NUM"

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "BUS"

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
