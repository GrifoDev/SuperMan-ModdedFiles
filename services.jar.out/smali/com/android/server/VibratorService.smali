.class public Lcom/android/server/VibratorService;
.super Landroid/os/IVibratorService$Stub;
.source "VibratorService.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VibratorService$1;,
        Lcom/android/server/VibratorService$2;,
        Lcom/android/server/VibratorService$SecSettingsObserver;,
        Lcom/android/server/VibratorService$SettingsObserver;,
        Lcom/android/server/VibratorService$VibrateThread;,
        Lcom/android/server/VibratorService$Vibration;,
        Lcom/android/server/VibratorService$VibrationInfo;
    }
.end annotation


# static fields
.field private static final synthetic -android-os-Vibrator$SemMagnitudeTypesSwitchesValues:[I = null

.field private static final DEBUG:Z = false

.field private static final HAPTIC_ENGINE_DATA_UNIT_SIZE:I = 0x3

.field private static HAS_DUAL_MOTORS:I = 0x0

.field private static LEVEL_TO_FORCE_MAGNITUDE:[I = null

.field private static LEVEL_TO_MAGNITUDE:[I = null

.field private static LEVEL_TO_TOUCH_MAGNITUDE:[I = null

.field private static final MONTH_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final SAFE_DEBUG:Z

.field private static final SET_FREQUNCY_PARAM_PATH:Ljava/lang/String; = "/dev/block/param"

.field private static final SYSTEM_UI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "VibratorService"

.field private static final TYPE_MAGNITUDE_FEEDBACK:I = 0x0

.field private static final TYPE_MAGNITUDE_FORCE:I = 0x3

.field private static final TYPE_MAGNITUDE_NOTIFICATION:I = 0x2

.field private static final TYPE_MAGNITUDE_RECVCALL:I = 0x1

.field private static USE_SET_MAX_MAGNITUE:Z = false

.field private static final VIB_DEBUG:Z = true

.field private static mIsEnableIntensity:Z

.field private static mIsHapticSupported:Z

.field private static final mTypeURIs:[Ljava/lang/String;

.field private static mVibePatternHash:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

.field private mCallMagnitude:I

.field private mCallMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

.field private mCheckExecutable:I

.field private mCheckExecutablePkg:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurVibUid:I

.field private mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

.field private mDefaultMagnitude:I

.field private mForceMagnitude:I

.field private mForceMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

.field private final mH:Landroid/os/Handler;

.field private mHMTMount:Z

.field private mHMTMountCount:I

.field private mHasVibrator:Z

.field private mIm:Landroid/hardware/input/InputManager;

.field private mInputDeviceListenerRegistered:Z

.field private final mInputDeviceVibrators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Vibrator;",
            ">;"
        }
    .end annotation
.end field

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsFrequencySupported:Z

.field private mIsHapticEngineSupported:Z

.field private mLastEndWakeLock:Ljava/lang/String;

.field private mLastStartWakeLock:Ljava/lang/String;

.field private mLowPowerMode:Z

.field private mMaxMagnitudeValue:I

.field private mMinMagnitudeValue:I

.field private mMotorType:I

.field private mNotiMagnitude:I

.field private mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPreviousNoTouchVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/VibratorService$VibrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/VibratorService$VibrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousVibrationsLimit:I

.field private mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

.field private mTempMagnitude:I

.field private mTempToken:Landroid/os/IBinder;

.field volatile mThread:Lcom/android/server/VibratorService$VibrateThread;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mTouchMagnitude:I

.field private mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

.field private final mVibeConstantsPatternA:Ljava/lang/String;

.field private final mVibeConstantsPatternB:Ljava/lang/String;

.field private final mVibeConstantsPatternC:Ljava/lang/String;

.field private final mVibeConstantsPatternD:Ljava/lang/String;

.field private final mVibeConstantsPatternE:Ljava/lang/String;

.field private final mVibeConstantsPatternF:Ljava/lang/String;

.field private final mVibeConstantsPatternG:Ljava/lang/String;

.field private final mVibeConstantsPatternH:Ljava/lang/String;

.field private final mVibeConstantsPatternI:Ljava/lang/String;

.field private final mVibeConstantsPatternJ:Ljava/lang/String;

.field private final mVibeConstantsPatternK:Ljava/lang/String;

.field private final mVibeConstantsPatternL:Ljava/lang/String;

.field private final mVibeConstantsPatternM:Ljava/lang/String;

.field private final mVibeConstantsPatternN:Ljava/lang/String;

.field private final mVibeConstantsPatternO:Ljava/lang/String;

.field private final mVibeConstantsPatternP:Ljava/lang/String;

.field private final mVibeConstantsPatternQ:Ljava/lang/String;

.field private mVibeEngineA:[I

.field private mVibeEngineB:[I

.field private mVibeEngineC:[I

.field private mVibeEngineD:[I

.field private mVibeEngineE:[I

.field private mVibeEngineF:[I

.field private mVibeEngineG:[I

.field private mVibeEngineH:[I

.field private mVibeEngineI:[I

.field private mVibeEngineJ:[I

.field private mVibeEngineK:[I

.field private mVibeEngineL:[I

.field private mVibeEngineM:[I

.field private mVibeEngineN:[I

.field private mVibeEngineO:[I

.field private mVibeEngineP:[I

.field private mVibeEngineQ:[I

.field private mVibeFrequencyAlert:I

.field private mVibeFrequencyF0:I

.field private mVibeFrequencyHigh:I

.field private mVibeFrequencyLow:I

.field private mVibeFrequencyMid:I

.field private mVibePatternA:[J

.field private mVibePatternB:[J

.field private mVibePatternC:[J

.field private mVibePatternD:[J

.field private mVibePatternE:[J

.field private mVibePatternF:[J

.field private mVibePatternG:[J

.field private mVibePatternH:[J

.field private mVibePatternI:[J

.field private mVibePatternJ:[J

.field private mVibePatternK:[J

.field private mVibePatternL:[J

.field private mVibePatternM:[J

.field private mVibePatternMaxLength:I

.field private mVibePatternN:[J

.field private mVibePatternO:[J

.field private mVibePatternP:[J

.field private mVibePatternQ:[J

.field private mVibrateInputDevicesSetting:Z

.field private final mVibrationRunnable:Ljava/lang/Runnable;

.field private final mVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/VibratorService$Vibration;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0()[I
    .locals 1

    sget-object v0, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    return-object v0
.end method

.method static synthetic -get1()[I
    .locals 1

    sget-object v0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/VibratorService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic -get12()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/VibratorService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/VibratorService;->mVibeFrequencyAlert:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get2()[I
    .locals 1

    sget-object v0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    return-object v0
.end method

.method static synthetic -get3()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    return v0
.end method

.method static synthetic -get4()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/VibratorService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    return v0
.end method

.method static synthetic -get8()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/VibratorService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    return v0
.end method

.method private static synthetic -getandroid-os-Vibrator$SemMagnitudeTypesSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/VibratorService;->-android-os-Vibrator$SemMagnitudeTypesSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/VibratorService;->-android-os-Vibrator$SemMagnitudeTypesSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Vibrator$SemMagnitudeTypes;->values()[Landroid/os/Vibrator$SemMagnitudeTypes;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_CALL:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v1}, Landroid/os/Vibrator$SemMagnitudeTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_EXTRA:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v1}, Landroid/os/Vibrator$SemMagnitudeTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_FORCE:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v1}, Landroid/os/Vibrator$SemMagnitudeTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v1}, Landroid/os/Vibrator$SemMagnitudeTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MIN:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v1}, Landroid/os/Vibrator$SemMagnitudeTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_NOTIFICATION:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v1}, Landroid/os/Vibrator$SemMagnitudeTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v1}, Landroid/os/Vibrator$SemMagnitudeTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/android/server/VibratorService;->-android-os-Vibrator$SemMagnitudeTypesSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/server/VibratorService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/VibratorService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/VibratorService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/VibratorService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/VibratorService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/VibratorService;->mLastEndWakeLock:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/server/VibratorService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/VibratorService;->mLastStartWakeLock:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/server/VibratorService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/VibratorService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/VibratorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/VibratorService;JII[IIII)V
    .locals 1

    invoke-direct/range {p0 .. p8}, Lcom/android/server/VibratorService;->doVibratorOn(JII[IIII)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/VibratorService;JIIII)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/android/server/VibratorService;->doVibratorOn(JIIII)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/VibratorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/VibratorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "VIB_FEEDBACK_MAGNITUDE"

    aput-object v1, v0, v3

    const-string/jumbo v1, "VIB_RECVCALL_MAGNITUDE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "SEM_VIBRATION_NOTIFICATION_INTENSITY"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "SEM_VIBRATION_FORCE_TOUCH_INTENSITY"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    sput v3, Lcom/android/server/VibratorService;->HAS_DUAL_MOTORS:I

    sput-boolean v3, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    sput-boolean v3, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    const-string/jumbo v0, "Max"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Framework_ConfigVibService"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/server/VibratorService;->mVibePatternHash:Ljava/util/Hashtable;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/VibratorService;->MONTH_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 14

    const/4 v13, -0x2

    const/4 v12, 0x2

    const/16 v8, 0x270f

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-direct {p0}, Landroid/os/IVibratorService$Stub;-><init>()V

    iput-boolean v10, p0, Lcom/android/server/VibratorService;->mHasVibrator:Z

    const-string/jumbo v7, "A"

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternA:Ljava/lang/String;

    const-string/jumbo v7, "B"

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternB:Ljava/lang/String;

    const-string/jumbo v7, "C"

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternC:Ljava/lang/String;

    const-string/jumbo v7, "D"

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternD:Ljava/lang/String;

    const-string/jumbo v7, "E"

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternE:Ljava/lang/String;

    const-string/jumbo v7, "F"

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternF:Ljava/lang/String;

    const-string/jumbo v7, "G"

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternG:Ljava/lang/String;

    const-string/jumbo v7, "H"

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternH:Ljava/lang/String;

    const-string/jumbo v7, "I"

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternI:Ljava/lang/String;

    const-string/jumbo v7, "J"

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternJ:Ljava/lang/String;

    const-string/jumbo v7, "K"

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternK:Ljava/lang/String;

    const-string/jumbo v7, "L"

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternL:Ljava/lang/String;

    const-string/jumbo v7, "M"

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternM:Ljava/lang/String;

    const-string/jumbo v7, "N"

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternN:Ljava/lang/String;

    const-string/jumbo v7, "O"

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternO:Ljava/lang/String;

    const-string/jumbo v7, "P"

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternP:Ljava/lang/String;

    const-string/jumbo v7, "Q"

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternQ:Ljava/lang/String;

    iput v10, p0, Lcom/android/server/VibratorService;->mVibeFrequencyAlert:I

    iput v11, p0, Lcom/android/server/VibratorService;->mVibeFrequencyLow:I

    iput v12, p0, Lcom/android/server/VibratorService;->mVibeFrequencyMid:I

    const/4 v7, 0x3

    iput v7, p0, Lcom/android/server/VibratorService;->mVibeFrequencyHigh:I

    const/4 v7, 0x4

    iput v7, p0, Lcom/android/server/VibratorService;->mVibeFrequencyF0:I

    const/4 v7, -0x1

    iput v7, p0, Lcom/android/server/VibratorService;->mVibePatternMaxLength:I

    iput v8, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    iput v8, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    iput v8, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    iput v8, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    iput v8, p0, Lcom/android/server/VibratorService;->mMaxMagnitudeValue:I

    iput v8, p0, Lcom/android/server/VibratorService;->mMinMagnitudeValue:I

    iput v8, p0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    const/4 v7, -0x1

    iput v7, p0, Lcom/android/server/VibratorService;->mMotorType:I

    iput-boolean v10, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    iput-boolean v10, p0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    iput v10, p0, Lcom/android/server/VibratorService;->mCheckExecutable:I

    const-string/jumbo v7, ""

    iput-object v7, p0, Lcom/android/server/VibratorService;->mCheckExecutablePkg:Ljava/lang/String;

    iput-boolean v10, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    iput v10, p0, Lcom/android/server/VibratorService;->mHMTMountCount:I

    new-instance v7, Landroid/os/WorkSource;

    invoke-direct {v7}, Landroid/os/WorkSource;-><init>()V

    iput-object v7, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v7, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    const/4 v7, -0x1

    iput v7, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    new-instance v7, Lcom/android/server/VibratorService$1;

    invoke-direct {v7, p0}, Lcom/android/server/VibratorService$1;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    new-instance v7, Lcom/android/server/VibratorService$2;

    invoke-direct {v7, p0}, Lcom/android/server/VibratorService$2;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v7, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v7, -0x1

    iput v7, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    invoke-static {}, Lcom/android/server/VibratorService;->vibratorInit()V

    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    iput-object p1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "power"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    const-string/jumbo v7, "VibratorService"

    invoke-virtual {v3, v11, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v7, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7, v11}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string/jumbo v7, "appops"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const-string/jumbo v7, "batterystats"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    iget-object v7, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e009b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Lcom/android/server/VibratorService;->mPreviousNoTouchVibrations:Ljava/util/LinkedList;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v7, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v7, "A"

    const v8, 0x1070014

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternA:[J

    const-string/jumbo v7, "B"

    const v8, 0x1070015

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternB:[J

    const-string/jumbo v7, "C"

    const v8, 0x1070016

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternC:[J

    const-string/jumbo v7, "D"

    const v8, 0x1070017

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternD:[J

    const-string/jumbo v7, "E"

    const v8, 0x1070018

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternE:[J

    const-string/jumbo v7, "F"

    const v8, 0x1070019

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternF:[J

    const-string/jumbo v7, "G"

    const v8, 0x107001a

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternG:[J

    const-string/jumbo v7, "H"

    const v8, 0x107001b

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternH:[J

    const-string/jumbo v7, "I"

    const v8, 0x107001c

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternI:[J

    const-string/jumbo v7, "J"

    const v8, 0x107001d

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternJ:[J

    const-string/jumbo v7, "K"

    const v8, 0x107001e

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternK:[J

    const-string/jumbo v7, "L"

    const v8, 0x107001f

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternL:[J

    const-string/jumbo v7, "M"

    const v8, 0x1070020

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternM:[J

    const-string/jumbo v7, "N"

    const v8, 0x1070021

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternN:[J

    const-string/jumbo v7, "O"

    const v8, 0x1070022

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternO:[J

    const-string/jumbo v7, "P"

    const v8, 0x1070023

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternP:[J

    const-string/jumbo v7, "Q"

    const v8, 0x1070024

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternQ:[J

    const v7, 0x1070014

    invoke-direct {p0, v4, v7}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeEngineA:[I

    const v7, 0x1070015

    invoke-direct {p0, v4, v7}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeEngineB:[I

    const v7, 0x1070016

    invoke-direct {p0, v4, v7}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeEngineC:[I

    const v7, 0x1070017

    invoke-direct {p0, v4, v7}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeEngineD:[I

    const v7, 0x1070018

    invoke-direct {p0, v4, v7}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeEngineE:[I

    const v7, 0x1070019

    invoke-direct {p0, v4, v7}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeEngineF:[I

    const v7, 0x107001a

    invoke-direct {p0, v4, v7}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeEngineG:[I

    const v7, 0x107001b

    invoke-direct {p0, v4, v7}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeEngineH:[I

    const v7, 0x107001c

    invoke-direct {p0, v4, v7}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeEngineI:[I

    const v7, 0x107001d

    invoke-direct {p0, v4, v7}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeEngineJ:[I

    const v7, 0x107001e

    invoke-direct {p0, v4, v7}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeEngineK:[I

    const v7, 0x107001f

    invoke-direct {p0, v4, v7}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeEngineL:[I

    const v7, 0x1070020

    invoke-direct {p0, v4, v7}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeEngineM:[I

    const v7, 0x1070021

    invoke-direct {p0, v4, v7}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeEngineN:[I

    const v7, 0x1070022

    invoke-direct {p0, v4, v7}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeEngineO:[I

    const v7, 0x1070023

    invoke-direct {p0, v4, v7}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeEngineP:[I

    const v7, 0x1070024

    invoke-direct {p0, v4, v7}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeEngineQ:[I

    invoke-static {}, Lcom/android/server/VibratorService;->getVibratorMotorType()I

    move-result v7

    iput v7, p0, Lcom/android/server/VibratorService;->mMotorType:I

    sget-boolean v7, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "VibratorService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mMType : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/VibratorService;->mMotorType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorFrequencyExist()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    sget-boolean v7, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v7, :cond_1

    const-string/jumbo v7, "VibratorService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "f : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorEngineExist()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    sget-boolean v7, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v7, :cond_2

    const-string/jumbo v7, "VibratorService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "e : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v7, p0, Lcom/android/server/VibratorService;->mMotorType:I

    packed-switch v7, :pswitch_data_0

    sput-boolean v10, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    sput-boolean v10, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    :goto_0
    sget-boolean v7, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    if-eqz v7, :cond_c

    sget-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    array-length v7, v7

    add-int/lit8 v2, v7, -0x1

    sget-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    array-length v7, v7

    add-int/lit8 v6, v7, -0x1

    if-lt v2, v12, :cond_3

    if-ge v6, v12, :cond_5

    :cond_3
    const-string/jumbo v7, "VibratorService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "magnitudeMaxLevel : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", touchMagnitudeMaxLevel : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    iget-boolean v7, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070027

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    sput-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    iget-object v7, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070028

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    sput-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    :goto_1
    sput-boolean v11, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    sput-boolean v11, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070025

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    sput-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    iget-object v7, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070026

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    sput-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    goto :goto_1

    :pswitch_1
    iget-object v7, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107002a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    sput-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    iget-object v7, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107002a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    sput-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    sput-boolean v11, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    sput-boolean v10, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    goto/16 :goto_0

    :cond_5
    sget-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    aget v7, v7, v6

    iput v7, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    sget-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v7, v7, v2

    iput v7, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    sget-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v7, v7, v2

    iput v7, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    sget-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v7, v7, v2

    iput v7, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    sget-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v7, v7, v2

    iput v7, p0, Lcom/android/server/VibratorService;->mMaxMagnitudeValue:I

    sget-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v7, v7, v11

    iput v7, p0, Lcom/android/server/VibratorService;->mMinMagnitudeValue:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v7, Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-direct {v7, p0, v10}, Lcom/android/server/VibratorService$SecSettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v7, p0, Lcom/android/server/VibratorService;->mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    new-instance v7, Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-direct {v7, p0, v11}, Lcom/android/server/VibratorService$SecSettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v7, p0, Lcom/android/server/VibratorService;->mCallMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    new-instance v7, Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-direct {v7, p0, v12}, Lcom/android/server/VibratorService$SecSettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v7, p0, Lcom/android/server/VibratorService;->mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    iget-object v7, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    aget-object v8, v8, v10

    invoke-static {v7, v8, v6, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-le v1, v6, :cond_6

    :goto_2
    iput v1, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    iget-object v7, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    aget-object v8, v8, v11

    invoke-static {v7, v8, v2, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-le v1, v2, :cond_7

    :goto_3
    iput v1, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    iget-object v7, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    aget-object v8, v8, v12

    invoke-static {v7, v8, v2, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-le v1, v2, :cond_8

    move v7, v1

    :goto_4
    iput v7, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    iget-boolean v7, p0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070029

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    sput-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    new-instance v7, Lcom/android/server/VibratorService$SecSettingsObserver;

    const/4 v8, 0x3

    invoke-direct {v7, p0, v8}, Lcom/android/server/VibratorService$SecSettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v7, p0, Lcom/android/server/VibratorService;->mForceMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    sget-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    array-length v7, v7

    add-int/lit8 v5, v7, -0x1

    sget-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    aget v7, v7, v5

    iput v7, p0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    if-ge v5, v12, :cond_9

    const-string/jumbo v7, "VibratorService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "touchForceMagnitudeMaxLevel : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    sget-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    aget v1, v7, v1

    goto :goto_2

    :cond_7
    sget-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v1, v7, v1

    goto :goto_3

    :cond_8
    sget-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v7, v7, v1

    goto :goto_4

    :cond_9
    iget-object v7, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    invoke-static {v7, v8, v5, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-le v1, v5, :cond_d

    move v7, v1

    :goto_5
    iput v7, p0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    :cond_a
    sget-boolean v7, Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z

    if-nez v7, :cond_b

    iget v7, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    iput v7, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    :cond_b
    iget v7, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    invoke-direct {p0, v7}, Lcom/android/server/VibratorService;->setIntensity(I)V

    :cond_c
    return-void

    :cond_d
    sget-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    aget v7, v7, v1

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    if-le v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    sget-object v3, Lcom/android/server/VibratorService;->MONTH_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    new-instance v3, Lcom/android/server/VibratorService$VibrationInfo;

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get9(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v4

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get8(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v6

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get6(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get7(Lcom/android/server/VibratorService$Vibration;)I

    move-result v9

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get12(Lcom/android/server/VibratorService$Vibration;)I

    move-result v10

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get11(Lcom/android/server/VibratorService$Vibration;)I

    move-result v11

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-eqz v13, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get2(Lcom/android/server/VibratorService$Vibration;)I

    move-result v13

    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)I

    move-result v14

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)[I

    move-result-object v15

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get13(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get3(Lcom/android/server/VibratorService$Vibration;)I

    move-result v16

    :goto_1
    invoke-direct/range {v3 .. v17}, Lcom/android/server/VibratorService$VibrationInfo;-><init>(JJ[JIIILjava/lang/String;II[IILjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Vibrator$SemMagnitudeTypes;->valueOf(Ljava/lang/String;)Landroid/os/Vibrator$SemMagnitudeTypes;

    move-result-object v2

    sget-object v3, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v2, v3}, Landroid/os/Vibrator$SemMagnitudeTypes;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_FORCE:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v2, v3}, Landroid/os/Vibrator$SemMagnitudeTypes;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/4 v13, -0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    move/from16 v16, v0

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mPreviousNoTouchVibrations:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    if-le v3, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mPreviousNoTouchVibrations:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService;->mPreviousNoTouchVibrations:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    new-instance v3, Lcom/android/server/VibratorService$VibrationInfo;

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get9(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v4

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get8(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v6

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get6(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get7(Lcom/android/server/VibratorService$Vibration;)I

    move-result v9

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get12(Lcom/android/server/VibratorService$Vibration;)I

    move-result v10

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get11(Lcom/android/server/VibratorService$Vibration;)I

    move-result v11

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-eqz v13, :cond_6

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get2(Lcom/android/server/VibratorService$Vibration;)I

    move-result v13

    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)I

    move-result v14

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)[I

    move-result-object v15

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get13(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get3(Lcom/android/server/VibratorService$Vibration;)I

    move-result v16

    :goto_4
    invoke-direct/range {v3 .. v17}, Lcom/android/server/VibratorService$VibrationInfo;-><init>(JJ[JIIILjava/lang/String;II[IILjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    const/4 v13, -0x1

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    move/from16 v16, v0

    goto :goto_4
.end method

.method private doCancelVibrateLocked()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrateThread;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iput-object v3, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    :cond_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    iget-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/server/VibratorService;->reportFinishVibrationLocked()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private doVibratorExists()Z
    .locals 1

    invoke-static {}, Lcom/android/server/VibratorService;->vibratorExists()Z

    move-result v0

    return v0
.end method

.method private doVibratorOff()V
    .locals 6

    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget v3, p0, Lcom/android/server/VibratorService;->mCurVibUid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v3, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    iget v5, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    invoke-interface {v3, v5}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOff(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v3, -0x1

    :try_start_2
    iput v3, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    :cond_0
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v3, "VibratorService"

    const-string/jumbo v5, "Turning vibrator off"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doVibratorOn(JII)V
    .locals 9

    iget-object v5, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, p3, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    iput p3, p0, Lcom/android/server/VibratorService;->mCurVibUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v4, p4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    invoke-virtual {v4, p1, p2, v0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/server/VibratorService;->mHMTMountCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/VibratorService;->mHMTMountCount:I

    const-string/jumbo v4, "VibratorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "vibratorOn() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms, but HMTMount is TRUE."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_2
    monitor-exit v5

    return-void

    :cond_2
    :try_start_2
    const-string/jumbo v4, "VibratorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "vibratorOn() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->vibratorOn(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private doVibratorOn(JIIII)V
    .locals 9

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v6, p3, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    iput p3, p0, Lcom/android/server/VibratorService;->mCurVibUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v4, p4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    invoke-virtual {v4, p1, p2, v0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget-boolean v6, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/android/server/VibratorService;->mHMTMountCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/VibratorService;->mHMTMountCount:I

    const-string/jumbo v6, "VibratorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "vibratorOn() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", magnitude :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", f : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-eqz v8, :cond_2

    :goto_2
    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ", but HMTMount is TRUE."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_3
    monitor-exit v5

    return-void

    :cond_2
    move p6, v4

    goto :goto_2

    :cond_3
    :try_start_2
    const-string/jumbo v6, "VibratorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "vibratorOn() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", magnitude :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", f : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-eqz v8, :cond_4

    move v4, p6

    :cond_4
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p6}, Lcom/android/server/VibratorService;->setFrequency(I)V

    invoke-direct {p0, p5}, Lcom/android/server/VibratorService;->setIntensity(I)V

    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->vibratorOn(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method private doVibratorOn(JII[IIII)V
    .locals 9

    iget-object v6, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v5, p3, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    iput p3, p0, Lcom/android/server/VibratorService;->mCurVibUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    new-instance v5, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v5, p4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    iget-object v5, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    invoke-virtual {v5, p1, p2, v1}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    iget-boolean v5, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/server/VibratorService;->mHMTMountCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/VibratorService;->mHMTMountCount:I

    const-string/jumbo v5, "VibratorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "vibratorOn() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", magnitude :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", type : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", but but HMTMount is TRUE."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_2
    monitor-exit v6

    return-void

    :cond_2
    :try_start_2
    const-string/jumbo v5, "VibratorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "vibratorOn() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", magnitude :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", type : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    move/from16 v0, p8

    invoke-static {v5, p6, v0}, Lcom/android/server/VibratorService;->vibratorEngine([III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method private getColorfulData(I)[I
    .locals 1

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    filled-new-array {v0, v0}, [I

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibeEngineA:[I

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibeEngineB:[I

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibeEngineC:[I

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibeEngineD:[I

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibeEngineE:[I

    return-object v0

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibeEngineF:[I

    return-object v0

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibeEngineG:[I

    return-object v0

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibeEngineH:[I

    return-object v0

    :pswitch_8
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibeEngineI:[I

    return-object v0

    :pswitch_9
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibeEngineJ:[I

    return-object v0

    :pswitch_a
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibeEngineK:[I

    return-object v0

    :pswitch_b
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibeEngineL:[I

    return-object v0

    :pswitch_c
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibeEngineM:[I

    return-object v0

    :pswitch_d
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibeEngineN:[I

    return-object v0

    :pswitch_e
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibeEngineO:[I

    return-object v0

    :pswitch_f
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibeEngineP:[I

    return-object v0

    :pswitch_10
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibeEngineQ:[I

    return-object v0

    :pswitch_data_0
    .packed-switch 0xc369
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
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
        :pswitch_10
    .end packed-switch
.end method

.method private getColorfulPattern([J)[J
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x0

    array-length v2, p1

    if-ne v2, v6, :cond_0

    aget-wide v4, p1, v8

    cmp-long v4, v4, v10

    if-gez v4, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    new-array v3, v6, [J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    int-to-long v4, v0

    aget-wide v6, p1, v1

    add-long/2addr v4, v6

    long-to-int v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    aput-wide v10, v3, v8

    int-to-long v4, v0

    const/4 v6, 0x1

    aput-wide v4, v3, v6

    return-object v3
.end method

.method private getCommonPattern(I)[J
    .locals 3

    packed-switch p1, :pswitch_data_0

    const/4 v2, 0x2

    new-array v0, v2, [J

    fill-array-data v0, :array_0

    move-object v1, v0

    :goto_0
    return-object v1

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternA:[J

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternB:[J

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternC:[J

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternD:[J

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternE:[J

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternF:[J

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternG:[J

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternH:[J

    goto :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternI:[J

    goto :goto_0

    :pswitch_9
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternJ:[J

    goto :goto_0

    :pswitch_a
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternK:[J

    goto :goto_0

    :pswitch_b
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternL:[J

    goto :goto_0

    :pswitch_c
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternM:[J

    goto :goto_0

    :pswitch_d
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternN:[J

    goto :goto_0

    :pswitch_e
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternO:[J

    goto :goto_0

    :pswitch_f
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternP:[J

    goto :goto_0

    :pswitch_10
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternQ:[J

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc369
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
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
        :pswitch_10
    .end packed-switch

    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method private getCommonPatternFrequency([J)I
    .locals 12

    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyAlert:I

    array-length v6, p1

    iget-boolean v7, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-nez v7, :cond_0

    return v1

    :cond_0
    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    iget v7, p0, Lcom/android/server/VibratorService;->mVibePatternMaxLength:I

    if-le v6, v7, :cond_2

    :cond_1
    return v1

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->getHashValue([J)J

    move-result-wide v2

    sget-object v7, Lcom/android/server/VibratorService;->mVibePatternHash:Ljava/util/Hashtable;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/Hashtable;->containsValue(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Lcom/android/server/VibratorService;->mVibePatternHash:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v7, Lcom/android/server/VibratorService;->mVibePatternHash:Ljava/util/Hashtable;

    invoke-virtual {v7, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v7, v8, v2

    if-nez v7, :cond_3

    const/4 v0, 0x0

    const-string/jumbo v7, "A"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternA:[J

    invoke-direct {p0, v7, p1}, Lcom/android/server/VibratorService;->isCommonPattern([J[J)Z

    move-result v0

    if-eqz v0, :cond_c

    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyF0:I

    :cond_4
    :goto_0
    sget-boolean v7, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v7, :cond_5

    if-eqz v0, :cond_13

    const-string/jumbo v7, "VibratorService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getCommonPatternFrequency() - common pattern : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", frequency : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return v1

    :cond_6
    const-string/jumbo v7, "B"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternB:[J

    invoke-direct {p0, v7, p1}, Lcom/android/server/VibratorService;->isCommonPattern([J[J)Z

    move-result v0

    if-eqz v0, :cond_d

    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyF0:I

    goto :goto_0

    :cond_7
    const-string/jumbo v7, "C"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternC:[J

    invoke-direct {p0, v7, p1}, Lcom/android/server/VibratorService;->isCommonPattern([J[J)Z

    move-result v0

    if-eqz v0, :cond_e

    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyMid:I

    goto :goto_0

    :cond_8
    const-string/jumbo v7, "D"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternD:[J

    invoke-direct {p0, v7, p1}, Lcom/android/server/VibratorService;->isCommonPattern([J[J)Z

    move-result v0

    if-eqz v0, :cond_f

    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyHigh:I

    goto :goto_0

    :cond_9
    const-string/jumbo v7, "E"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternE:[J

    invoke-direct {p0, v7, p1}, Lcom/android/server/VibratorService;->isCommonPattern([J[J)Z

    move-result v0

    if-eqz v0, :cond_10

    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyLow:I

    goto :goto_0

    :cond_a
    const-string/jumbo v7, "F"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternF:[J

    invoke-direct {p0, v7, p1}, Lcom/android/server/VibratorService;->isCommonPattern([J[J)Z

    move-result v0

    if-eqz v0, :cond_11

    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyF0:I

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v7, "G"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternG:[J

    invoke-direct {p0, v7, p1}, Lcom/android/server/VibratorService;->isCommonPattern([J[J)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyMid:I

    goto/16 :goto_0

    :cond_c
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyAlert:I

    goto/16 :goto_0

    :cond_d
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyAlert:I

    goto/16 :goto_0

    :cond_e
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyAlert:I

    goto/16 :goto_0

    :cond_f
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyAlert:I

    goto/16 :goto_0

    :cond_10
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyAlert:I

    goto/16 :goto_0

    :cond_11
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyAlert:I

    goto/16 :goto_0

    :cond_12
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyAlert:I

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v7, "VibratorService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getCommonPatternFrequency() - common or custom pattern(confirmed) : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", frequency : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private getCustomPattern([I)[J
    .locals 12

    const/4 v10, 0x2

    array-length v3, p1

    array-length v8, p1

    const/4 v9, 0x3

    if-gt v8, v9, :cond_0

    new-array v8, v10, [J

    fill-array-data v8, :array_0

    return-object v8

    :cond_0
    add-int/lit8 v8, v3, -0x1

    div-int/lit8 v8, v8, 0x3

    add-int/lit8 v5, v8, 0x1

    new-array v6, v5, [J

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-wide/16 v8, 0x0

    aput-wide v8, v6, v2

    aget v8, p1, v10

    if-eqz v8, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-ge v0, v3, :cond_5

    add-int/lit8 v8, v0, 0x1

    if-ge v8, v3, :cond_3

    if-eqz v1, :cond_4

    add-int/lit8 v8, v0, 0x1

    aget v8, p1, v8

    if-eqz v8, :cond_4

    const/4 v1, 0x0

    add-int/lit8 v2, v2, 0x1

    :cond_2
    :goto_1
    aget-wide v8, v6, v2

    aget v10, p1, v0

    int-to-long v10, v10

    add-long/2addr v8, v10

    aput-wide v8, v6, v2

    :cond_3
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_4
    if-nez v1, :cond_2

    add-int/lit8 v8, v0, 0x1

    aget v8, p1, v8

    if-nez v8, :cond_2

    const/4 v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v2, 0x1

    new-array v7, v4, [J

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_6

    aget-wide v8, v6, v0

    aput-wide v8, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    return-object v7

    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method private getHashValue([J)J
    .locals 8

    array-length v1, p1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-wide v4, p1, v0

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    add-int/lit8 v6, v0, 0x1

    int-to-long v6, v6

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method static getIntArray(Landroid/content/res/Resources;I)[I
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, -0x1

    if-nez v0, :cond_0

    return-object v7

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_1

    aget v5, v0, v1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    add-int/lit8 v4, v1, 0x1

    :cond_1
    if-gez v4, :cond_3

    return-object v7

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    array-length v5, v0

    sub-int v2, v5, v4

    new-array v3, v2, [I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    add-int v5, v1, v4

    aget v5, v0, v5

    aput v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-object v3
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v4

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    aget v4, v0, v1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    :cond_1
    new-array v3, v2, [J

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    aget v4, v0, v1

    int-to-long v4, v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method private getMillisecondsFromColorfulData([I)J
    .locals 6

    const-wide/16 v2, 0x0

    array-length v1, p1

    const/4 v0, 0x1

    :goto_0
    if-ge v0, v1, :cond_0

    aget v4, p1, v0

    int-to-long v4, v4

    add-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private getMinMagnitude()I
    .locals 5

    iget v1, p0, Lcom/android/server/VibratorService;->mMinMagnitudeValue:I

    :try_start_0
    sget-object v2, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    const/4 v3, 0x1

    aget v1, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Min magnitude should be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/VibratorService;->mMinMagnitudeValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static native getVibratorMotorType()I
.end method

.method private hasColorfulData(I[I)Z
    .locals 4

    const/4 v3, 0x0

    array-length v0, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    aget v0, p2, v3

    if-gez v0, :cond_1

    sget-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "This "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not supported for engine."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v3

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private initEngineData(Landroid/content/res/Resources;I)[I
    .locals 5

    const/4 v4, -0x1

    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->getIntArray(Landroid/content/res/Resources;I)[I

    move-result-object v0

    if-nez v0, :cond_1

    sget-boolean v1, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initEngineData() is failed by illegal resid("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    filled-new-array {v4, v4}, [I

    move-result-object v1

    return-object v1

    :cond_1
    return-object v0
.end method

.method private initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J
    .locals 6

    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initPattern() is failed by illegal resid("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    return-object v2

    :cond_0
    array-length v0, v1

    iget v2, p0, Lcom/android/server/VibratorService;->mVibePatternMaxLength:I

    if-ge v2, v0, :cond_1

    iput v0, p0, Lcom/android/server/VibratorService;->mVibePatternMaxLength:I

    :cond_1
    sget-object v2, Lcom/android/server/VibratorService;->mVibePatternHash:Ljava/util/Hashtable;

    invoke-direct {p0, v1}, Lcom/android/server/VibratorService;->getHashValue([J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    nop

    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method private isAll0([J)Z
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-wide v2, p1, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "VibratorService"

    const-string/jumbo v3, "isAll0() is true"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2
.end method

.method private isColorfulDataFormat([I)Z
    .locals 7

    const/4 v6, 0x0

    array-length v2, p1

    add-int/lit8 v1, v2, -0x1

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    div-int/lit8 v3, v1, 0x3

    mul-int/lit8 v3, v3, 0x3

    if-eq v3, v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    const-string/jumbo v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isColorfulDataFormat() - wrong format(1) : data["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v6

    :cond_2
    aget v3, p1, v6

    if-ne v1, v3, :cond_3

    const/4 v3, 0x1

    return v3

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_4

    const-string/jumbo v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isColorfulDataFormat() - wrong format(2) : data["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return v6
.end method

.method private isCommonPattern([J[J)Z
    .locals 7

    const/4 v6, 0x0

    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_0

    return v6

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    return v6

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method private isExecutablePattern([JILjava/lang/String;)Z
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v4, "VibratorService"

    const-string/jumbo v5, "isExecutablePattern() - pattern is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_0
    array-length v2, p1

    if-lt p2, v2, :cond_1

    const-string/jumbo v4, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isExecutablePattern() - length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", repeat = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_1
    aget-wide v4, p1, p2

    cmp-long v4, v4, v10

    if-lez v4, :cond_2

    return v9

    :cond_2
    div-int/lit8 v4, p2, 0x2

    mul-int/lit8 v4, v4, 0x2

    if-ne v4, p2, :cond_4

    div-int/lit8 v4, v2, 0x2

    mul-int/lit8 v4, v4, 0x2

    if-ne v4, v2, :cond_4

    :cond_3
    add-int/lit8 v4, v2, -0x1

    aget-wide v4, p1, v4

    cmp-long v4, v4, v10

    if-lez v4, :cond_5

    return v9

    :cond_4
    div-int/lit8 v4, p2, 0x2

    mul-int/lit8 v4, v4, 0x2

    if-eq v4, p2, :cond_5

    div-int/lit8 v4, v2, 0x2

    mul-int/lit8 v4, v4, 0x2

    if-ne v4, v2, :cond_3

    :cond_5
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_7

    add-int v4, v1, p2

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v0, v3, 0x1

    if-ge v0, v2, :cond_6

    aget-wide v4, p1, v3

    aget-wide v6, p1, v0

    add-long/2addr v4, v6

    cmp-long v4, v4, v10

    if-lez v4, :cond_6

    return v9

    :cond_6
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_7
    const-string/jumbo v4, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "This pattern is not executable. repeat = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_8

    const-string/jumbo v4, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pattern["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v6, p1, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    iget v4, p0, Lcom/android/server/VibratorService;->mCheckExecutable:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/VibratorService;->mCheckExecutable:I

    iget-object v4, p0, Lcom/android/server/VibratorService;->mCheckExecutablePkg:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x3e8

    if-ge v4, v5, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/VibratorService;->mCheckExecutablePkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/VibratorService;->mCheckExecutablePkg:Ljava/lang/String;

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/VibratorService;->mCheckExecutablePkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-wide v6, p1, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/VibratorService;->mCheckExecutablePkg:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    return v8
.end method

.method private removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VibratorService$Vibration;

    invoke-static {v1}, Lcom/android/server/VibratorService$Vibration;->-get10(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    invoke-direct {p0, v1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v2}, Lcom/android/server/VibratorService$Vibration;->-get10(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_2

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    return-object v2

    :cond_2
    return-object v4
.end method

.method private reportFinishVibrationLocked()V
    .locals 7

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v2}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get11(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v4}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v1, v2, v5, v3, v4}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v6, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setFrequency(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-eqz v0, :cond_0

    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->vibratorFrequency(J)V

    :cond_0
    return-void
.end method

.method private setIntensity(I)V
    .locals 2

    sget-boolean v0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    if-eqz v0, :cond_0

    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->vibratorIntensity(J)V

    :cond_0
    return-void
.end method

.method private shouldVibrateForRingtone()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "vibrate_when_ringing"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_2

    :goto_1
    return v2

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method private startNextVibrationLocked()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->reportFinishVibrationLocked()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    return-void
.end method

.method private startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 13

    :try_start_0
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get12(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->shouldVibrateForRingtone()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get12(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get11(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v1, v5, v2, v3, v4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v11

    if-nez v11, :cond_1

    iget-object v1, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v2}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get11(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v1, v2, v5, v3, v4}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I

    move-result v11

    :cond_1
    if-nez v11, :cond_4

    iput-object p1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get9(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_c

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)[I

    move-result-object v1

    if-nez v1, :cond_a

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get9(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get11(Lcom/android/server/VibratorService$Vibration;)I

    move-result v4

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get12(Lcom/android/server/VibratorService$Vibration;)I

    move-result v5

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get13(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get3(Lcom/android/server/VibratorService$Vibration;)I

    move-result v6

    :goto_1
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get2(Lcom/android/server/VibratorService$Vibration;)I

    move-result v7

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/VibratorService;->doVibratorOn(JIIII)V

    iget-object v1, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get9(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return-void

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v12

    const-string/jumbo v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startVibrationLocked() : ringMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", VIBRATE_WHEN_RINGING = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "vibrate_when_ringing"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get7(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    if-gez v1, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    :cond_3
    return-void

    :cond_4
    const/4 v1, 0x2

    if-ne v11, v1, :cond_6

    const-string/jumbo v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Would be an error: vibrate from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get11(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get7(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    if-gez v1, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    :cond_5
    iget-object v1, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_6
    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_FORCE:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v1}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iput-object p1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    goto/16 :goto_0

    :catch_0
    move-exception v10

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startVibrationLocked() : vibrate from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get11(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get7(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    if-gez v1, :cond_8

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    :cond_8
    iget-object v1, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :cond_9
    iget v6, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    goto/16 :goto_1

    :cond_a
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get9(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get11(Lcom/android/server/VibratorService$Vibration;)I

    move-result v4

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get12(Lcom/android/server/VibratorService$Vibration;)I

    move-result v5

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)[I

    move-result-object v6

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get13(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get3(Lcom/android/server/VibratorService$Vibration;)I

    move-result v7

    :goto_3
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)I

    move-result v8

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get7(Lcom/android/server/VibratorService$Vibration;)I

    move-result v9

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/server/VibratorService;->doVibratorOn(JII[IIII)V

    iget-object v1, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get9(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v4

    const-wide/16 v6, 0xa

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    :cond_b
    iget v7, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    goto :goto_3

    :cond_c
    new-instance v1, Lcom/android/server/VibratorService$VibrateThread;

    invoke-direct {v1, p0, p1}, Lcom/android/server/VibratorService$VibrateThread;-><init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    iput-object v1, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v1}, Lcom/android/server/VibratorService$VibrateThread;->start()V

    goto/16 :goto_2
.end method

.method private unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    .locals 3

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get6(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get10(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateInputDeviceVibrators()V
    .locals 12

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v7

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    iget-object v8, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v9, 0x0

    :try_start_1
    iput-boolean v9, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v9, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "vibrate_input_devices"

    const/4 v11, -0x2

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-lez v9, :cond_2

    :goto_0
    iput-boolean v5, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    iget-object v5, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v5}, Landroid/os/PowerManagerInternal;->getLowPowerModeEnabled()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    iget-boolean v5, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-nez v5, :cond_0

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    iget-object v5, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    iget-object v6, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-virtual {v5, p0, v6}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    :cond_0
    :goto_2
    iget-object v5, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-boolean v5, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v5}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v2

    const/4 v1, 0x0

    :goto_3
    array-length v5, v2

    if-ge v1, v5, :cond_4

    iget-object v5, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    aget v6, v2, v1

    invoke-virtual {v5, v6}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    move v5, v6

    goto :goto_0

    :cond_3
    iget-boolean v5, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    iget-object v5, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v5, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v8

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v5

    monitor-exit v7

    throw v5

    :cond_4
    :try_start_5
    monitor-exit v8

    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v7

    return-void

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private verifyIncomingUid(I)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method private vibrate(ILjava/lang/String;JILandroid/os/IBinder;ILjava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.VIBRATE"

    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Requires VIBRATE permission"

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    const-wide/16 v4, 0x0

    cmp-long v2, p3, v4

    if-lez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Lcom/android/server/VibratorService$Vibration;->hasLongerTimeout(J)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string/jumbo v2, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibrate - package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mCurrentVibration.hasLongerTimeout(milliseconds) => true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string/jumbo v2, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibrate - package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", ms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", magnitude:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/VibratorService$Vibration;

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p6

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p7

    move-object/from16 v14, p8

    invoke-direct/range {v3 .. v14}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;JIILjava/lang/String;II[ILjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method static native vibratorEngine([III)V
.end method

.method static native vibratorEngineExist()Z
.end method

.method static native vibratorExists()Z
.end method

.method static native vibratorFrequency(J)V
.end method

.method static native vibratorFrequencyExist()Z
.end method

.method static native vibratorInit()V
.end method

.method static native vibratorIntensity(J)V
.end method

.method static native vibratorIntensityExists()Z
.end method

.method static native vibratorOff()V
.end method

.method static native vibratorOn(J)V
.end method


# virtual methods
.method public cancelVibrate(Landroid/os/IBinder;)V
    .locals 6

    iget-object v3, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.VIBRATE"

    const-string/jumbo v5, "cancelVibrate"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Permission Denial: can\'t dump vibrator service from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v2, "Previous vibrations:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VibratorService$VibrationInfo;

    const-string/jumbo v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    :try_start_1
    const-string/jumbo v2, "Extra vibrations:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/VibratorService;->mPreviousNoTouchVibrations:Ljava/util/LinkedList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VibratorService$VibrationInfo;

    const-string/jumbo v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    monitor-exit v3

    const-string/jumbo v2, "Current Info:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mLowPowerMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mTouchMagnitude = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mCallMagnitude = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mNotiMagnitude = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mDefaultMagnitude = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mForceMagnitude = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mMax = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mMaxMagnitudeValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mMin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mMinMagnitudeValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mMType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mMotorType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mHMTMountC = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mHMTMountCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mHasVibrator = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/VibratorService;->mHasVibrator:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mIsEnableInt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mIsSupportedH = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mIsSupportedF = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mIsSupportedE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mCheckExe = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mCheckExecutable:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mCheckPac = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VibratorService;->mCheckExecutablePkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  USE_SET_MAX_MAGNITUE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getMagnitude(Ljava/lang/String;)I
    .locals 3

    invoke-static {p1}, Landroid/os/Vibrator$SemMagnitudeTypes;->valueOf(Ljava/lang/String;)Landroid/os/Vibrator$SemMagnitudeTypes;

    move-result-object v0

    invoke-static {}, Lcom/android/server/VibratorService;->-getandroid-os-Vibrator$SemMagnitudeTypesSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Vibrator$SemMagnitudeTypes;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    return v1

    :pswitch_0
    iget v1, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    return v1

    :pswitch_1
    iget v1, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    return v1

    :pswitch_2
    iget v1, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    return v1

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/VibratorService;->getMaxMagnitude()I

    move-result v1

    return v1

    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/VibratorService;->getMinMagnitude()I

    move-result v1

    return v1

    :pswitch_5
    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    return v1

    :cond_0
    iget v1, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMaxMagnitude()I
    .locals 5

    iget v1, p0, Lcom/android/server/VibratorService;->mMaxMagnitudeValue:I

    :try_start_0
    sget-object v2, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    sget-object v3, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v1, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Default magnitude = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/VibratorService;->mMaxMagnitudeValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMotorType()I
    .locals 3

    sget-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMotorType() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VibratorService;->mMotorType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/VibratorService;->mMotorType:I

    return v0
.end method

.method public hasVibrator()Z
    .locals 4

    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorExists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/VibratorService;->mHasVibrator:Z

    sget-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hasVibrator : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mHasVibrator:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mIsEnableIntensity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mIsHSupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "VibratorService"

    const-string/jumbo v2, "***** Current vibration info *****"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$Vibration;->printInfo()V

    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mVibrations.size() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Last package that started the wakelock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VibratorService;->mLastStartWakeLock:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Last package that ended the wakelock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VibratorService;->mLastEndWakeLock:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mHasVibrator:Z

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    return-void
.end method

.method public readFromFile(J)I
    .locals 13

    const/4 v11, -0x1

    const/4 v5, 0x0

    new-instance v4, Ljava/io/File;

    const-string/jumbo v8, "/dev/block/param"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "VibratorService"

    const-string/jumbo v9, "It\'s not Factory Binary"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "VibratorService"

    const-string/jumbo v9, "/dev/block/param is not found"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_1
    const/4 v7, -0x1

    :try_start_0
    new-instance v6, Ljava/io/RandomAccessFile;

    new-instance v8, Ljava/io/File;

    const-string/jumbo v9, "/dev/block/param"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "rw"

    invoke-direct {v6, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v6, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v8, 0x4

    new-array v0, v8, [B

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual {v6, v0, v8, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    const/4 v8, 0x3

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    const/4 v9, 0x2

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    const/4 v9, 0x1

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    const/4 v9, 0x0

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    or-int v7, v8, v9

    const-string/jumbo v8, "VibratorService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "get frequency : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    return v7

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return v11

    :catch_1
    move-exception v2

    :goto_0
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :try_start_3
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    return v11

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v2

    move-object v5, v6

    goto :goto_0
.end method

.method reloadContentObserver()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, -0x2

    sget-boolean v4, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/VibratorService;->mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v4}, Lcom/android/server/VibratorService$SecSettingsObserver;->reload()V

    iget-object v4, p0, Lcom/android/server/VibratorService;->mCallMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v4}, Lcom/android/server/VibratorService$SecSettingsObserver;->reload()V

    iget-object v4, p0, Lcom/android/server/VibratorService;->mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v4}, Lcom/android/server/VibratorService$SecSettingsObserver;->reload()V

    sget-object v4, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    sget-object v4, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    array-length v4, v4

    add-int/lit8 v3, v4, -0x1

    if-lt v1, v8, :cond_0

    if-ge v3, v8, :cond_1

    :cond_0
    const-string/jumbo v4, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "magnitudeMaxLevel(reloadContentObserver) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", touchMagnitudeMaxLevel(reloadContentObserver) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v4, v5, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-le v0, v3, :cond_3

    :goto_0
    iput v0, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    iget-object v4, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    aget-object v5, v5, v9

    invoke-static {v4, v5, v1, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-le v0, v1, :cond_4

    :goto_1
    iput v0, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    iget-object v4, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-static {v4, v5, v1, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-le v0, v1, :cond_5

    :goto_2
    iput v0, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    sget-object v4, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v4, v4, v1

    iput v4, p0, Lcom/android/server/VibratorService;->mMaxMagnitudeValue:I

    sget-object v4, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v4, v4, v9

    iput v4, p0, Lcom/android/server/VibratorService;->mMinMagnitudeValue:I

    sget-boolean v4, Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    iput v4, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    :cond_2
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/VibratorService;->mForceMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v4}, Lcom/android/server/VibratorService$SecSettingsObserver;->reload()V

    sget-object v4, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    array-length v4, v4

    add-int/lit8 v2, v4, -0x1

    sget-object v4, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    aget v4, v4, v2

    iput v4, p0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    if-ge v2, v8, :cond_6

    const-string/jumbo v4, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "touchForceMagnitudeMaxLevel : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    sget-object v4, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    aget v0, v4, v0

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v0, v4, v0

    goto :goto_1

    :cond_5
    sget-object v4, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v0, v4, v0

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-static {v4, v5, v2, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-le v0, v2, :cond_8

    :goto_3
    iput v0, p0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    :cond_7
    return-void

    :cond_8
    sget-object v4, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    aget v0, v4, v0

    goto :goto_3
.end method

.method public resetMagnitude()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires VIBRATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    if-gez v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    iput v0, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    return-void
.end method

.method public semColorfulVibrate(ILjava/lang/String;[IILandroid/os/IBinder;IIILjava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.VIBRATE"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/SecurityException;

    const-string/jumbo v7, "Requires VIBRATE permission"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    if-gez p6, :cond_1

    sget-object v6, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_EXTRA:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v6}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p9

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    :try_start_0
    const-string/jumbo v6, "VibratorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "semColorfulVibrate - package: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, ", repeat: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, ", token: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, ", mag: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, ", usageHint : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, ", def: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    if-nez v6, :cond_6

    const-string/jumbo v6, "VibratorService"

    const-string/jumbo v7, "This model can\'t support colorful."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v6, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    if-eqz v6, :cond_4

    if-nez p6, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;)I

    move-result p6

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v6

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v6

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    :cond_3
    const-wide/16 v8, 0x1e

    move-object/from16 v5, p0

    move/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v10, p7

    move-object/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p9

    :try_start_4
    invoke-direct/range {v5 .. v13}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;JILandroid/os/IBinder;ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_1
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    if-nez v6, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2
    move-exception v7

    :try_start_8
    monitor-exit v6

    throw v7

    :cond_5
    const-wide/16 v8, 0x1e

    move-object/from16 v5, p0

    move/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v10, p7

    move-object/from16 v11, p5

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;JILandroid/os/IBinder;)V

    goto :goto_1

    :cond_6
    if-gtz p6, :cond_7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3
    move-exception v7

    :try_start_b
    monitor-exit v6

    throw v7

    :cond_7
    if-nez p3, :cond_8

    const-string/jumbo v6, "VibratorService"

    const-string/jumbo v7, "semColorfulVibrate() : data is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_8
    :try_start_c
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->isColorfulDataFormat([I)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result v6

    if-nez v6, :cond_9

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_9
    if-lez p4, :cond_a

    :try_start_d
    const-string/jumbo v6, "VibratorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "semColorfulVibrate() : repeat("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, ") is wrong."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_a
    if-nez p5, :cond_b

    :try_start_e
    const-string/jumbo v6, "VibratorService"

    const-string/jumbo v7, "semColorfulVibrate() : token is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_b
    :try_start_f
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->getMillisecondsFromColorfulData([I)J

    move-result-wide v8

    const/4 v6, -0x1

    move/from16 v0, p8

    if-ne v0, v6, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->getCustomPattern([I)[J

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/VibratorService;->getColorfulPattern([J)[J

    move-result-object v17

    :goto_2
    move-object/from16 v0, v17

    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_d

    const/4 v6, 0x0

    aget-wide v6, v17, v6

    const-wide/16 v10, 0x0

    cmp-long v6, v6, v10

    if-gez v6, :cond_d

    const-string/jumbo v6, "VibratorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "This "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p8

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, " is not supported."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_c
    :try_start_10
    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->getCommonPattern(I)[J

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/VibratorService;->getColorfulPattern([J)[J

    move-result-object v17

    goto :goto_2

    :cond_d
    const/4 v6, -0x1

    move/from16 v0, p4

    if-le v0, v6, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p4

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/VibratorService;->isExecutablePattern([JILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    :cond_e
    new-instance v5, Lcom/android/server/VibratorService$Vibration;

    move-object/from16 v6, p0

    move-object/from16 v7, p5

    move/from16 v10, p7

    move/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p6

    move/from16 v14, p8

    move-object/from16 v15, p3

    move/from16 v16, p4

    move-object/from16 v18, p9

    invoke-direct/range {v5 .. v18}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;JIILjava/lang/String;II[II[JLjava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    const/4 v6, 0x0

    :try_start_11
    move-object/from16 v0, p5

    invoke-interface {v0, v5, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :try_start_12
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :try_start_13
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    if-ltz p4, :cond_10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :try_start_14
    monitor-exit v7
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_f
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_0
    move-exception v4

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_10
    :try_start_15
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v6

    :try_start_16
    monitor-exit v7

    throw v6
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1
.end method

.method public semIsForceTouchSupported()Z
    .locals 3

    sget-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semIsForceTouchSupported() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    return v0
.end method

.method public semIsHapticSupported()Z
    .locals 3

    sget-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semIsHapticSupported() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    return v0
.end method

.method public setMagnitude(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires VIBRATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p1, :cond_2

    const/4 p1, 0x0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    iput v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    iput p1, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    return-void

    :cond_2
    iget v0, p0, Lcom/android/server/VibratorService;->mMaxMagnitudeValue:I

    if-le p1, v0, :cond_1

    iget p1, p0, Lcom/android/server/VibratorService;->mMaxMagnitudeValue:I

    goto :goto_0
.end method

.method public systemReady()V
    .locals 7

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/input/InputManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    iput-object v1, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    new-instance v1, Lcom/android/server/VibratorService$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    const-class v1, Landroid/os/PowerManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManagerInternal;

    iput-object v1, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v2, Lcom/android/server/VibratorService$3;

    invoke-direct {v2, p0}, Lcom/android/server/VibratorService$3;-><init>(Lcom/android/server/VibratorService;)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    iget-object v1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "vibrate_input_devices"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/VibratorService$4;

    invoke-direct {v2, p0}, Lcom/android/server/VibratorService$4;-><init>(Lcom/android/server/VibratorService;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.USER_SWITCHED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    const-class v1, Lcom/android/server/vr/GearVrManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/GearVrManagerInternal;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/server/VibratorService$5;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$5;-><init>(Lcom/android/server/VibratorService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/vr/GearVrManagerInternal;->registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "VibratorService"

    const-string/jumbo v2, "HMT VibratorService failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public vibrate(ILjava/lang/String;JILandroid/os/IBinder;)V
    .locals 15

    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.VIBRATE"

    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Requires VIBRATE permission"

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    const-wide/16 v4, 0x0

    cmp-long v2, p3, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Lcom/android/server/VibratorService$Vibration;->hasLongerTimeout(J)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string/jumbo v2, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibrate - package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mCurrentVibration.hasLongerTimeout(milliseconds) => true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string/jumbo v2, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibrate - package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", ms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/VibratorService$Vibration;

    move-object v4, p0

    move-object/from16 v5, p6

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v3 .. v10}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;JIILjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    :try_start_0
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    invoke-direct {p0, v3}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V

    invoke-direct {p0, v3}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public vibrateCommonPatternMagnitude(ILjava/lang/String;IILandroid/os/IBinder;IILjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.VIBRATE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Requires VIBRATE permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->getColorfulData(I)[I

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v5}, Lcom/android/server/VibratorService;->hasColorfulData(I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p3

    move-object/from16 v11, p8

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/VibratorService;->semColorfulVibrate(ILjava/lang/String;[IILandroid/os/IBinder;IIILjava/lang/String;)V

    return-void

    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->getCommonPattern(I)[J

    move-result-object v9

    array-length v2, v9

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    aget-wide v2, v9, v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-gez v2, :cond_2

    const-string/jumbo v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "This "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not supported."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v10, p4

    move/from16 v11, p7

    move-object/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p3

    move-object/from16 v15, p8

    invoke-virtual/range {v6 .. v15}, Lcom/android/server/VibratorService;->vibratePatternMagnitude(ILjava/lang/String;[JIILandroid/os/IBinder;IILjava/lang/String;)V

    return-void
.end method

.method public vibrateMagnitude(ILjava/lang/String;JILandroid/os/IBinder;ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires VIBRATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p7, :cond_1

    sget-object v0, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_EXTRA:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v0}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    const-string/jumbo v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vibrateMagnitude - package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", def: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p7, v0, :cond_4

    iget v0, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p6}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_2
    invoke-virtual {p0, p8}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;)I

    move-result p7

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_3
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;JILandroid/os/IBinder;)V

    :goto_1
    return-void

    :cond_4
    if-nez p7, :cond_5

    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_1
    invoke-virtual {p0, p6}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_5
    invoke-direct/range {p0 .. p8}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;JILandroid/os/IBinder;ILjava/lang/String;)V

    goto :goto_1
.end method

.method public vibratePattern(ILjava/lang/String;[JIILandroid/os/IBinder;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.VIBRATE"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/SecurityException;

    const-string/jumbo v6, "Requires VIBRATE permission"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    if-eqz p3, :cond_1

    :try_start_0
    move-object/from16 v0, p3

    array-length v5, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v5, :cond_2

    :cond_1
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->isAll0([J)Z

    move-result v5

    if-nez v5, :cond_1

    move-object/from16 v0, p3

    array-length v5, v0

    move/from16 v0, p4

    if-ge v0, v5, :cond_1

    if-eqz p6, :cond_1

    const/4 v5, -0x1

    move/from16 v0, p4

    if-le v0, v5, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/VibratorService;->isExecutablePattern([JILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    new-instance v4, Lcom/android/server/VibratorService$Vibration;

    move-object/from16 v5, p0

    move-object/from16 v6, p6

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p1

    move-object/from16 v11, p2

    invoke-direct/range {v4 .. v11}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIIILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v5, 0x0

    :try_start_2
    move-object/from16 v0, p6

    invoke-interface {v0, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    if-ltz p4, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_4
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_0
    move-exception v12

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_5
    :try_start_6
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    :try_start_7
    monitor-exit v6

    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v5

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public vibratePatternMagnitude(ILjava/lang/String;[JIILandroid/os/IBinder;IILjava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.VIBRATE"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/SecurityException;

    const-string/jumbo v6, "Requires VIBRATE permission"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    if-gez p7, :cond_1

    sget-object v5, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_EXTRA:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v5}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p9

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    if-eqz p3, :cond_2

    :try_start_0
    move-object/from16 v0, p3

    array-length v5, v0

    if-nez v5, :cond_5

    :cond_2
    const-string/jumbo v5, "VibratorService"

    const-string/jumbo v6, "vibratePatternMagnitude() is failed by illegal argument."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_3

    const-string/jumbo v5, "VibratorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "vibratePatternMagnitude() - pattern.length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", repeat = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string/jumbo v5, "VibratorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "vibratePatternMagnitude() - token = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;)I

    move-result p7

    goto :goto_0

    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->isAll0([J)Z

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 v0, p3

    array-length v5, v0

    move/from16 v0, p4

    if-ge v0, v5, :cond_2

    if-eqz p6, :cond_2

    const/4 v5, -0x1

    move/from16 v0, p4

    if-le v0, v5, :cond_6

    const/4 v5, -0x1

    move/from16 v0, p8

    if-ne v0, v5, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/VibratorService;->isExecutablePattern([JILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    const-string/jumbo v5, "VibratorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "vibratePatternMagnitude - package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", repeat: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", def: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    move/from16 v0, p7

    if-ne v0, v5, :cond_9

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    if-nez v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_7
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v5

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v5

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_8
    :try_start_5
    new-instance v4, Lcom/android/server/VibratorService$Vibration;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->getCommonPatternFrequency([J)I

    move-result v12

    move-object/from16 v5, p0

    move-object/from16 v6, p6

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v13, p8

    invoke-direct/range {v4 .. v13}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIIILjava/lang/String;II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    const/4 v5, 0x0

    :try_start_6
    move-object/from16 v0, p6

    invoke-interface {v0, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    if-ltz p4, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_9
    if-nez p7, :cond_a

    :try_start_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2
    move-exception v6

    :try_start_d
    monitor-exit v5

    throw v6

    :cond_a
    new-instance v4, Lcom/android/server/VibratorService$Vibration;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->getCommonPatternFrequency([J)I

    move-result v13

    move-object/from16 v5, p0

    move-object/from16 v6, p6

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p7

    move/from16 v14, p8

    move-object/from16 v15, p9

    invoke-direct/range {v4 .. v15}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIIILjava/lang/String;IIILjava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v16

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_b
    :try_start_e
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v5

    :try_start_f
    monitor-exit v6

    throw v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
.end method

.method public writeToFile(JI)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    new-instance v4, Ljava/io/File;

    const-string/jumbo v7, "/dev/block/param"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "VibratorService"

    const-string/jumbo v8, "It\'s not Factory Binary"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "VibratorService"

    const-string/jumbo v8, "/dev/block/param is not found"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_1
    :try_start_0
    new-instance v6, Ljava/io/RandomAccessFile;

    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "/dev/block/param"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "rw"

    invoke-direct {v6, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v6, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v7, 0x4

    new-array v0, v7, [B

    and-int/lit16 v7, p3, 0xff

    int-to-byte v7, v7

    const/4 v8, 0x0

    aput-byte v7, v0, v8

    shr-int/lit8 v7, p3, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    const/4 v8, 0x1

    aput-byte v7, v0, v8

    shr-int/lit8 v7, p3, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    const/4 v8, 0x2

    aput-byte v7, v0, v8

    shr-int/lit8 v7, p3, 0x18

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    const/4 v8, 0x3

    aput-byte v7, v0, v8

    const/4 v7, 0x0

    aget-byte v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/io/RandomAccessFile;->write(I)V

    const/4 v7, 0x1

    aget-byte v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/io/RandomAccessFile;->write(I)V

    const/4 v7, 0x2

    aget-byte v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/io/RandomAccessFile;->write(I)V

    const/4 v7, 0x3

    aget-byte v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/io/RandomAccessFile;->write(I)V

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    return v10

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return v9

    :catch_1
    move-exception v2

    :goto_0
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :try_start_3
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    return v9

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v2

    move-object v5, v6

    goto :goto_0
.end method
