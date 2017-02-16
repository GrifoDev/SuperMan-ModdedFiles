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

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 39
    const-string/jumbo v0, "0x4948"

    const-string/jumbo v1, "ro.debug_level"

    const-string/jumbo v2, "0x4f4c"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/DVFSHelper;->sIsDebugLevelHigh:Z

    .line 195
    sput v3, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    .line 198
    sput v3, Landroid/os/DVFSHelper;->WAKEUP_BOOSTER_CORE_NUM:I

    .line 200
    sput v3, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    .line 202
    sput v3, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    .line 210
    const-string/jumbo v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    .line 212
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/DVFSHelper;->DEVICE_TYPE:Ljava/lang/String;

    .line 214
    const-string/jumbo v0, "ro.chipname"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    .line 216
    const-string/jumbo v0, "ro.hardware"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/DVFSHelper;->HARDWARE_NAME:Ljava/lang/String;

    .line 266
    sput v3, Landroid/os/DVFSHelper;->mToken:I

    .line 1541
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/DVFSHelper;->isEngBinary:Z

    .line 1899
    sput-object v4, Landroid/os/DVFSHelper;->mAMSCState:Landroid/os/DVFSHelper;

    .line 1901
    sput-object v4, Landroid/os/DVFSHelper;->mAMSCStateTail:Landroid/os/DVFSHelper;

    .line 3015
    sput-object v4, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    const/16 v7, 0x1c

    const/4 v1, 0x1

    const/16 v6, 0x13

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 3225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object v4, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 220
    iput-object v4, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    .line 222
    iput-object v4, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 224
    const/16 v0, 0xb

    iput v0, p0, Landroid/os/DVFSHelper;->mType:I

    .line 226
    iput-object v4, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 228
    iput-object v4, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    .line 230
    iput-object v4, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    .line 232
    iput-object v4, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    .line 234
    iput-object v4, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNumForSSRM:[I

    .line 236
    iput-object v4, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    .line 238
    iput-object v4, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequencyForSSRM:[I

    .line 240
    iput-object v4, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    .line 242
    iput-object v4, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 244
    iput-object v4, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 246
    iput-object v4, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 248
    iput-object v4, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 250
    iput-object v4, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 252
    iput-object v4, p0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 254
    iput-object v4, p0, Landroid/os/DVFSHelper;->cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 256
    iput-object v4, p0, Landroid/os/DVFSHelper;->cpuLegacySchedulerRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 258
    iput-object v4, p0, Landroid/os/DVFSHelper;->cpuHotplugDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 260
    iput-object v4, p0, Landroid/os/DVFSHelper;->pciePsmDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 262
    iput-object v4, p0, Landroid/os/DVFSHelper;->cpusetRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 264
    iput-object v4, p0, Landroid/os/DVFSHelper;->cpuctlRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 268
    iput-boolean v5, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    .line 274
    iput-boolean v5, p0, Landroid/os/DVFSHelper;->DISPLAY_WQXGA:Z

    .line 276
    iput-boolean v5, p0, Landroid/os/DVFSHelper;->DISPLAY_FHD:Z

    .line 278
    iput-boolean v5, p0, Landroid/os/DVFSHelper;->DISPLAY_HD:Z

    .line 280
    iput-object v4, p0, Landroid/os/DVFSHelper;->wm:Landroid/view/WindowManager;

    .line 282
    const-string/jumbo v0, ""

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    const-string/jumbo v2, "jpn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    :cond_0
    const-string/jumbo v0, "DCM"

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 282
    if-nez v0, :cond_1

    .line 284
    const-string/jumbo v0, "KDI"

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 282
    :goto_0
    iput-boolean v0, p0, Landroid/os/DVFSHelper;->REGION_JPN:Z

    .line 1589
    iput-object v4, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

    .line 1591
    iput-object v4, p0, Landroid/os/DVFSHelper;->mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

    .line 1593
    iput-object v4, p0, Landroid/os/DVFSHelper;->mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

    .line 1595
    iput-object v4, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 1597
    iput-object v4, p0, Landroid/os/DVFSHelper;->mAppLaunchCState:Landroid/os/DVFSHelper;

    .line 1599
    iput-object v4, p0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    .line 1601
    iput-object v4, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    .line 1603
    iput-object v4, p0, Landroid/os/DVFSHelper;->mGPUFrequencyTable:[I

    .line 1605
    iput-object v4, p0, Landroid/os/DVFSHelper;->mBUSFrequencyTable:[I

    .line 1607
    const/16 v0, 0xfa0

    iput v0, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_LL:I

    .line 1609
    const/16 v0, 0x7d0

    iput v0, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_L:I

    .line 1611
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_S:I

    .line 1613
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_M:I

    .line 1615
    const/16 v0, 0x7d0

    iput v0, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    .line 1617
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    .line 1618
    new-array v2, v7, [I

    fill-array-data v2, :array_0

    invoke-direct {p0, v2}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 1622
    const/16 v2, 0x1e

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-direct {p0, v2}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1626
    new-array v2, v6, [I

    fill-array-data v2, :array_2

    invoke-direct {p0, v2}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    .line 1629
    const/16 v2, 0x15

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    invoke-direct {p0, v2}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    .line 1632
    new-array v2, v7, [I

    fill-array-data v2, :array_4

    invoke-direct {p0, v2}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v0, v3

    .line 1636
    new-array v2, v6, [I

    fill-array-data v2, :array_5

    invoke-direct {p0, v2}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v0, v3

    .line 1639
    new-array v2, v6, [I

    fill-array-data v2, :array_6

    invoke-direct {p0, v2}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v0, v3

    .line 1642
    new-array v2, v7, [I

    fill-array-data v2, :array_7

    invoke-direct {p0, v2}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v0, v3

    .line 1646
    const/16 v2, 0x19

    new-array v2, v2, [I

    fill-array-data v2, :array_8

    invoke-direct {p0, v2}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v0, v3

    .line 1650
    const/16 v2, 0x19

    new-array v2, v2, [I

    fill-array-data v2, :array_9

    invoke-direct {p0, v2}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v0, v3

    .line 1654
    const/16 v2, 0x17

    new-array v2, v2, [I

    fill-array-data v2, :array_a

    invoke-direct {p0, v2}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v0, v3

    .line 1658
    new-array v2, v6, [I

    fill-array-data v2, :array_b

    invoke-direct {p0, v2}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v0, v3

    .line 1661
    const/16 v2, 0xe

    new-array v2, v2, [I

    fill-array-data v2, :array_c

    invoke-direct {p0, v2}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v0, v3

    .line 1664
    const/16 v2, 0x12

    new-array v2, v2, [I

    fill-array-data v2, :array_d

    invoke-direct {p0, v2}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v0, v3

    .line 1667
    new-array v2, v6, [I

    fill-array-data v2, :array_e

    invoke-direct {p0, v2}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, v0, v3

    .line 1617
    iput-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchPackages:[Ljava/lang/String;

    .line 1823
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/os/DVFSHelper;->ROTATION_BOOSTING_TIMEOUT:I

    .line 1825
    const/16 v0, 0x7d0

    iput v0, p0, Landroid/os/DVFSHelper;->ROTATION_GPU_BOOSTING_TIMEOUT:I

    .line 1827
    iput-object v4, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 1829
    iput-object v4, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    .line 1831
    iput-object v4, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    .line 3217
    iput-object v4, p0, Landroid/os/DVFSHelper;->mHintList:Ljava/util/ArrayList;

    .line 3219
    iput-boolean v5, p0, Landroid/os/DVFSHelper;->mIsHintNotifier:Z

    .line 3221
    iput-boolean v5, p0, Landroid/os/DVFSHelper;->mIsHintValid:Z

    .line 3223
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/DVFSHelper;->mHintTimeout:I

    .line 3226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mHintList:Ljava/util/ArrayList;

    .line 3227
    iput-boolean v1, p0, Landroid/os/DVFSHelper;->mIsHintNotifier:Z

    .line 3225
    return-void

    :cond_1
    move v0, v1

    .line 282
    goto/16 :goto_0

    .line 1618
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

    .line 1622
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

    .line 1626
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

    .line 1629
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

    .line 1632
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

    .line 1636
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

    .line 1639
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

    .line 1642
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

    .line 1646
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

    .line 1650
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

    .line 1654
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

    .line 1658
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

    .line 1661
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

    .line 1664
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

    .line 1667
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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 295
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 294
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "option"    # J

    .prologue
    .line 308
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 307
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "option"    # J

    .prologue
    const/16 v9, 0x1c

    const/16 v8, 0x13

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object v6, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 220
    iput-object v6, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    .line 222
    iput-object v6, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 224
    const/16 v2, 0xb

    iput v2, p0, Landroid/os/DVFSHelper;->mType:I

    .line 226
    iput-object v6, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 228
    iput-object v6, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    .line 230
    iput-object v6, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    .line 232
    iput-object v6, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    .line 234
    iput-object v6, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNumForSSRM:[I

    .line 236
    iput-object v6, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    .line 238
    iput-object v6, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequencyForSSRM:[I

    .line 240
    iput-object v6, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    .line 242
    iput-object v6, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 244
    iput-object v6, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 246
    iput-object v6, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 248
    iput-object v6, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 250
    iput-object v6, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 252
    iput-object v6, p0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 254
    iput-object v6, p0, Landroid/os/DVFSHelper;->cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 256
    iput-object v6, p0, Landroid/os/DVFSHelper;->cpuLegacySchedulerRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 258
    iput-object v6, p0, Landroid/os/DVFSHelper;->cpuHotplugDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 260
    iput-object v6, p0, Landroid/os/DVFSHelper;->pciePsmDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 262
    iput-object v6, p0, Landroid/os/DVFSHelper;->cpusetRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 264
    iput-object v6, p0, Landroid/os/DVFSHelper;->cpuctlRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 268
    iput-boolean v7, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    .line 274
    iput-boolean v7, p0, Landroid/os/DVFSHelper;->DISPLAY_WQXGA:Z

    .line 276
    iput-boolean v7, p0, Landroid/os/DVFSHelper;->DISPLAY_FHD:Z

    .line 278
    iput-boolean v7, p0, Landroid/os/DVFSHelper;->DISPLAY_HD:Z

    .line 280
    iput-object v6, p0, Landroid/os/DVFSHelper;->wm:Landroid/view/WindowManager;

    .line 282
    const-string/jumbo v2, ""

    if-eqz v2, :cond_0

    const-string/jumbo v2, ""

    const-string/jumbo v4, "jpn"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 283
    :cond_0
    const-string/jumbo v2, "DCM"

    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 282
    if-nez v2, :cond_1

    .line 284
    const-string/jumbo v2, "KDI"

    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 282
    :goto_0
    iput-boolean v2, p0, Landroid/os/DVFSHelper;->REGION_JPN:Z

    .line 1589
    iput-object v6, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

    .line 1591
    iput-object v6, p0, Landroid/os/DVFSHelper;->mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

    .line 1593
    iput-object v6, p0, Landroid/os/DVFSHelper;->mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

    .line 1595
    iput-object v6, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 1597
    iput-object v6, p0, Landroid/os/DVFSHelper;->mAppLaunchCState:Landroid/os/DVFSHelper;

    .line 1599
    iput-object v6, p0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    .line 1601
    iput-object v6, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    .line 1603
    iput-object v6, p0, Landroid/os/DVFSHelper;->mGPUFrequencyTable:[I

    .line 1605
    iput-object v6, p0, Landroid/os/DVFSHelper;->mBUSFrequencyTable:[I

    .line 1607
    const/16 v2, 0xfa0

    iput v2, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_LL:I

    .line 1609
    const/16 v2, 0x7d0

    iput v2, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_L:I

    .line 1611
    const/16 v2, 0x1f4

    iput v2, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_S:I

    .line 1613
    const/16 v2, 0x3e8

    iput v2, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_M:I

    .line 1615
    const/16 v2, 0x7d0

    iput v2, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    .line 1617
    const/16 v2, 0xf

    new-array v2, v2, [Ljava/lang/String;

    .line 1618
    new-array v4, v9, [I

    fill-array-data v4, :array_0

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    .line 1622
    const/16 v4, 0x1e

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1626
    new-array v4, v8, [I

    fill-array-data v4, :array_2

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v2, v5

    .line 1629
    const/16 v4, 0x15

    new-array v4, v4, [I

    fill-array-data v4, :array_3

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v2, v5

    .line 1632
    new-array v4, v9, [I

    fill-array-data v4, :array_4

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v2, v5

    .line 1636
    new-array v4, v8, [I

    fill-array-data v4, :array_5

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v2, v5

    .line 1639
    new-array v4, v8, [I

    fill-array-data v4, :array_6

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v2, v5

    .line 1642
    new-array v4, v9, [I

    fill-array-data v4, :array_7

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v2, v5

    .line 1646
    const/16 v4, 0x19

    new-array v4, v4, [I

    fill-array-data v4, :array_8

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    aput-object v4, v2, v5

    .line 1650
    const/16 v4, 0x19

    new-array v4, v4, [I

    fill-array-data v4, :array_9

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x9

    aput-object v4, v2, v5

    .line 1654
    const/16 v4, 0x17

    new-array v4, v4, [I

    fill-array-data v4, :array_a

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    aput-object v4, v2, v5

    .line 1658
    new-array v4, v8, [I

    fill-array-data v4, :array_b

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xb

    aput-object v4, v2, v5

    .line 1661
    const/16 v4, 0xe

    new-array v4, v4, [I

    fill-array-data v4, :array_c

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc

    aput-object v4, v2, v5

    .line 1664
    const/16 v4, 0x12

    new-array v4, v4, [I

    fill-array-data v4, :array_d

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xd

    aput-object v4, v2, v5

    .line 1667
    new-array v4, v8, [I

    fill-array-data v4, :array_e

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xe

    aput-object v4, v2, v5

    .line 1617
    iput-object v2, p0, Landroid/os/DVFSHelper;->mAppLaunchPackages:[Ljava/lang/String;

    .line 1823
    const/16 v2, 0x1f4

    iput v2, p0, Landroid/os/DVFSHelper;->ROTATION_BOOSTING_TIMEOUT:I

    .line 1825
    const/16 v2, 0x7d0

    iput v2, p0, Landroid/os/DVFSHelper;->ROTATION_GPU_BOOSTING_TIMEOUT:I

    .line 1827
    iput-object v6, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 1829
    iput-object v6, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    .line 1831
    iput-object v6, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    .line 3217
    iput-object v6, p0, Landroid/os/DVFSHelper;->mHintList:Ljava/util/ArrayList;

    .line 3219
    iput-boolean v7, p0, Landroid/os/DVFSHelper;->mIsHintNotifier:Z

    .line 3221
    iput-boolean v7, p0, Landroid/os/DVFSHelper;->mIsHintValid:Z

    .line 3223
    const/4 v2, -0x1

    iput v2, p0, Landroid/os/DVFSHelper;->mHintTimeout:I

    .line 323
    if-nez p1, :cond_2

    .line 324
    return-void

    :cond_1
    move v2, v3

    .line 282
    goto/16 :goto_0

    .line 326
    :cond_2
    iput-object p1, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 328
    iget-object v2, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Landroid/os/DVFSHelper;->wm:Landroid/view/WindowManager;

    .line 329
    iget-object v2, p0, Landroid/os/DVFSHelper;->wm:Landroid/view/WindowManager;

    if-eqz v2, :cond_4

    .line 330
    iget-object v2, p0, Landroid/os/DVFSHelper;->wm:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 331
    .local v0, "d":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 332
    .local v1, "p":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 333
    iget v2, v1, Landroid/graphics/Point;->x:I

    const/16 v4, 0xa00

    if-ge v2, v4, :cond_3

    iget v2, v1, Landroid/graphics/Point;->y:I

    const/16 v4, 0xa00

    if-lt v2, v4, :cond_5

    .line 335
    :cond_3
    iput-boolean v3, p0, Landroid/os/DVFSHelper;->DISPLAY_WQXGA:Z

    .line 342
    .end local v0    # "d":Landroid/view/Display;
    .end local v1    # "p":Landroid/graphics/Point;
    :cond_4
    :goto_1
    invoke-direct {p0}, Landroid/os/DVFSHelper;->createModel()Landroid/os/DVFSHelper$Model;

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    .line 344
    iget-object v2, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 345
    const-string/jumbo v3, "CustomFrequencyManagerService"

    .line 344
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/CustomFrequencyManager;

    iput-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 346
    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v2, :cond_c

    .line 347
    const-string/jumbo v2, "DVFSHelper"

    const-string/jumbo v3, "DVFSHelper:: failed to load CFMS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-void

    .line 333
    .restart local v0    # "d":Landroid/view/Display;
    .restart local v1    # "p":Landroid/graphics/Point;
    :cond_5
    iget v2, v1, Landroid/graphics/Point;->x:I

    const/16 v4, 0x800

    if-ne v2, v4, :cond_6

    iget v2, v1, Landroid/graphics/Point;->y:I

    const/16 v4, 0x600

    if-eq v2, v4, :cond_3

    .line 334
    :cond_6
    iget v2, v1, Landroid/graphics/Point;->y:I

    const/16 v4, 0x800

    if-ne v2, v4, :cond_7

    iget v2, v1, Landroid/graphics/Point;->x:I

    const/16 v4, 0x600

    if-ge v2, v4, :cond_3

    .line 336
    :cond_7
    iget v2, v1, Landroid/graphics/Point;->x:I

    const/16 v4, 0x780

    if-ne v2, v4, :cond_9

    iget v2, v1, Landroid/graphics/Point;->y:I

    const/16 v4, 0x438

    if-ne v2, v4, :cond_9

    .line 337
    :cond_8
    iput-boolean v3, p0, Landroid/os/DVFSHelper;->DISPLAY_FHD:Z

    goto :goto_1

    .line 336
    :cond_9
    iget v2, v1, Landroid/graphics/Point;->x:I

    const/16 v4, 0x438

    if-ne v2, v4, :cond_a

    iget v2, v1, Landroid/graphics/Point;->y:I

    const/16 v4, 0x780

    if-eq v2, v4, :cond_8

    .line 338
    :cond_a
    iget v2, v1, Landroid/graphics/Point;->x:I

    const/16 v4, 0x500

    if-ne v2, v4, :cond_b

    iget v2, v1, Landroid/graphics/Point;->y:I

    const/16 v4, 0x2d0

    if-ne v2, v4, :cond_b

    .line 339
    :goto_2
    iput-boolean v3, p0, Landroid/os/DVFSHelper;->DISPLAY_HD:Z

    goto :goto_1

    .line 338
    :cond_b
    iget v2, v1, Landroid/graphics/Point;->x:I

    const/16 v4, 0x2d0

    if-ne v2, v4, :cond_4

    iget v2, v1, Landroid/graphics/Point;->y:I

    const/16 v4, 0x500

    if-ne v2, v4, :cond_4

    goto :goto_2

    .line 351
    .end local v0    # "d":Landroid/view/Display;
    .end local v1    # "p":Landroid/graphics/Point;
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

    .line 353
    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager;->getSupportedCPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    .line 354
    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager;->getSupportedCPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    .line 355
    invoke-direct {p0}, Landroid/os/DVFSHelper;->adjustCPUFreqTable()V

    .line 356
    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager;->getSupportedCPUCoreNum()[I

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    .line 357
    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager;->getSupportedCPUCoreNum()[I

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNumForSSRM:[I

    .line 358
    invoke-direct {p0}, Landroid/os/DVFSHelper;->adjustCPUCoreTable()V

    .line 359
    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager;->getSupportedGPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    .line 360
    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager;->getSupportedGPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequencyForSSRM:[I

    .line 361
    invoke-direct {p0}, Landroid/os/DVFSHelper;->adjustGPUFreqTable()V

    .line 362
    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager;->getSupportedSysBusFrequency()[I

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    .line 366
    sget v2, Landroid/os/DVFSHelper;->mToken:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Landroid/os/DVFSHelper;->mToken:I

    .line 367
    if-eqz p2, :cond_d

    .line 368
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

    .line 373
    :goto_3
    iput p3, p0, Landroid/os/DVFSHelper;->mType:I

    .line 322
    return-void

    .line 370
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

    .line 1618
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

    .line 1622
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

    .line 1626
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

    .line 1629
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

    .line 1632
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

    .line 1636
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

    .line 1639
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

    .line 1642
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

    .line 1646
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

    .line 1650
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

    .line 1654
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

    .line 1658
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

    .line 1661
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

    .line 1664
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

    .line 1667
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
    .param p1, "timeout"    # I

    .prologue
    .line 876
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v3, :cond_0

    .line 877
    return-void

    .line 880
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v37

    .line 882
    .local v37, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
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

    .line 884
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    if-eqz v3, :cond_1

    .line 885
    const-string/jumbo v3, "DVFSHelper"

    .line 886
    const-string/jumbo v4, "acquire:: DVFS lock is already acquired. Previous lock will be released first."

    .line 885
    invoke-static {v3, v4}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    invoke-virtual/range {p0 .. p0}, Landroid/os/DVFSHelper;->release()V

    .line 891
    :cond_1
    const/4 v2, 0x0

    .line 892
    .local v2, "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    if-eqz v3, :cond_2

    .line 893
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 896
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/os/DVFSHelper;->mType:I

    packed-switch v3, :pswitch_data_0

    .line 1200
    const-string/jumbo v3, "DVFSHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "acquire:: the request type doesn\'t implemented yet. mType = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1201
    move-object/from16 v0, p0

    iget v6, v0, Landroid/os/DVFSHelper;->mType:I

    .line 1200
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_4

    .line 1206
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 1208
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_5

    .line 1209
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 1211
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_6

    .line 1212
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 1214
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_7

    .line 1215
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 1217
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_8

    .line 1218
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 1220
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_9

    .line 1221
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 1223
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuLegacySchedulerRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_a

    .line 1224
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuLegacySchedulerRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 1226
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuHotplugDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_b

    .line 1227
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuHotplugDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 1229
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->pciePsmDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_c

    .line 1230
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->pciePsmDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 1232
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpusetRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_d

    .line 1233
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpusetRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 1235
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuctlRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_e

    .line 1236
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuctlRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 1238
    :cond_e
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/os/DVFSHelper;->mIsAcquired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1240
    invoke-static/range {v37 .. v37}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 875
    return-void

    .line 898
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    .line 899
    const/4 v5, 0x0

    .line 900
    .local v5, "coreNum":I
    const/16 v39, 0x0

    .line 903
    .local v39, "stringCoreNum":Ljava/lang/String;
    if-eqz v2, :cond_f

    .line 904
    :try_start_2
    const-string/jumbo v3, "CORE_NUM"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v39

    .line 909
    .end local v39    # "stringCoreNum":Ljava/lang/String;
    :cond_f
    :goto_1
    if-eqz v39, :cond_10

    .line 910
    :try_start_3
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 913
    :cond_10
    if-lez v5, :cond_3

    .line 914
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 915
    move/from16 v0, p1

    int-to-long v6, v0

    .line 916
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 915
    const/4 v4, 0x4

    .line 914
    invoke-virtual/range {v3 .. v9}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1239
    .end local v5    # "coreNum":I
    :catchall_0
    move-exception v3

    .line 1240
    invoke-static/range {v37 .. v37}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1239
    throw v3

    .line 906
    .restart local v5    # "coreNum":I
    .restart local v39    # "stringCoreNum":Ljava/lang/String;
    :catch_0
    move-exception v33

    .line 907
    .local v33, "e1":Ljava/lang/NullPointerException;
    :try_start_4
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 921
    .end local v5    # "coreNum":I
    .end local v33    # "e1":Ljava/lang/NullPointerException;
    .end local v39    # "stringCoreNum":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_3

    .line 922
    const/4 v5, 0x0

    .line 923
    .restart local v5    # "coreNum":I
    const/16 v39, 0x0

    .line 925
    .restart local v39    # "stringCoreNum":Ljava/lang/String;
    if-eqz v2, :cond_11

    .line 926
    :try_start_5
    const-string/jumbo v3, "CORE_NUM"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v39

    .line 931
    .end local v39    # "stringCoreNum":Ljava/lang/String;
    :cond_11
    :goto_2
    if-eqz v39, :cond_12

    .line 932
    :try_start_6
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 935
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

    .line 936
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 937
    move/from16 v0, p1

    int-to-long v6, v0

    .line 938
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 937
    const/4 v4, 0x5

    .line 936
    invoke-virtual/range {v3 .. v9}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_0

    .line 928
    .restart local v39    # "stringCoreNum":Ljava/lang/String;
    :catch_1
    move-exception v34

    .line 929
    .local v34, "e2":Ljava/lang/NullPointerException;
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 943
    .end local v5    # "coreNum":I
    .end local v34    # "e2":Ljava/lang/NullPointerException;
    .end local v39    # "stringCoreNum":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-eqz v3, :cond_3

    .line 944
    const/4 v9, -0x1

    .line 946
    .local v9, "freq":I
    if-eqz v2, :cond_14

    .line 947
    const-string/jumbo v3, "CPU"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 948
    .local v31, "cpuOption":Ljava/lang/String;
    if-eqz v31, :cond_14

    .line 949
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 953
    .end local v31    # "cpuOption":Ljava/lang/String;
    :cond_14
    const-string/jumbo v3, "ja"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const v3, 0x186a00

    if-le v9, v3, :cond_16

    .line 954
    const v3, 0x186a00

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v9

    .line 1051
    :cond_15
    :goto_3
    const/4 v3, -0x1

    if-eq v9, v3, :cond_3

    .line 1052
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 1054
    move/from16 v0, p1

    int-to-long v10, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 1053
    const/4 v8, 0x6

    .line 1052
    invoke-virtual/range {v7 .. v13}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_0

    .line 955
    :cond_16
    const-string/jumbo v3, "hrl"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 956
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

    .line 957
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "SMOOTH_SCROLL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 956
    if-nez v3, :cond_17

    .line 957
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "GESTURE_DETECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 956
    if-eqz v3, :cond_15

    .line 958
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->wm:Landroid/view/WindowManager;

    if-eqz v3, :cond_15

    .line 959
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->wm:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v32

    .line 960
    .local v32, "d":Landroid/view/Display;
    new-instance v38, Landroid/graphics/Point;

    invoke-direct/range {v38 .. v38}, Landroid/graphics/Point;-><init>()V

    .line 961
    .local v38, "p":Landroid/graphics/Point;
    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 962
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0xa00

    if-ge v3, v4, :cond_18

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0xa00

    if-lt v3, v4, :cond_19

    .line 964
    :cond_18
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/os/DVFSHelper;->DISPLAY_WQXGA:Z

    .line 965
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "ACTIVITY_RESUME_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 966
    const v9, 0x1afa40

    goto/16 :goto_3

    .line 962
    :cond_19
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x800

    if-ne v3, v4, :cond_1a

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x600

    if-eq v3, v4, :cond_18

    .line 963
    :cond_1a
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x800

    if-ne v3, v4, :cond_1b

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x600

    if-ge v3, v4, :cond_18

    .line 974
    :cond_1b
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x780

    if-ne v3, v4, :cond_20

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x438

    if-ne v3, v4, :cond_20

    .line 975
    :cond_1c
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/os/DVFSHelper;->DISPLAY_FHD:Z

    .line 976
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "ACTIVITY_RESUME_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 977
    const v9, 0x17cdc0

    goto/16 :goto_3

    .line 967
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "LIST_SCROLL_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 968
    const v9, 0xb1bc0

    goto/16 :goto_3

    .line 969
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "SMOOTH_SCROLL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 970
    const v9, 0x1174c0

    goto/16 :goto_3

    .line 971
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "GESTURE_DETECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 972
    const v9, 0xb1bc0

    goto/16 :goto_3

    .line 974
    :cond_20
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x438

    if-ne v3, v4, :cond_21

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x780

    if-eq v3, v4, :cond_1c

    .line 985
    :cond_21
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x500

    if-ne v3, v4, :cond_25

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x2d0

    if-ne v3, v4, :cond_25

    .line 986
    :goto_4
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/os/DVFSHelper;->DISPLAY_HD:Z

    .line 987
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "ACTIVITY_RESUME_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 988
    const v9, 0x17cdc0

    goto/16 :goto_3

    .line 978
    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "LIST_SCROLL_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 979
    const v9, 0xb1bc0

    goto/16 :goto_3

    .line 980
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "SMOOTH_SCROLL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 981
    const v9, 0x1174c0

    goto/16 :goto_3

    .line 982
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "GESTURE_DETECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 983
    const v9, 0xb1bc0

    goto/16 :goto_3

    .line 985
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

    .line 989
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "LIST_SCROLL_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 990
    const v9, 0x541b4

    goto/16 :goto_3

    .line 991
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "SMOOTH_SCROLL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 992
    const v9, 0x541b4

    goto/16 :goto_3

    .line 993
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "GESTURE_DETECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 994
    const v9, 0x541b4

    goto/16 :goto_3

    .line 999
    .end local v32    # "d":Landroid/view/Display;
    .end local v38    # "p":Landroid/graphics/Point;
    :cond_29
    const-string/jumbo v3, "hrq"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1000
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

    .line 1001
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "SMOOTH_SCROLL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 1000
    if-nez v3, :cond_2a

    .line 1001
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "GESTURE_DETECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 1000
    if-eqz v3, :cond_15

    .line 1002
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->wm:Landroid/view/WindowManager;

    if-eqz v3, :cond_15

    .line 1003
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->wm:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v32

    .line 1004
    .restart local v32    # "d":Landroid/view/Display;
    new-instance v38, Landroid/graphics/Point;

    invoke-direct/range {v38 .. v38}, Landroid/graphics/Point;-><init>()V

    .line 1005
    .restart local v38    # "p":Landroid/graphics/Point;
    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1006
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0xa00

    if-ge v3, v4, :cond_2b

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0xa00

    if-lt v3, v4, :cond_2c

    .line 1008
    :cond_2b
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/os/DVFSHelper;->DISPLAY_WQXGA:Z

    .line 1009
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "ACTIVITY_RESUME_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1010
    const v9, 0x17bb00

    goto/16 :goto_3

    .line 1006
    :cond_2c
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x800

    if-ne v3, v4, :cond_2d

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x600

    if-eq v3, v4, :cond_2b

    .line 1007
    :cond_2d
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x800

    if-ne v3, v4, :cond_2e

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x600

    if-ge v3, v4, :cond_2b

    .line 1020
    :cond_2e
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x780

    if-ne v3, v4, :cond_34

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x438

    if-ne v3, v4, :cond_34

    .line 1021
    :cond_2f
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/os/DVFSHelper;->DISPLAY_FHD:Z

    .line 1022
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "ACTIVITY_RESUME_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1023
    const v9, 0x143700

    goto/16 :goto_3

    .line 1011
    :cond_30
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "LIST_SCROLL_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1012
    const v9, 0xc4e00

    goto/16 :goto_3

    .line 1013
    :cond_31
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "SMOOTH_SCROLL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 1014
    const v9, 0x122a00

    goto/16 :goto_3

    .line 1015
    :cond_32
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "GESTURE_DETECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1016
    const v9, 0xc4e00

    goto/16 :goto_3

    .line 1017
    :cond_33
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "WAKEUP_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1018
    const v9, 0x17bb00

    goto/16 :goto_3

    .line 1020
    :cond_34
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x438

    if-ne v3, v4, :cond_35

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x780

    if-eq v3, v4, :cond_2f

    .line 1033
    :cond_35
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x500

    if-ne v3, v4, :cond_3a

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x2d0

    if-ne v3, v4, :cond_3a

    .line 1034
    :goto_5
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/os/DVFSHelper;->DISPLAY_HD:Z

    .line 1035
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "ACTIVITY_RESUME_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 1036
    const v9, 0x143700

    goto/16 :goto_3

    .line 1024
    :cond_36
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "LIST_SCROLL_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1025
    const v9, 0xb2200

    goto/16 :goto_3

    .line 1026
    :cond_37
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "SMOOTH_SCROLL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1027
    const v9, 0xfd200

    goto/16 :goto_3

    .line 1028
    :cond_38
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "GESTURE_DETECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1029
    const v9, 0xb2200

    goto/16 :goto_3

    .line 1030
    :cond_39
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "WAKEUP_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1031
    const v9, 0x122a00

    goto/16 :goto_3

    .line 1033
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

    .line 1037
    :cond_3b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "LIST_SCROLL_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 1038
    const v9, 0x87f00

    goto/16 :goto_3

    .line 1039
    :cond_3c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "SMOOTH_SCROLL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 1040
    const v9, 0xc4e00

    goto/16 :goto_3

    .line 1041
    :cond_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "GESTURE_DETECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 1042
    const v9, 0x87f00

    goto/16 :goto_3

    .line 1043
    :cond_3e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string/jumbo v4, "WAKEUP_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1044
    const v9, 0x122a00

    goto/16 :goto_3

    .line 1059
    .end local v9    # "freq":I
    .end local v32    # "d":Landroid/view/Display;
    .end local v38    # "p":Landroid/graphics/Point;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-eqz v3, :cond_3

    .line 1060
    const/4 v9, -0x1

    .line 1061
    .restart local v9    # "freq":I
    if-eqz v2, :cond_3f

    .line 1062
    const-string/jumbo v3, "CPU"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1063
    .restart local v31    # "cpuOption":Ljava/lang/String;
    if-eqz v31, :cond_3f

    .line 1064
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1068
    .end local v31    # "cpuOption":Ljava/lang/String;
    :cond_3f
    const/4 v3, -0x1

    if-eq v9, v3, :cond_3

    .line 1069
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 1071
    move/from16 v0, p1

    int-to-long v10, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 1070
    const/4 v8, 0x7

    .line 1069
    invoke-virtual/range {v7 .. v13}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_0

    .line 1076
    .end local v9    # "freq":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-eqz v3, :cond_3

    .line 1077
    const/4 v9, -0x1

    .line 1078
    .restart local v9    # "freq":I
    if-eqz v2, :cond_40

    .line 1079
    const-string/jumbo v3, "GPU"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1080
    .local v36, "gpuOption":Ljava/lang/String;
    if-eqz v36, :cond_40

    .line 1081
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1085
    .end local v36    # "gpuOption":Ljava/lang/String;
    :cond_40
    const/4 v3, -0x1

    if-eq v9, v3, :cond_3

    .line 1086
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 1087
    move/from16 v0, p1

    int-to-long v10, v0

    .line 1088
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 1087
    const/4 v8, 0x1

    .line 1086
    invoke-virtual/range {v7 .. v13}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_0

    .line 1093
    .end local v9    # "freq":I
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-eqz v3, :cond_3

    .line 1094
    const/4 v9, -0x1

    .line 1095
    .restart local v9    # "freq":I
    if-eqz v2, :cond_41

    .line 1096
    const-string/jumbo v3, "GPU"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1097
    .restart local v36    # "gpuOption":Ljava/lang/String;
    if-eqz v36, :cond_41

    .line 1098
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1102
    .end local v36    # "gpuOption":Ljava/lang/String;
    :cond_41
    const/4 v3, -0x1

    if-eq v9, v3, :cond_3

    .line 1103
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 1104
    move/from16 v0, p1

    int-to-long v10, v0

    .line 1105
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 1104
    const/16 v8, 0x9

    .line 1103
    invoke-virtual/range {v7 .. v13}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_0

    .line 1110
    .end local v9    # "freq":I
    :pswitch_6
    const/4 v9, -0x1

    .line 1112
    .restart local v9    # "freq":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_42

    .line 1113
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 1114
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 1117
    :cond_42
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 1118
    move/from16 v0, p1

    int-to-long v10, v0

    .line 1119
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 1118
    const/16 v8, 0x8

    .line 1117
    invoke-virtual/range {v7 .. v13}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 1122
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_3

    .line 1123
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    goto/16 :goto_0

    .line 1127
    .end local v9    # "freq":I
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    if-eqz v3, :cond_3

    .line 1128
    const/4 v13, -0x1

    .line 1130
    .local v13, "busMinfreq":I
    if-eqz v2, :cond_43

    .line 1131
    const-string/jumbo v3, "BUS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1132
    .local v30, "busOption":Ljava/lang/String;
    if-eqz v30, :cond_43

    .line 1133
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1137
    .end local v30    # "busOption":Ljava/lang/String;
    :cond_43
    const/4 v3, -0x1

    if-eq v13, v3, :cond_3

    .line 1138
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 1140
    move/from16 v0, p1

    int-to-long v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 1139
    const/16 v12, 0xa

    .line 1138
    invoke-virtual/range {v11 .. v17}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_0

    .line 1145
    .end local v13    # "busMinfreq":I
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    if-eqz v3, :cond_3

    .line 1146
    const/16 v17, -0x1

    .line 1147
    .local v17, "busMaxfreq":I
    if-eqz v2, :cond_44

    .line 1148
    const-string/jumbo v3, "BUS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1149
    .restart local v30    # "busOption":Ljava/lang/String;
    if-eqz v30, :cond_44

    .line 1150
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 1153
    .end local v30    # "busOption":Ljava/lang/String;
    :cond_44
    const/4 v3, -0x1

    move/from16 v0, v17

    if-eq v0, v3, :cond_3

    .line 1154
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 1156
    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    .line 1155
    const/16 v16, 0xb

    .line 1154
    invoke-virtual/range {v15 .. v21}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_0

    .line 1161
    .end local v17    # "busMaxfreq":I
    :pswitch_9
    const/16 v21, 0x63

    .line 1162
    .local v21, "fpsMax":I
    if-eqz v2, :cond_45

    .line 1163
    const-string/jumbo v3, "FPS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1164
    .local v35, "fpsOption":Ljava/lang/String;
    if-eqz v35, :cond_45

    .line 1165
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 1168
    .end local v35    # "fpsOption":Ljava/lang/String;
    :cond_45
    if-ltz v21, :cond_3

    const/16 v3, 0x63

    move/from16 v0, v21

    if-ge v0, v3, :cond_3

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    move-object/from16 v19, v0

    .line 1170
    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v22, v0

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    .line 1170
    const/16 v20, 0x3

    .line 1169
    invoke-virtual/range {v19 .. v25}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_0

    .line 1175
    .end local v21    # "fpsMax":I
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    move-object/from16 v23, v0

    .line 1176
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

    .line 1175
    invoke-virtual/range {v23 .. v29}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_0

    .line 1179
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    move-object/from16 v23, v0

    .line 1181
    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    .line 1180
    const/16 v24, 0xd

    const/16 v25, 0x0

    .line 1179
    invoke-virtual/range {v23 .. v29}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->cpuLegacySchedulerRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_0

    .line 1184
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    move-object/from16 v23, v0

    .line 1185
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

    .line 1184
    invoke-virtual/range {v23 .. v29}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->cpuHotplugDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_0

    .line 1188
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    move-object/from16 v23, v0

    .line 1189
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

    .line 1188
    invoke-virtual/range {v23 .. v29}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->pciePsmDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_0

    .line 1192
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    move-object/from16 v23, v0

    .line 1193
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

    .line 1192
    invoke-virtual/range {v23 .. v29}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->cpusetRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_0

    .line 1196
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    move-object/from16 v23, v0

    .line 1197
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

    .line 1196
    invoke-virtual/range {v23 .. v29}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->cpuctlRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 896
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
    .param p1, "helper"    # Landroid/os/DVFSHelper;

    .prologue
    .line 3231
    iget-object v0, p0, Landroid/os/DVFSHelper;->mHintList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3230
    return-void
.end method

.method private adjustCPUCoreTable()V
    .locals 5

    .prologue
    .line 452
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    if-nez v3, :cond_0

    .line 453
    return-void

    .line 456
    :cond_0
    const/4 v0, 0x0

    .line 457
    .local v0, "SHIFT_STEPS":I
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

    .line 458
    :cond_1
    const/4 v0, 0x1

    .line 461
    :cond_2
    if-lez v0, :cond_4

    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    array-length v3, v3

    if-le v3, v0, :cond_4

    .line 462
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    new-array v2, v3, [I

    .line 463
    .local v2, "newCPUCoreTable":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    if-ge v1, v3, :cond_3

    .line 464
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    add-int v4, v1, v0

    aget v3, v3, v4

    aput v3, v2, v1

    .line 463
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 466
    :cond_3
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    .line 451
    .end local v1    # "i":I
    .end local v2    # "newCPUCoreTable":[I
    :cond_4
    return-void
.end method

.method private adjustCPUFreqTable()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 411
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-nez v3, :cond_0

    .line 412
    return-void

    .line 415
    :cond_0
    const/4 v0, 0x0

    .line 416
    .local v0, "SHIFT_STEPS":I
    const-string/jumbo v3, "hf"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 417
    const/4 v0, 0x1

    .line 434
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

    .line 435
    const-string/jumbo v3, "ta"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 434
    if-eqz v3, :cond_a

    .line 436
    :cond_2
    const/4 v0, 0x2

    .line 441
    :cond_3
    :goto_1
    if-lez v0, :cond_c

    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v3, v3

    if-le v3, v0, :cond_c

    .line 442
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    new-array v2, v3, [I

    .line 443
    .local v2, "newCPUFreqTable":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    if-ge v1, v3, :cond_b

    .line 444
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    add-int v4, v1, v0

    aget v3, v3, v4

    aput v3, v2, v1

    .line 443
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 418
    .end local v1    # "i":I
    .end local v2    # "newCPUFreqTable":[I
    :cond_4
    const-string/jumbo v3, "hrl"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 419
    const/4 v0, 0x6

    goto :goto_0

    .line 420
    :cond_5
    const-string/jumbo v3, "island"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 421
    const-string/jumbo v3, ""

    const-string/jumbo v4, "novel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 422
    const/4 v0, 0x1

    goto :goto_0

    .line 424
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

    .line 425
    const-string/jumbo v3, "zl"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 424
    if-nez v3, :cond_7

    .line 425
    const-string/jumbo v3, "zq"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 424
    if-eqz v3, :cond_8

    .line 426
    :cond_7
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 427
    :cond_8
    const-string/jumbo v3, "tf"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 428
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    aget v3, v3, v5

    const v4, 0x286e00

    if-ne v3, v4, :cond_9

    .line 429
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 431
    :cond_9
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 437
    :cond_a
    const-string/jumbo v3, ""

    const-string/jumbo v4, "ja_kor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 438
    const/4 v0, 0x3

    goto/16 :goto_1

    .line 446
    .restart local v1    # "i":I
    .restart local v2    # "newCPUFreqTable":[I
    :cond_b
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    .line 410
    .end local v1    # "i":I
    .end local v2    # "newCPUFreqTable":[I
    :cond_c
    return-void
.end method

.method private adjustGPUFreqTable()V
    .locals 5

    .prologue
    .line 472
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-nez v3, :cond_0

    .line 473
    return-void

    .line 476
    :cond_0
    const/4 v0, 0x0

    .line 477
    .local v0, "SHIFT_STEPS":I
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

    .line 478
    const-string/jumbo v3, "ta"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 477
    if-nez v3, :cond_1

    .line 478
    const-string/jumbo v3, "hrl"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 477
    if-nez v3, :cond_1

    .line 478
    const-string/jumbo v3, "hrq"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 477
    if-eqz v3, :cond_3

    .line 479
    :cond_1
    const/4 v0, 0x2

    .line 484
    :cond_2
    :goto_0
    if-lez v0, :cond_5

    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    array-length v3, v3

    if-le v3, v0, :cond_5

    .line 485
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    new-array v2, v3, [I

    .line 486
    .local v2, "newGPUFreqTable":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    if-ge v1, v3, :cond_4

    .line 487
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    add-int v4, v1, v0

    aget v3, v3, v4

    aput v3, v2, v1

    .line 486
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 480
    .end local v1    # "i":I
    .end local v2    # "newGPUFreqTable":[I
    :cond_3
    const-string/jumbo v3, "zl"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 481
    const/4 v0, 0x3

    goto :goto_0

    .line 489
    .restart local v1    # "i":I
    .restart local v2    # "newGPUFreqTable":[I
    :cond_4
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    .line 471
    .end local v1    # "i":I
    .end local v2    # "newGPUFreqTable":[I
    :cond_5
    return-void
.end method

.method public static createBusBooster(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 3106
    new-instance v0, Landroid/os/DVFSHelper;

    const-wide/16 v4, 0x0

    const/16 v3, 0x13

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 3107
    .local v0, "instance":Landroid/os/DVFSHelper;
    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v6

    .line 3108
    .local v6, "table":[I
    if-eqz v6, :cond_0

    .line 3109
    const-string/jumbo v1, "BUS"

    const/4 v2, 0x0

    aget v2, v6, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 3111
    :cond_0
    return-object v0
.end method

.method public static createBusLimiter(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 3116
    new-instance v0, Landroid/os/DVFSHelper;

    const-wide/16 v4, 0x0

    const/16 v3, 0x14

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 3117
    .local v0, "instance":Landroid/os/DVFSHelper;
    return-object v0
.end method

.method public static createCpuBooster(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 3058
    new-instance v0, Landroid/os/DVFSHelper;

    const-wide/16 v4, 0x0

    const/16 v3, 0xc

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 3059
    .local v0, "instance":Landroid/os/DVFSHelper;
    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v6

    .line 3060
    .local v6, "table":[I
    if-eqz v6, :cond_0

    .line 3061
    const-string/jumbo v1, "CPU"

    const/4 v2, 0x0

    aget v2, v6, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 3063
    :cond_0
    return-object v0
.end method

.method public static createCpuCoreBooster(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 3090
    new-instance v0, Landroid/os/DVFSHelper;

    const-wide/16 v4, 0x0

    const/16 v3, 0xe

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 3091
    .local v0, "instance":Landroid/os/DVFSHelper;
    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v6

    .line 3092
    .local v6, "table":[I
    if-eqz v6, :cond_0

    .line 3093
    const-string/jumbo v1, "CORE_NUM"

    const/4 v2, 0x0

    aget v2, v6, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 3095
    :cond_0
    return-object v0
.end method

.method public static createCpuCoreLimiter(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 3100
    new-instance v0, Landroid/os/DVFSHelper;

    const-wide/16 v4, 0x0

    const/16 v3, 0xe

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 3101
    .local v0, "instance":Landroid/os/DVFSHelper;
    return-object v0
.end method

.method public static createCpuLimiter(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 3068
    new-instance v0, Landroid/os/DVFSHelper;

    const-wide/16 v4, 0x0

    const/16 v3, 0xd

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 3069
    .local v0, "instance":Landroid/os/DVFSHelper;
    return-object v0
.end method

.method public static createGpuBooster(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 3074
    new-instance v0, Landroid/os/DVFSHelper;

    const-wide/16 v4, 0x0

    const/16 v3, 0x10

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 3075
    .local v0, "instance":Landroid/os/DVFSHelper;
    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v6

    .line 3076
    .local v6, "table":[I
    if-eqz v6, :cond_0

    .line 3077
    const-string/jumbo v1, "GPU"

    const/4 v2, 0x0

    aget v2, v6, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 3079
    :cond_0
    return-object v0
.end method

.method public static createGpuLimiter(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 3084
    new-instance v0, Landroid/os/DVFSHelper;

    const-wide/16 v4, 0x0

    const/16 v3, 0x11

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 3085
    .local v0, "instance":Landroid/os/DVFSHelper;
    return-object v0
.end method

.method public static createHintNotifier(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 3248
    sget-object v3, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v3, :cond_2

    .line 3250
    :try_start_0
    const-string/jumbo v3, "CustomFrequencyManagerService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 3251
    .local v8, "b":Landroid/os/IBinder;
    invoke-static {v8}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v3

    sput-object v3, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3257
    sget-object v3, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v3, :cond_2

    .line 3258
    const/4 v3, 0x0

    return-object v3

    .line 3252
    .end local v8    # "b":Landroid/os/IBinder;
    :catch_0
    move-exception v10

    .line 3253
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    sget-boolean v3, Landroid/os/DVFSHelper;->sIsDebugLevelHigh:Z

    if-eqz v3, :cond_0

    .line 3254
    const-string/jumbo v3, "DVFSHelper"

    const-string/jumbo v4, "createHintNotifier:: failed to get cfms service."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3257
    :cond_0
    sget-object v3, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v3, :cond_2

    .line 3258
    const/4 v3, 0x0

    return-object v3

    .line 3256
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 3257
    sget-object v4, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v4, :cond_1

    .line 3258
    const/4 v3, 0x0

    return-object v3

    .line 3256
    :cond_1
    throw v3

    .line 3263
    :cond_2
    new-instance v15, Landroid/os/DVFSHelper;

    invoke-direct {v15}, Landroid/os/DVFSHelper;-><init>()V

    .line 3265
    .local v15, "notifier":Landroid/os/DVFSHelper;
    const/16 v16, 0x0

    .line 3267
    .local v16, "policyIntent":Landroid/content/Intent;
    :try_start_2
    sget-object v3, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Landroid/os/ICustomFrequencyManager;->getDvfsPolicyByHint(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v16

    .line 3272
    .end local v16    # "policyIntent":Landroid/content/Intent;
    :goto_0
    if-eqz v16, :cond_f

    .line 3273
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 3274
    .local v9, "bundle":Landroid/os/Bundle;
    invoke-virtual {v9}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "key$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 3275
    .local v12, "key":Ljava/lang/String;
    invoke-virtual {v9, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3276
    .local v17, "value":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3278
    .local v2, "newHelper":Landroid/os/DVFSHelper;
    const-string/jumbo v14, ""

    .line 3279
    .local v14, "moduleName":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v11, v3, [I

    .line 3280
    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v11, v4

    .line 3283
    .local v11, "freqTable":[I
    const-string/jumbo v3, "CPU_MIN"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3284
    new-instance v2, Landroid/os/DVFSHelper;

    .end local v2    # "newHelper":Landroid/os/DVFSHelper;
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

    .line 3285
    const-wide/16 v6, 0x0

    .line 3284
    const/16 v5, 0xc

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 3286
    .local v2, "newHelper":Landroid/os/DVFSHelper;
    const-string/jumbo v14, "CPU"

    .line 3287
    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUFrequencyForSSRM()[I

    move-result-object v11

    .line 3307
    .end local v2    # "newHelper":Landroid/os/DVFSHelper;
    :cond_4
    :goto_2
    if-eqz v2, :cond_3

    .line 3308
    const-string/jumbo v3, "max"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3309
    const/4 v3, 0x0

    aget v3, v11, v3

    int-to-long v4, v3

    invoke-virtual {v2, v14, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 3310
    sget-boolean v3, Landroid/os/DVFSHelper;->sIsDebugLevelHigh:Z

    if-eqz v3, :cond_5

    .line 3311
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

    .line 3312
    const-string/jumbo v5, ", freq = "

    .line 3311
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3312
    const/4 v5, 0x0

    aget v5, v11, v5

    .line 3311
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3341
    :cond_5
    :goto_3
    invoke-direct {v15, v2}, Landroid/os/DVFSHelper;->addHelper(Landroid/os/DVFSHelper;)V

    goto/16 :goto_1

    .line 3268
    .end local v9    # "bundle":Landroid/os/Bundle;
    .end local v11    # "freqTable":[I
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "key$iterator":Ljava/util/Iterator;
    .end local v14    # "moduleName":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/String;
    .restart local v16    # "policyIntent":Landroid/content/Intent;
    :catch_1
    move-exception v10

    .line 3269
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "DVFSHelper"

    const-string/jumbo v4, "createHintNotifier:: failed to call getDvfsPolicyByHint."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3288
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v16    # "policyIntent":Landroid/content/Intent;
    .local v2, "newHelper":Landroid/os/DVFSHelper;
    .restart local v9    # "bundle":Landroid/os/Bundle;
    .restart local v11    # "freqTable":[I
    .restart local v12    # "key":Ljava/lang/String;
    .restart local v13    # "key$iterator":Ljava/util/Iterator;
    .restart local v14    # "moduleName":Ljava/lang/String;
    .restart local v17    # "value":Ljava/lang/String;
    :cond_6
    const-string/jumbo v3, "GPU_MIN"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3289
    new-instance v2, Landroid/os/DVFSHelper;

    .end local v2    # "newHelper":Landroid/os/DVFSHelper;
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

    .line 3290
    const-wide/16 v6, 0x0

    .line 3289
    const/16 v5, 0x10

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 3291
    .local v2, "newHelper":Landroid/os/DVFSHelper;
    const-string/jumbo v14, "GPU"

    .line 3292
    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedGPUFrequencyForSSRM()[I

    move-result-object v11

    goto/16 :goto_2

    .line 3293
    .local v2, "newHelper":Landroid/os/DVFSHelper;
    :cond_7
    const-string/jumbo v3, "BUS_MIN"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3294
    const-string/jumbo v14, "BUS"

    .line 3295
    new-instance v2, Landroid/os/DVFSHelper;

    .end local v2    # "newHelper":Landroid/os/DVFSHelper;
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

    .line 3296
    const-wide/16 v6, 0x0

    .line 3295
    const/16 v5, 0x13

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 3297
    .local v2, "newHelper":Landroid/os/DVFSHelper;
    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v11

    goto/16 :goto_2

    .line 3298
    .local v2, "newHelper":Landroid/os/DVFSHelper;
    :cond_8
    const-string/jumbo v3, "CORE_NUM_MIN"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3299
    new-instance v2, Landroid/os/DVFSHelper;

    .end local v2    # "newHelper":Landroid/os/DVFSHelper;
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

    .line 3300
    const-wide/16 v6, 0x0

    const/16 v5, 0xe

    move-object/from16 v3, p0

    .line 3299
    invoke-direct/range {v2 .. v7}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 3301
    .local v2, "newHelper":Landroid/os/DVFSHelper;
    const-string/jumbo v14, "CORE_NUM"

    .line 3302
    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v11

    goto/16 :goto_2

    .line 3303
    .local v2, "newHelper":Landroid/os/DVFSHelper;
    :cond_9
    const-string/jumbo v3, "timeout"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3304
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v15, Landroid/os/DVFSHelper;->mHintTimeout:I

    goto/16 :goto_2

    .line 3314
    .end local v2    # "newHelper":Landroid/os/DVFSHelper;
    :cond_a
    const-string/jumbo v3, "%"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 3315
    const-string/jumbo v3, "CPU"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3316
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

    .line 3317
    sget-boolean v3, Landroid/os/DVFSHelper;->sIsDebugLevelHigh:Z

    if-eqz v3, :cond_5

    .line 3318
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

    .line 3319
    const-string/jumbo v5, ", freq = "

    .line 3318
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3319
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

    .line 3318
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3321
    :cond_b
    const-string/jumbo v3, "GPU"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 3322
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

    .line 3323
    sget-boolean v3, Landroid/os/DVFSHelper;->sIsDebugLevelHigh:Z

    if-eqz v3, :cond_5

    .line 3324
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

    .line 3325
    const-string/jumbo v5, ", freq = "

    .line 3324
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3325
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

    .line 3324
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3327
    :cond_c
    const-string/jumbo v3, "BUS"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3328
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

    .line 3329
    sget-boolean v3, Landroid/os/DVFSHelper;->sIsDebugLevelHigh:Z

    if-eqz v3, :cond_5

    .line 3330
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

    .line 3331
    const-string/jumbo v5, ", freq = "

    .line 3330
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3331
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

    .line 3330
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3335
    :cond_d
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v14, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 3336
    sget-boolean v3, Landroid/os/DVFSHelper;->sIsDebugLevelHigh:Z

    if-eqz v3, :cond_5

    .line 3337
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

    .line 3338
    const-string/jumbo v5, ", freq = "

    .line 3337
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3338
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3337
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3344
    .end local v11    # "freqTable":[I
    .end local v12    # "key":Ljava/lang/String;
    .end local v14    # "moduleName":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/String;
    :cond_e
    const/4 v3, 0x1

    iput-boolean v3, v15, Landroid/os/DVFSHelper;->mIsHintValid:Z

    .line 3347
    .end local v9    # "bundle":Landroid/os/Bundle;
    .end local v13    # "key$iterator":Ljava/util/Iterator;
    :cond_f
    return-object v15
.end method

.method private createModel()Landroid/os/DVFSHelper$Model;
    .locals 2

    .prologue
    .line 2867
    const-string/jumbo v0, ""

    const-string/jumbo v1, "_gracel_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2868
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->DISPLAY_FHD:Z

    if-eqz v0, :cond_0

    .line 2869
    new-instance v0, Landroid/os/DVFSHelper$ModelGRLForFHD;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelGRLForFHD;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2870
    :cond_0
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->DISPLAY_HD:Z

    if-eqz v0, :cond_1

    .line 2871
    new-instance v0, Landroid/os/DVFSHelper$ModelGRLForHD;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelGRLForHD;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2873
    :cond_1
    new-instance v0, Landroid/os/DVFSHelper$ModelGRL;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelGRL;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2875
    :cond_2
    const-string/jumbo v0, ""

    const-string/jumbo v1, "_graceq_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2876
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->DISPLAY_FHD:Z

    if-eqz v0, :cond_3

    .line 2877
    new-instance v0, Landroid/os/DVFSHelper$ModelGRQForFHD;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelGRQForFHD;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2878
    :cond_3
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->DISPLAY_HD:Z

    if-eqz v0, :cond_4

    .line 2879
    new-instance v0, Landroid/os/DVFSHelper$ModelGRQForHD;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelGRQForHD;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2881
    :cond_4
    new-instance v0, Landroid/os/DVFSHelper$ModelGRQ;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelGRQ;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2883
    :cond_5
    const-string/jumbo v0, "hrq"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2884
    new-instance v0, Landroid/os/DVFSHelper$ModelHRQ;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelHRQ;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2885
    :cond_6
    const-string/jumbo v0, "hrl"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2886
    new-instance v0, Landroid/os/DVFSHelper$ModelHRL;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelHRL;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2887
    :cond_7
    const-string/jumbo v0, "zl"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2888
    new-instance v0, Landroid/os/DVFSHelper$ModelZL;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelZL;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2889
    :cond_8
    const-string/jumbo v0, "msm8992"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2890
    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8992;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8992;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2891
    :cond_9
    const-string/jumbo v0, "jf"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2892
    new-instance v0, Landroid/os/DVFSHelper$ModelJF;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJF;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2893
    :cond_a
    const-string/jumbo v0, "ja"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2894
    const-string/jumbo v0, ""

    const-string/jumbo v1, "ja_kor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2895
    new-instance v0, Landroid/os/DVFSHelper$ModelJAKOR;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJAKOR;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2897
    :cond_b
    new-instance v0, Landroid/os/DVFSHelper$ModelJA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJA;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2899
    :cond_c
    const-string/jumbo v0, "hf"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2900
    new-instance v0, Landroid/os/DVFSHelper$ModelHF;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelHF;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2901
    :cond_d
    const-string/jumbo v0, "ha"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2902
    const-string/jumbo v0, ""

    const-string/jumbo v1, "vienna"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2903
    new-instance v0, Landroid/os/DVFSHelper$ModelV13GWIFI;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelV13GWIFI;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2904
    :cond_e
    const-string/jumbo v0, ""

    const-string/jumbo v1, "v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2905
    new-instance v0, Landroid/os/DVFSHelper$ModelV23GWIFI;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelV23GWIFI;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2906
    :cond_f
    const-string/jumbo v0, ""

    const-string/jumbo v1, "picasso"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2907
    new-instance v0, Landroid/os/DVFSHelper$ModelPicasso3GWIFI;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelPicasso3GWIFI;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2909
    :cond_10
    new-instance v0, Landroid/os/DVFSHelper$ModelHA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelHA;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2911
    :cond_11
    const-string/jumbo v0, "kf"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2912
    new-instance v0, Landroid/os/DVFSHelper$ModelKF;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelKF;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2913
    :cond_12
    const-string/jumbo v0, "ka"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2914
    new-instance v0, Landroid/os/DVFSHelper$ModelKA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelKA;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2915
    :cond_13
    const-string/jumbo v0, "kq"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2916
    new-instance v0, Landroid/os/DVFSHelper$ModelKQ;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelKQ;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2917
    :cond_14
    const-string/jumbo v0, "tf"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2918
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->REGION_JPN:Z

    if-eqz v0, :cond_15

    .line 2919
    new-instance v0, Landroid/os/DVFSHelper$ModelTFJpn;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelTFJpn;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2921
    :cond_15
    new-instance v0, Landroid/os/DVFSHelper$ModelTF;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelTF;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2923
    :cond_16
    const-string/jumbo v0, "ta"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2924
    new-instance v0, Landroid/os/DVFSHelper$ModelTA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelTA;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2925
    :cond_17
    const-string/jumbo v0, "sf"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2926
    new-instance v0, Landroid/os/DVFSHelper$ModelSF;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelSF;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2927
    :cond_18
    const-string/jumbo v0, "sa"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2928
    const-string/jumbo v0, ""

    const-string/jumbo v1, "_a8e_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2929
    new-instance v0, Landroid/os/DVFSHelper$ModelA8E;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelA8E;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2931
    :cond_19
    new-instance v0, Landroid/os/DVFSHelper$ModelSA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelSA;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2933
    :cond_1a
    const-string/jumbo v0, "clovertrail"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2934
    new-instance v0, Landroid/os/DVFSHelper$ModelSantos10;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelSantos10;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2935
    :cond_1b
    const-string/jumbo v0, "java"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2936
    new-instance v0, Landroid/os/DVFSHelper$ModelJAVA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJAVA;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2937
    :cond_1c
    const-string/jumbo v0, "island"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2938
    const-string/jumbo v0, ""

    const-string/jumbo v1, "novel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2939
    new-instance v0, Landroid/os/DVFSHelper$ModelNOVEL;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelNOVEL;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2940
    :cond_1d
    const-string/jumbo v0, ""

    const-string/jumbo v1, "on5lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2941
    new-instance v0, Landroid/os/DVFSHelper$ModelON5;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelON5;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2943
    :cond_1e
    new-instance v0, Landroid/os/DVFSHelper$ModelISLAND;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelISLAND;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2945
    :cond_1f
    const-string/jumbo v0, "isla"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2946
    new-instance v0, Landroid/os/DVFSHelper$ModelISLA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelISLA;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2947
    :cond_20
    const-string/jumbo v0, "carmen2"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2948
    new-instance v0, Landroid/os/DVFSHelper$ModelCARMEN2;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelCARMEN2;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2949
    :cond_21
    const-string/jumbo v0, "islaquad"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2950
    new-instance v0, Landroid/os/DVFSHelper$ModelISLAQUAD;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelISLAQUAD;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2951
    :cond_22
    const-string/jumbo v0, "exynos7870"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2952
    new-instance v0, Landroid/os/DVFSHelper$ModelJOSHUA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJOSHUA;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2953
    :cond_23
    const-string/jumbo v0, "exynos4"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2954
    const-string/jumbo v0, "pp"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2955
    new-instance v0, Landroid/os/DVFSHelper$ModelPP;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelPP;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2956
    :cond_24
    const-string/jumbo v0, "m0"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2957
    new-instance v0, Landroid/os/DVFSHelper$ModelM0;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelM0;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2959
    :cond_25
    new-instance v0, Landroid/os/DVFSHelper$ModelExynos4;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelExynos4;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2961
    :cond_26
    const-string/jumbo v0, "kam"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2962
    new-instance v0, Landroid/os/DVFSHelper$ModelKAM;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelKAM;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2963
    :cond_27
    const-string/jumbo v0, ""

    const-string/jumbo v1, "d2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2964
    new-instance v0, Landroid/os/DVFSHelper$ModelD2;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelD2;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2965
    :cond_28
    const-string/jumbo v0, "hawaii"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2966
    new-instance v0, Landroid/os/DVFSHelper$ModelHawaii;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelHawaii;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2967
    :cond_29
    const-string/jumbo v0, "msm8226"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2968
    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8x26;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8x26;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2969
    :cond_2a
    const-string/jumbo v0, "pxa1936"

    sget-object v1, Landroid/os/DVFSHelper;->HARDWARE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2970
    new-instance v0, Landroid/os/DVFSHelper$ModelPXA1936;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelPXA1936;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2971
    :cond_2b
    const-string/jumbo v0, "pxa1088"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2972
    new-instance v0, Landroid/os/DVFSHelper$ModelPXA1088;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelPXA1088;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2973
    :cond_2c
    const-string/jumbo v0, "pxa1908"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2974
    new-instance v0, Landroid/os/DVFSHelper$ModelPXA1908;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelPXA1908;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2975
    :cond_2d
    const-string/jumbo v0, "kmini"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2976
    const-string/jumbo v0, ""

    const-string/jumbo v1, "degaslte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2977
    new-instance v0, Landroid/os/DVFSHelper$ModelDegasLTE;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelDegasLTE;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2979
    :cond_2e
    new-instance v0, Landroid/os/DVFSHelper$ModelKMINI;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelKMINI;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2980
    :cond_2f
    const-string/jumbo v0, "MSM8930AB"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2981
    new-instance v0, Landroid/os/DVFSHelper$Model8930AB;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$Model8930AB;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2982
    :cond_30
    const-string/jumbo v0, "msm8952"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2983
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

    .line 2984
    :cond_31
    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8976;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8976;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2986
    :cond_32
    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8952;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8952;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2988
    :cond_33
    const-string/jumbo v0, "msm8953"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2989
    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8953;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8953;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2990
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

    .line 2991
    :cond_35
    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8917;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8917;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2992
    :cond_36
    const-string/jumbo v0, "msm8916"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2993
    const-string/jumbo v0, ""

    const-string/jumbo v1, "a3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2994
    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8916_A3;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8916_A3;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2995
    :cond_37
    const-string/jumbo v0, "MSM8939"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2996
    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8939;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8939;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 2997
    :cond_38
    const-string/jumbo v0, "MSM8929"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2998
    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8929;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8929;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 3000
    :cond_39
    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8916;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8916;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 3002
    :cond_3a
    const-string/jumbo v0, "tr3ca"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 3003
    new-instance v0, Landroid/os/DVFSHelper$ModelTR3CA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelTR3CA;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 3004
    :cond_3b
    const-string/jumbo v0, "core33g"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 3005
    new-instance v0, Landroid/os/DVFSHelper$ModelCORE33G;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelCORE33G;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 3006
    :cond_3c
    const-string/jumbo v0, "vivalto3mve"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 3007
    new-instance v0, Landroid/os/DVFSHelper$ModelVIVALTO3MVE;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelVIVALTO3MVE;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 3008
    :cond_3d
    const-string/jumbo v0, "SC9830I"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 3009
    new-instance v0, Landroid/os/DVFSHelper$ModelJ210F;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJ210F;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0

    .line 3011
    :cond_3e
    new-instance v0, Landroid/os/DVFSHelper$ModelJBP;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    return-object v0
.end method

.method public static getStandbyTimeInUltraPowerSavingMode()I
    .locals 3

    .prologue
    .line 3178
    :try_start_0
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 3179
    const-string/jumbo v2, "CustomFrequencyManagerService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3180
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 3181
    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    sput-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    .line 3184
    :cond_0
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v2, :cond_1

    .line 3185
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2}, Landroid/os/ICustomFrequencyManager;->getStandbyTimeInUltraPowerSavingMode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 3187
    :catch_0
    move-exception v1

    .line 3188
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3190
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private isPackageExistInAppLaunch(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1673
    const/4 v0, 0x0

    .line 1674
    .local v0, "ret":Z
    iget-object v3, p0, Landroid/os/DVFSHelper;->mAppLaunchPackages:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 1675
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1676
    const/4 v0, 0x1

    .line 1680
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    return v0

    .line 1674
    .restart local v1    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1546
    sget-boolean v0, Landroid/os/DVFSHelper;->sIsDebugLevelHigh:Z

    if-eqz v0, :cond_0

    .line 1547
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    :cond_0
    return-void
.end method

.method public static onScrollEvent(Z)V
    .locals 5
    .param p0, "isScroll"    # Z

    .prologue
    .line 3020
    :try_start_0
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 3021
    const-string/jumbo v2, "CustomFrequencyManagerService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3022
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 3023
    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    sput-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    .line 3026
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v2, :cond_1

    .line 3027
    sget-object v3, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    const-string/jumbo v4, "TYPE_SCROLL"

    if-eqz p0, :cond_2

    const-string/jumbo v2, "TRUE"

    :goto_0
    invoke-interface {v3, v4, v2}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    .line 3018
    :cond_1
    :goto_1
    return-void

    .line 3027
    :cond_2
    const-string/jumbo v2, "FALSE"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3029
    :catch_0
    move-exception v1

    .line 3030
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static onSmoothScrollEvent(Z)V
    .locals 5
    .param p0, "isScroll"    # Z

    .prologue
    .line 3037
    :try_start_0
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 3038
    const-string/jumbo v2, "CustomFrequencyManagerService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3039
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 3040
    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    sput-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    .line 3043
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v2, :cond_1

    .line 3044
    sget-object v3, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    const-string/jumbo v4, "SMOOTH_SCROLL"

    if-eqz p0, :cond_2

    const-string/jumbo v2, "TRUE"

    :goto_0
    invoke-interface {v3, v4, v2}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    .line 3035
    :cond_1
    :goto_1
    return-void

    .line 3044
    :cond_2
    const-string/jumbo v2, "FALSE"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3046
    :catch_0
    move-exception v1

    .line 3047
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private releaseImpl()V
    .locals 4

    .prologue
    .line 1261
    iget-object v1, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v1, :cond_0

    .line 1262
    return-void

    .line 1265
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 1267
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
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

    .line 1269
    iget-boolean v1, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 1335
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1270
    return-void

    .line 1273
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_2

    .line 1274
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 1275
    const-string/jumbo v1, "DVFSHelper"

    const-string/jumbo v2, "release:: cpuRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 1278
    :cond_2
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_3

    .line 1279
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 1280
    const-string/jumbo v1, "DVFSHelper"

    const-string/jumbo v2, "release:: cpuNumRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 1283
    :cond_3
    iget-object v1, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_4

    .line 1284
    iget-object v1, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 1285
    const-string/jumbo v1, "DVFSHelper"

    const-string/jumbo v2, "release:: gpuRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 1288
    :cond_4
    iget-object v1, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_5

    .line 1289
    iget-object v1, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 1290
    const-string/jumbo v1, "DVFSHelper"

    const-string/jumbo v2, "release:: busRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 1293
    :cond_5
    iget-object v1, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_6

    .line 1294
    iget-object v1, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 1295
    const-string/jumbo v1, "DVFSHelper"

    const-string/jumbo v2, "release:: mmcRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 1298
    :cond_6
    iget-object v1, p0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_7

    .line 1299
    iget-object v1, p0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 1300
    const-string/jumbo v1, "DVFSHelper"

    const-string/jumbo v2, "release:: fpsRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 1303
    :cond_7
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_8

    .line 1304
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 1305
    const-string/jumbo v1, "DVFSHelper"

    const-string/jumbo v2, "release:: cpuDisCStateRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 1308
    :cond_8
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuLegacySchedulerRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_9

    .line 1309
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuLegacySchedulerRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 1310
    const-string/jumbo v1, "DVFSHelper"

    const-string/jumbo v2, "release:: cpuLegacySchedulerRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->cpuLegacySchedulerRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 1313
    :cond_9
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuHotplugDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_a

    .line 1314
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuHotplugDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 1315
    const-string/jumbo v1, "DVFSHelper"

    const-string/jumbo v2, "release:: cpuHotplugDisableRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->cpuHotplugDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 1318
    :cond_a
    iget-object v1, p0, Landroid/os/DVFSHelper;->pciePsmDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_b

    .line 1319
    iget-object v1, p0, Landroid/os/DVFSHelper;->pciePsmDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 1320
    const-string/jumbo v1, "DVFSHelper"

    const-string/jumbo v2, "release:: pciePsmDisableRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->pciePsmDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 1323
    :cond_b
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpusetRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_c

    .line 1324
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpusetRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 1325
    const-string/jumbo v1, "DVFSHelper"

    const-string/jumbo v2, "release:: cpusetRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->cpusetRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 1328
    :cond_c
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuctlRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_d

    .line 1329
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuctlRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 1330
    const-string/jumbo v1, "DVFSHelper"

    const-string/jumbo v2, "release:: cpuctlRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->cpuctlRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 1333
    :cond_d
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1335
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1260
    return-void

    .line 1334
    :catchall_0
    move-exception v1

    .line 1335
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1334
    throw v1
.end method

.method public static sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3203
    :try_start_0
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 3204
    const-string/jumbo v2, "CustomFrequencyManagerService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3205
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 3206
    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    sput-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    .line 3209
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v2, :cond_1

    .line 3210
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2, p0, p1}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3201
    :cond_1
    :goto_0
    return-void

    .line 3212
    :catch_0
    move-exception v1

    .line 3213
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private x([I)Ljava/lang/String;
    .locals 3
    .param p1, "e"    # [I

    .prologue
    .line 1684
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1685
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 1686
    aget v2, p1, v0

    xor-int/lit8 v2, v2, 0x7a

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1685
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1688
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public acquire()V
    .locals 2

    .prologue
    .line 842
    const-string/jumbo v0, "DVFSHelper"

    const-string/jumbo v1, "This API(DVFSHelper) is no longer supported from NOS version"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    return-void
.end method

.method public acquire(I)V
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 855
    const-string/jumbo v0, "DVFSHelper"

    const-string/jumbo v1, "This API(DVFSHelper) is no longer supported from NOS version"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    return-void
.end method

.method public acquire(Ljava/lang/String;)V
    .locals 2
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 824
    const-string/jumbo v0, "DVFSHelper"

    const-string/jumbo v1, "This API(DVFSHelper) is no longer supported from NOS version"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    return-void
.end method

.method public addExtraOption(Ljava/lang/String;J)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 1366
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 1367
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 1369
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

    .line 1365
    return-void
.end method

.method public addExtraOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1349
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 1350
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 1352
    :cond_0
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1348
    return-void
.end method

.method public addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V
    .locals 7
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0xe

    const/16 v5, 0x10

    const/16 v4, 0x13

    const/16 v3, 0xc

    .line 1390
    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v2, :cond_0

    .line 1391
    return-void

    .line 1395
    :cond_0
    const-string/jumbo v2, "ActivityManager_resume"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1396
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_2

    .line 1397
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAMSResumeCPUFreq()I

    move-result v1

    .line 1398
    .local v1, "freq":I
    if-lez v1, :cond_1

    .line 1399
    const-string/jumbo v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1389
    .end local v1    # "freq":I
    :cond_1
    :goto_0
    return-void

    .line 1401
    :cond_2
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v5, :cond_3

    .line 1402
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAMSResumeGPUFreq()I

    move-result v1

    .line 1403
    .restart local v1    # "freq":I
    if-lez v1, :cond_1

    .line 1404
    const-string/jumbo v2, "GPU"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 1406
    .end local v1    # "freq":I
    :cond_3
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v4, :cond_4

    .line 1407
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAMSResumeBUSFreq()I

    move-result v1

    .line 1408
    .restart local v1    # "freq":I
    if-lez v1, :cond_1

    .line 1409
    const-string/jumbo v2, "BUS"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 1411
    .end local v1    # "freq":I
    :cond_4
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v6, :cond_1

    .line 1412
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAMSResumeCPUCore()I

    move-result v0

    .line 1413
    .local v0, "coreNum":I
    if-lez v0, :cond_1

    .line 1414
    const-string/jumbo v2, "CORE_NUM"

    int-to-long v4, v0

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 1417
    .end local v0    # "coreNum":I
    :cond_5
    const-string/jumbo v2, "Gallery_touch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1418
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_6

    .line 1419
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getGalleryTouchCPUFreq()I

    move-result v1

    .line 1420
    .restart local v1    # "freq":I
    if-lez v1, :cond_1

    .line 1421
    const-string/jumbo v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 1423
    .end local v1    # "freq":I
    :cond_6
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v4, :cond_1

    .line 1424
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getGalleryTouchBUSFreq()I

    move-result v1

    .line 1425
    .restart local v1    # "freq":I
    if-lez v1, :cond_1

    .line 1426
    const-string/jumbo v2, "BUS"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 1429
    .end local v1    # "freq":I
    :cond_7
    const-string/jumbo v2, "Browser_touch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1430
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_8

    .line 1431
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getBrowserTouchCPUFreq()I

    move-result v1

    .line 1432
    .restart local v1    # "freq":I
    if-lez v1, :cond_1

    .line 1433
    const-string/jumbo v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1435
    .end local v1    # "freq":I
    :cond_8
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v4, :cond_1

    .line 1436
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getBrowserTouchBUSFreq()I

    move-result v1

    .line 1437
    .restart local v1    # "freq":I
    if-lez v1, :cond_1

    .line 1438
    const-string/jumbo v2, "BUS"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1441
    .end local v1    # "freq":I
    :cond_9
    const-string/jumbo v2, "Launcher_touch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1442
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_a

    .line 1443
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getLauncherTouchCPUFreq()I

    move-result v1

    .line 1444
    .restart local v1    # "freq":I
    if-lez v1, :cond_1

    .line 1445
    const-string/jumbo v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1447
    .end local v1    # "freq":I
    :cond_a
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v4, :cond_b

    .line 1448
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getLauncherTouchBUSFreq()I

    move-result v1

    .line 1449
    .restart local v1    # "freq":I
    if-lez v1, :cond_1

    .line 1450
    const-string/jumbo v2, "BUS"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1452
    .end local v1    # "freq":I
    :cond_b
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v5, :cond_c

    .line 1453
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getLauncherTouchGPUFreq()I

    move-result v1

    .line 1454
    .restart local v1    # "freq":I
    if-lez v1, :cond_1

    .line 1455
    const-string/jumbo v2, "GPU"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1457
    .end local v1    # "freq":I
    :cond_c
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v6, :cond_1

    .line 1458
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getLauncherTouchCPUCore()I

    move-result v0

    .line 1459
    .restart local v0    # "coreNum":I
    if-lez v0, :cond_1

    .line 1460
    const-string/jumbo v2, "CORE_NUM"

    int-to-long v4, v0

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1463
    .end local v0    # "coreNum":I
    :cond_d
    const-string/jumbo v2, "ListView_scroll"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1464
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_e

    .line 1465
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getListScrollCPUFreq()I

    move-result v1

    .line 1466
    .restart local v1    # "freq":I
    if-lez v1, :cond_1

    .line 1467
    const-string/jumbo v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1469
    .end local v1    # "freq":I
    :cond_e
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v5, :cond_f

    .line 1470
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getListScrollGPUFreq()I

    move-result v1

    .line 1471
    .restart local v1    # "freq":I
    if-lez v1, :cond_1

    .line 1472
    const-string/jumbo v2, "GPU"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1474
    .end local v1    # "freq":I
    :cond_f
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v4, :cond_1

    .line 1475
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getListScrollBUSFreq()I

    move-result v1

    .line 1476
    .restart local v1    # "freq":I
    if-lez v1, :cond_1

    .line 1477
    const-string/jumbo v2, "BUS"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1480
    .end local v1    # "freq":I
    :cond_10
    const-string/jumbo v2, "PhoneWindowManager_rotation"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1481
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getRotationCPUFreq()I

    move-result v1

    .line 1482
    .restart local v1    # "freq":I
    if-lez v1, :cond_1

    .line 1483
    const-string/jumbo v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1485
    .end local v1    # "freq":I
    :cond_11
    const-string/jumbo v2, "Launcher_homemenu"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1486
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v5, :cond_1

    .line 1487
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getLauncherTouchGPUFreq()I

    move-result v1

    .line 1488
    .restart local v1    # "freq":I
    if-lez v1, :cond_1

    .line 1489
    const-string/jumbo v2, "GPU"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1492
    .end local v1    # "freq":I
    :cond_12
    const-string/jumbo v2, "ShareMusic_groupPlay"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1493
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getShareMusicCPUFreq()I

    move-result v1

    .line 1494
    .restart local v1    # "freq":I
    if-lez v1, :cond_1

    .line 1495
    const-string/jumbo v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1497
    .end local v1    # "freq":I
    :cond_13
    const-string/jumbo v2, "Browser_fling"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1498
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getBrowserFlingCpuFreq()I

    move-result v1

    .line 1499
    .restart local v1    # "freq":I
    if-lez v1, :cond_1

    .line 1500
    const-string/jumbo v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1502
    .end local v1    # "freq":I
    :cond_14
    const-string/jumbo v2, "Application_launch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1503
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_15

    .line 1504
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAppLaunchCPUFreq()I

    move-result v1

    .line 1505
    .restart local v1    # "freq":I
    if-lez v1, :cond_1

    .line 1506
    const-string/jumbo v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1508
    .end local v1    # "freq":I
    :cond_15
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v5, :cond_16

    .line 1509
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAppLaunchGPUFreq()I

    move-result v1

    .line 1510
    .restart local v1    # "freq":I
    if-lez v1, :cond_1

    .line 1511
    const-string/jumbo v2, "GPU"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1513
    .end local v1    # "freq":I
    :cond_16
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v4, :cond_17

    .line 1514
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAppLaunchBUSFreq()I

    move-result v1

    .line 1515
    .restart local v1    # "freq":I
    if-lez v1, :cond_1

    .line 1516
    const-string/jumbo v2, "BUS"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1518
    .end local v1    # "freq":I
    :cond_17
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v6, :cond_1

    .line 1519
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAppLaunchCPUCore()I

    move-result v0

    .line 1520
    .restart local v0    # "coreNum":I
    if-lez v0, :cond_1

    .line 1521
    const-string/jumbo v2, "CORE_NUM"

    int-to-long v4, v0

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1524
    .end local v0    # "coreNum":I
    :cond_18
    const-string/jumbo v2, "Device_wakeup"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1525
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_1

    .line 1526
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getDeviceWakeupCPUFreq()I

    move-result v1

    .line 1527
    .restart local v1    # "freq":I
    if-lez v1, :cond_1

    .line 1528
    const-string/jumbo v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1531
    .end local v1    # "freq":I
    :cond_19
    const-string/jumbo v2, "Contact_scroll"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1532
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_1

    .line 1533
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getContactScrollCPUFreq()I

    move-result v1

    .line 1534
    .restart local v1    # "freq":I
    if-lez v1, :cond_1

    .line 1535
    const-string/jumbo v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0
.end method

.method public cancelExtraOptions()V
    .locals 1

    .prologue
    .line 1379
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 1378
    return-void
.end method

.method public getApproximateBUSFrequency(I)I
    .locals 5
    .param p1, "freq"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 716
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    if-eqz v2, :cond_0

    if-gez p1, :cond_1

    .line 717
    :cond_0
    return v4

    .line 719
    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    array-length v0, v2

    .line 720
    .local v0, "length":I
    if-gtz v0, :cond_2

    .line 721
    return v4

    .line 724
    :cond_2
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    aget v1, v2, v3

    .line 725
    .local v1, "realFreq":I
    :goto_0
    if-lez v0, :cond_3

    .line 726
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-lt v2, p1, :cond_4

    .line 727
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v2, v3

    .line 733
    :cond_3
    return v1

    .line 730
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getApproximateBUSFrequencyByPercentOfMaximum(D)I
    .locals 7
    .param p1, "percent"    # D

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 745
    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    cmpg-double v1, p1, v2

    if-gez v1, :cond_1

    .line 746
    :cond_0
    return v4

    .line 745
    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, p1, v2

    if-gtz v1, :cond_0

    .line 748
    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    array-length v0, v1

    .line 749
    .local v0, "length":I
    if-gtz v0, :cond_2

    .line 750
    return v4

    .line 753
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
    .param p1, "core"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 766
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    if-eqz v2, :cond_0

    if-gez p1, :cond_1

    .line 767
    :cond_0
    return v4

    .line 769
    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    array-length v0, v2

    .line 770
    .local v0, "length":I
    if-gtz v0, :cond_2

    .line 771
    return v4

    .line 774
    :cond_2
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    aget v1, v2, v3

    .line 775
    .local v1, "realCore":I
    :goto_0
    if-lez v0, :cond_3

    .line 776
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-lt v2, p1, :cond_4

    .line 777
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v2, v3

    .line 782
    :cond_3
    return v1

    .line 780
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getApproximateCPUCoreForSSRM(I)I
    .locals 5
    .param p1, "core"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 794
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNumForSSRM:[I

    if-eqz v2, :cond_0

    if-gez p1, :cond_1

    .line 795
    :cond_0
    return v4

    .line 797
    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNumForSSRM:[I

    array-length v0, v2

    .line 798
    .local v0, "length":I
    if-gtz v0, :cond_2

    .line 799
    return v4

    .line 802
    :cond_2
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNumForSSRM:[I

    aget v1, v2, v3

    .line 803
    .local v1, "realCore":I
    :goto_0
    if-lez v0, :cond_3

    .line 804
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNumForSSRM:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-lt v2, p1, :cond_4

    .line 805
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNumForSSRM:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v2, v3

    .line 811
    :cond_3
    return v1

    .line 808
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getApproximateCPUFrequency(I)I
    .locals 5
    .param p1, "freq"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 525
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-eqz v2, :cond_0

    if-gez p1, :cond_1

    .line 526
    :cond_0
    return v4

    .line 528
    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v0, v2

    .line 529
    .local v0, "length":I
    if-gtz v0, :cond_2

    .line 530
    return v4

    .line 533
    :cond_2
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    aget v1, v2, v3

    .line 534
    .local v1, "realFreq":I
    :goto_0
    if-lez v0, :cond_3

    .line 535
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-lt v2, p1, :cond_4

    .line 536
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v2, v3

    .line 542
    :cond_3
    return v1

    .line 539
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getApproximateCPUFrequencyByPercentOfMaximum(D)I
    .locals 7
    .param p1, "percent"    # D

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 555
    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    cmpg-double v1, p1, v2

    if-gez v1, :cond_1

    .line 556
    :cond_0
    return v4

    .line 555
    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, p1, v2

    if-gtz v1, :cond_0

    .line 558
    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v0, v1

    .line 559
    .local v0, "length":I
    if-gtz v0, :cond_2

    .line 560
    return v4

    .line 563
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
    .param p1, "percent"    # D

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 600
    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    if-nez v1, :cond_0

    .line 601
    return v2

    .line 603
    :cond_0
    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    array-length v0, v1

    .line 604
    .local v0, "length":I
    if-gtz v0, :cond_1

    .line 605
    return v2

    .line 608
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
    .param p1, "freq"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 576
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    if-eqz v2, :cond_0

    if-gez p1, :cond_1

    .line 577
    :cond_0
    return v4

    .line 579
    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    array-length v0, v2

    .line 580
    .local v0, "length":I
    if-gtz v0, :cond_2

    .line 581
    return v4

    .line 584
    :cond_2
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    aget v1, v2, v3

    .line 585
    .local v1, "realFreq":I
    :goto_0
    if-lez v0, :cond_3

    .line 586
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-lt v2, p1, :cond_4

    .line 587
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v2, v3

    .line 593
    :cond_3
    return v1

    .line 590
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getApproximateGPUFrequency(I)I
    .locals 5
    .param p1, "freq"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 649
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-eqz v2, :cond_0

    if-gez p1, :cond_1

    .line 650
    :cond_0
    return v4

    .line 652
    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    array-length v0, v2

    .line 653
    .local v0, "length":I
    if-gtz v0, :cond_2

    .line 654
    return v4

    .line 657
    :cond_2
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    aget v1, v2, v3

    .line 658
    .local v1, "realFreq":I
    :goto_0
    if-lez v0, :cond_3

    .line 659
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-lt v2, p1, :cond_4

    .line 660
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v2, v3

    .line 666
    :cond_3
    return v1

    .line 663
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getApproximateGPUFrequencyByPercentOfMaximum(D)I
    .locals 7
    .param p1, "percent"    # D

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 678
    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    cmpg-double v1, p1, v2

    if-gez v1, :cond_1

    .line 679
    :cond_0
    return v4

    .line 678
    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, p1, v2

    if-gtz v1, :cond_0

    .line 681
    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    array-length v0, v1

    .line 682
    .local v0, "length":I
    if-gtz v0, :cond_2

    .line 683
    return v4

    .line 686
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

    .prologue
    .line 704
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    return-object v0
.end method

.method public getSupportedCPUCoreNum()[I
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    return-object v0
.end method

.method public getSupportedCPUCoreNumForSSRM()[I
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNumForSSRM:[I

    return-object v0
.end method

.method public getSupportedCPUFrequency()[I
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    return-object v0
.end method

.method public getSupportedCPUFrequencyForSSRM()[I
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    return-object v0
.end method

.method public getSupportedGPUFrequency()[I
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    return-object v0
.end method

.method public getSupportedGPUFrequencyForSSRM()[I
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequencyForSSRM:[I

    return-object v0
.end method

.method public isAquired()Z
    .locals 1

    .prologue
    .line 3053
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    return v0
.end method

.method public isHintValid()Z
    .locals 1

    .prologue
    .line 3238
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->mIsHintValid:Z

    return v0
.end method

.method public isValidDVFSParam(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 386
    const/16 v0, 0xb

    if-le p1, v0, :cond_0

    const/16 v0, 0x1c

    if-ge p1, v0, :cond_0

    .line 387
    const/4 v0, 0x1

    return v0

    .line 389
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isValidDVFSParam(IJ)Z
    .locals 2
    .param p1, "type"    # I
    .param p2, "option"    # J

    .prologue
    .line 403
    invoke-virtual {p0, p1}, Landroid/os/DVFSHelper;->isValidDVFSParam(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 404
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 406
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResumeEvent(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/16 v3, 0x16

    .line 1905
    sget-object v0, Landroid/os/DVFSHelper;->mAMSCState:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    .line 1906
    new-instance v0, Landroid/os/DVFSHelper;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Landroid/os/DVFSHelper;->mAMSCState:Landroid/os/DVFSHelper;

    .line 1909
    :cond_0
    sget-object v0, Landroid/os/DVFSHelper;->mAMSCStateTail:Landroid/os/DVFSHelper;

    if-nez v0, :cond_1

    .line 1910
    new-instance v0, Landroid/os/DVFSHelper;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Landroid/os/DVFSHelper;->mAMSCStateTail:Landroid/os/DVFSHelper;

    .line 1914
    :cond_1
    packed-switch p3, :pswitch_data_0

    .line 1931
    :try_start_0
    const-string/jumbo v0, "DVFSHelper"

    const-string/jumbo v1, "onActivityResumeEvent:: type is not defined"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    :cond_2
    :goto_0
    return-void

    .line 1916
    :pswitch_0
    sget-object v0, Landroid/os/DVFSHelper;->mAMSCState:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2

    .line 1917
    sget-object v0, Landroid/os/DVFSHelper;->mAMSCState:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1934
    :catch_0
    move-exception v6

    .line 1935
    .local v6, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1921
    .end local v6    # "e":Ljava/lang/NullPointerException;
    :pswitch_1
    :try_start_1
    sget-object v0, Landroid/os/DVFSHelper;->mAMSCState:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2

    .line 1922
    sget-object v0, Landroid/os/DVFSHelper;->mAMSCState:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_0

    .line 1926
    :pswitch_2
    sget-object v0, Landroid/os/DVFSHelper;->mAMSCStateTail:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2

    .line 1927
    sget-object v0, Landroid/os/DVFSHelper;->mAMSCStateTail:Landroid/os/DVFSHelper;

    sget v1, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1914
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onAppLaunchEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0xfa0

    const/16 v7, 0x1f4

    const/16 v6, 0x7d0

    const-wide/16 v4, 0x0

    .line 1700
    if-nez p2, :cond_0

    .line 1701
    return-void

    .line 1706
    :cond_0
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_1

    .line 1707
    new-instance v0, Landroid/os/DVFSHelper;

    const-string/jumbo v2, "LAUNCHER_APP_BOOSTER_CPU"

    .line 1708
    const/16 v3, 0xc

    move-object v1, p1

    .line 1707
    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

    .line 1709
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    .line 1710
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    if-eqz v0, :cond_e

    .line 1711
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

    const-string/jumbo v1, "Application_launch"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 1719
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUCoreNumBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2

    .line 1720
    new-instance v0, Landroid/os/DVFSHelper;

    const-string/jumbo v2, "LAUNCHER_APP_BOOSTER_CORE"

    .line 1721
    const/16 v3, 0xe

    move-object v1, p1

    .line 1720
    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 1722
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    .line 1723
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    if-eqz v0, :cond_f

    .line 1724
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUCoreNumBooster:Landroid/os/DVFSHelper;

    const-string/jumbo v1, "Application_launch"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 1732
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_3

    .line 1733
    new-instance v0, Landroid/os/DVFSHelper;

    const-string/jumbo v2, "LAUNCHER_APP_BOOSTER_GPU"

    .line 1734
    const/16 v3, 0x10

    move-object v1, p1

    .line 1733
    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

    .line 1735
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mGPUFrequencyTable:[I

    .line 1736
    iget-object v0, p0, Landroid/os/DVFSHelper;->mGPUFrequencyTable:[I

    if-eqz v0, :cond_10

    .line 1737
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

    const-string/jumbo v1, "Application_launch"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 1745
    :cond_3
    :goto_2
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_4

    .line 1746
    new-instance v0, Landroid/os/DVFSHelper;

    const-string/jumbo v2, "LAUNCHER_APP_BOOSTER_BUS"

    .line 1747
    const/16 v3, 0x13

    move-object v1, p1

    .line 1746
    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

    .line 1748
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mBUSFrequencyTable:[I

    .line 1749
    iget-object v0, p0, Landroid/os/DVFSHelper;->mBUSFrequencyTable:[I

    if-eqz v0, :cond_11

    .line 1750
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

    const-string/jumbo v1, "Application_launch"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 1756
    :cond_4
    :goto_3
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCState:Landroid/os/DVFSHelper;

    if-nez v0, :cond_5

    .line 1757
    new-instance v0, Landroid/os/DVFSHelper;

    const-string/jumbo v2, "LAUNCHER_APP_BOOSTER_CSTATE"

    .line 1758
    const/16 v3, 0x16

    move-object v1, p1

    .line 1757
    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCState:Landroid/os/DVFSHelper;

    .line 1761
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

    .line 1762
    :cond_6
    iput v7, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    .line 1795
    :goto_4
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    if-eqz v0, :cond_7

    .line 1796
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

    iget v1, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 1798
    :cond_7
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    if-eqz v0, :cond_8

    .line 1799
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUCoreNumBooster:Landroid/os/DVFSHelper;

    iget v1, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 1801
    :cond_8
    iget-object v0, p0, Landroid/os/DVFSHelper;->mGPUFrequencyTable:[I

    if-eqz v0, :cond_a

    .line 1802
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

    .line 1803
    const-string/jumbo v0, "pxa1936"

    sget-object v1, Landroid/os/DVFSHelper;->HARDWARE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1802
    if-eqz v0, :cond_a

    .line 1804
    :cond_9
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

    iget v1, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 1807
    :cond_a
    iget-object v0, p0, Landroid/os/DVFSHelper;->mBUSFrequencyTable:[I

    if-eqz v0, :cond_c

    .line 1808
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

    .line 1809
    const-string/jumbo v0, "pxa1088"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1808
    if-nez v0, :cond_b

    .line 1809
    const-string/jumbo v0, "pxa1908"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1808
    if-nez v0, :cond_b

    .line 1810
    const-string/jumbo v0, "kmini"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1808
    if-nez v0, :cond_b

    .line 1810
    const-string/jumbo v0, "pxa1936"

    sget-object v1, Landroid/os/DVFSHelper;->HARDWARE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1808
    if-nez v0, :cond_b

    .line 1811
    const-string/jumbo v0, "MSM8976"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1808
    if-nez v0, :cond_b

    .line 1811
    const-string/jumbo v0, "MSM8953"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1808
    if-nez v0, :cond_b

    .line 1811
    const-string/jumbo v0, "APQ8076"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1808
    if-nez v0, :cond_b

    .line 1812
    const-string/jumbo v0, "MSM8937"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1808
    if-nez v0, :cond_b

    .line 1812
    const-string/jumbo v0, "MSM8917"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1808
    if-eqz v0, :cond_c

    .line 1813
    :cond_b
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

    iget v1, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 1816
    :cond_c
    iget-object v0, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v0}, Landroid/os/DVFSHelper$Model;->getPlusFreq()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NONE"

    if-eq v0, v1, :cond_d

    .line 1820
    :cond_d
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCState:Landroid/os/DVFSHelper;

    iget v1, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 1699
    return-void

    .line 1713
    :cond_e
    const-string/jumbo v0, "DVFSHelper"

    const-string/jumbo v1, "onAppLaunchEvent:: mCPUFrequencyTable is null"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1726
    :cond_f
    const-string/jumbo v0, "DVFSHelper"

    const-string/jumbo v1, "onAppLaunchEvent:: mCPUCoreTable is null"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1739
    :cond_10
    const-string/jumbo v0, "DVFSHelper"

    const-string/jumbo v1, "onAppLaunchEvent:: mGPUFrequencyTable is null"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1752
    :cond_11
    const-string/jumbo v0, "DVFSHelper"

    const-string/jumbo v1, "onAppLaunchEvent:: mBUSFrequencyTable is null"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1763
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

    .line 1764
    const-string/jumbo v0, "kf"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1763
    if-nez v0, :cond_13

    .line 1764
    const-string/jumbo v0, "ka"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1763
    if-nez v0, :cond_13

    .line 1764
    const-string/jumbo v0, "kq"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1763
    if-nez v0, :cond_13

    .line 1765
    const-string/jumbo v0, "tf"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1763
    if-nez v0, :cond_13

    .line 1765
    const-string/jumbo v0, "ta"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1763
    if-nez v0, :cond_13

    .line 1765
    const-string/jumbo v0, "sf"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1763
    if-nez v0, :cond_13

    .line 1766
    const-string/jumbo v0, "sa"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1763
    if-nez v0, :cond_13

    .line 1766
    const-string/jumbo v0, "zq"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1763
    if-nez v0, :cond_13

    .line 1766
    const-string/jumbo v0, "tr3ca"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1763
    if-eqz v0, :cond_1a

    .line 1767
    :cond_13
    const-string/jumbo v0, "com.sec.android.app.camera"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1768
    iput v6, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    goto/16 :goto_4

    .line 1769
    :cond_14
    invoke-direct {p0, p2}, Landroid/os/DVFSHelper;->isPackageExistInAppLaunch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1770
    iput v8, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    goto/16 :goto_4

    .line 1772
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

    .line 1773
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

    .line 1774
    :cond_17
    iput v6, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    goto/16 :goto_4

    .line 1776
    :cond_18
    iput v7, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    goto/16 :goto_4

    .line 1779
    :cond_19
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    goto/16 :goto_4

    .line 1782
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

    .line 1783
    const-string/jumbo v0, "isla"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1782
    if-nez v0, :cond_1b

    .line 1783
    const-string/jumbo v0, "carmen2"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1782
    if-nez v0, :cond_1b

    .line 1783
    const-string/jumbo v0, "islaquad"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1782
    if-nez v0, :cond_1b

    .line 1784
    sget-object v0, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    const-string/jumbo v1, "mrvl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1782
    if-nez v0, :cond_1b

    .line 1784
    sget-object v0, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    const-string/jumbo v1, "sc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1782
    if-nez v0, :cond_1b

    .line 1785
    const-string/jumbo v0, "msm8992"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1782
    if-eqz v0, :cond_1d

    .line 1786
    :cond_1b
    invoke-direct {p0, p2}, Landroid/os/DVFSHelper;->isPackageExistInAppLaunch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1787
    iput v8, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    goto/16 :goto_4

    .line 1789
    :cond_1c
    iput v6, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    goto/16 :goto_4

    .line 1792
    :cond_1d
    iput v6, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    goto/16 :goto_4
.end method

.method public onWindowRotationEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x7d0

    const/4 v8, 0x0

    .line 1835
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    if-nez v3, :cond_0

    .line 1836
    new-instance v3, Landroid/os/DVFSHelper;

    const/16 v4, 0xe

    invoke-direct {v3, p1, v4}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 1837
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v1

    .line 1838
    .local v1, "coreTable":[I
    if-eqz v1, :cond_a

    .line 1839
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    const-string/jumbo v4, "CORE_NUM"

    aget v5, v1, v8

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1844
    .end local v1    # "coreTable":[I
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    if-eqz v3, :cond_1

    .line 1845
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    const/16 v4, 0x1f4

    invoke-virtual {v3, v4}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 1848
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

    .line 1849
    const-string/jumbo v3, "hf"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "tablet"

    sget-object v4, Landroid/os/DVFSHelper;->DEVICE_TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1848
    if-nez v3, :cond_3

    .line 1850
    :cond_2
    const-string/jumbo v3, "pxa1088"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1848
    if-nez v3, :cond_3

    .line 1850
    const-string/jumbo v3, "pxa1908"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1848
    if-nez v3, :cond_3

    .line 1851
    const-string/jumbo v3, "msm8226"

    sget-object v4, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1848
    if-nez v3, :cond_3

    .line 1851
    const-string/jumbo v3, "pxa1936"

    sget-object v4, Landroid/os/DVFSHelper;->HARDWARE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1848
    if-eqz v3, :cond_6

    .line 1852
    :cond_3
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    if-nez v3, :cond_5

    .line 1853
    new-instance v3, Landroid/os/DVFSHelper;

    const/16 v4, 0x10

    invoke-direct {v3, p1, v4}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    .line 1854
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v2

    .line 1855
    .local v2, "gpuTable":[I
    if-eqz v2, :cond_e

    .line 1856
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

    .line 1857
    :cond_4
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    const-string/jumbo v4, "GPU"

    array-length v5, v2

    add-int/lit8 v5, v5, -0x2

    aget v5, v2, v5

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1868
    .end local v2    # "gpuTable":[I
    :cond_5
    :goto_1
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    if-eqz v3, :cond_6

    .line 1869
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3, v9}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 1873
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

    .line 1874
    const-string/jumbo v3, "pxa1936"

    sget-object v4, Landroid/os/DVFSHelper;->HARDWARE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1873
    if-eqz v3, :cond_9

    .line 1875
    :cond_7
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    if-nez v3, :cond_8

    .line 1876
    new-instance v3, Landroid/os/DVFSHelper;

    const/16 v4, 0x13

    invoke-direct {v3, p1, v4}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    .line 1877
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v0

    .line 1878
    .local v0, "busTable":[I
    if-eqz v0, :cond_f

    .line 1879
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    const-string/jumbo v4, "BUS"

    aget v5, v0, v8

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1884
    .end local v0    # "busTable":[I
    :cond_8
    :goto_2
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    if-eqz v3, :cond_9

    .line 1885
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3, v9}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 1834
    :cond_9
    return-void

    .line 1841
    .restart local v1    # "coreTable":[I
    :cond_a
    const-string/jumbo v3, "DVFSHelper"

    const-string/jumbo v4, "onWindowRotationEvent:: coreTable is null"

    invoke-static {v3, v4}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1858
    .end local v1    # "coreTable":[I
    .restart local v2    # "gpuTable":[I
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

    .line 1859
    const-string/jumbo v3, "msm8226"

    sget-object v4, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1858
    if-nez v3, :cond_c

    .line 1859
    const-string/jumbo v3, "pxa1936"

    sget-object v4, Landroid/os/DVFSHelper;->HARDWARE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1858
    if-eqz v3, :cond_d

    .line 1860
    :cond_c
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    const-string/jumbo v4, "GPU"

    aget v5, v2, v8

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 1862
    :cond_d
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    const-string/jumbo v4, "GPU"

    const/4 v5, 0x1

    aget v5, v2, v5

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 1865
    :cond_e
    const-string/jumbo v3, "DVFSHelper"

    const-string/jumbo v4, "onWindowRotationEvent:: gpuTable is null"

    invoke-static {v3, v4}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1881
    .end local v2    # "gpuTable":[I
    .restart local v0    # "busTable":[I
    :cond_f
    const-string/jumbo v3, "DVFSHelper"

    const-string/jumbo v4, "onWindowRotationEvent:: busTable is null"

    invoke-static {v3, v4}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public release()V
    .locals 3

    .prologue
    .line 1251
    iget-boolean v2, p0, Landroid/os/DVFSHelper;->mIsHintNotifier:Z

    if-eqz v2, :cond_0

    .line 1252
    iget-object v2, p0, Landroid/os/DVFSHelper;->mHintList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "helper$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DVFSHelper;

    .line 1253
    .local v0, "helper":Landroid/os/DVFSHelper;
    invoke-direct {v0}, Landroid/os/DVFSHelper;->releaseImpl()V

    goto :goto_0

    .line 1256
    .end local v0    # "helper":Landroid/os/DVFSHelper;
    .end local v1    # "helper$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-direct {p0}, Landroid/os/DVFSHelper;->releaseImpl()V

    .line 1250
    :cond_1
    return-void
.end method

.method public setFrequency(J)Landroid/os/DVFSHelper;
    .locals 1
    .param p1, "freq"    # J

    .prologue
    .line 3122
    iget v0, p0, Landroid/os/DVFSHelper;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 3140
    :goto_0
    :pswitch_0
    return-object p0

    .line 3125
    :pswitch_1
    const-string/jumbo v0, "CPU"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 3129
    :pswitch_2
    const-string/jumbo v0, "GPU"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 3133
    :pswitch_3
    const-string/jumbo v0, "CORE_NUM"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 3137
    :pswitch_4
    const-string/jumbo v0, "BUS"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 3122
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
    .param p1, "percent"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 3147
    iget v0, p0, Landroid/os/DVFSHelper;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 3165
    :goto_0
    :pswitch_0
    return-object p0

    .line 3150
    :pswitch_1
    const-string/jumbo v0, "CPU"

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 3154
    :pswitch_2
    const-string/jumbo v0, "GPU"

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 3158
    :pswitch_3
    const-string/jumbo v0, "CORE_NUM"

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 3162
    :pswitch_4
    const-string/jumbo v0, "BUS"

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 3147
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
