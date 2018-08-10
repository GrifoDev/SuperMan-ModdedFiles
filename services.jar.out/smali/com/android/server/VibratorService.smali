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
        Lcom/android/server/VibratorService$AbortLogInfo;,
        Lcom/android/server/VibratorService$AbortVibration;,
        Lcom/android/server/VibratorService$MuteCallInfo;,
        Lcom/android/server/VibratorService$MuteInfo;,
        Lcom/android/server/VibratorService$MuteLogInfo;,
        Lcom/android/server/VibratorService$MuteNotificationInfo;,
        Lcom/android/server/VibratorService$PatternInfo;,
        Lcom/android/server/VibratorService$SecSettingsObserver;,
        Lcom/android/server/VibratorService$SettingsObserver;,
        Lcom/android/server/VibratorService$VibrateThread;,
        Lcom/android/server/VibratorService$Vibration;,
        Lcom/android/server/VibratorService$VibrationInfo;,
        Lcom/android/server/VibratorService$VibratorShellCommand;
    }
.end annotation


# static fields
.field private static final synthetic -android-os-Vibrator$SemMagnitudeTypesSwitchesValues:[I = null

.field private static final ACTION_CAMERA_START:Ljava/lang/String; = "com.sec.android.app.camera.ACTION_CAMERA_START"

.field private static final ACTION_CAMERA_STOP:Ljava/lang/String; = "com.sec.android.app.camera.ACTION_CAMERA_STOP"

.field private static final DEBUG:Z = false

.field private static final EXTRA_KEEP_SCREEN_OFF:Ljava/lang/String; = "reason"

.field private static final FREQUENCY_ALERT:I = 0x0

.field private static final FREQUENCY_F0:I = 0x4

.field private static final FREQUENCY_HIGH:I = 0x3

.field private static final FREQUENCY_LOW:I = 0x1

.field private static final FREQUENCY_MID:I = 0x2

.field private static final HAPTIC_ENGINE_DATA_UNIT_SIZE:I = 0x4

.field private static final LOG_INFOS_LIMIT:I = 0xf

.field private static final MUTE_INFO_DELIMITER:Ljava/lang/String; = ";"

.field private static final PKG_ACT_ALWAYS:Ljava/lang/String;

.field private static final REPEAT_DEFAULT:I = -0x2

.field private static final SAFE_DEBUG:Z

.field private static final SET_FREQUNCY_PARAM_PATH:Ljava/lang/String; = "/dev/block/param"

.field private static final SYSTEM_UI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "VibratorService"

.field private static final TYPE_MAGNITUDE_FEEDBACK:I = 0x0

.field private static final TYPE_MAGNITUDE_FORCE:I = 0x3

.field private static final TYPE_MAGNITUDE_NOTIFICATION:I = 0x2

.field private static final TYPE_MAGNITUDE_RECVCALL:I = 0x1

.field private static final TYPE_URI:[Ljava/lang/String;

.field private static final VIB_DEBUG:Z = true

.field private static sMuteLogInfos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/VibratorService$MuteLogInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sMutedInfos:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/VibratorService$MuteInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private LEVEL_TO_FORCE_MAGNITUDE:[I

.field private LEVEL_TO_MAGNITUDE:[I

.field private LEVEL_TO_TOUCH_MAGNITUDE:[I

.field private final mAbortLogInfos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/VibratorService$AbortLogInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mActAlwaysPkgs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllowPriorityVibrationsInLowPowerMode:Z

.field private final mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

.field private mCallMagnitude:I

.field private mCallMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

.field private mCameraOn:Z

.field private mCheckExecutable:I

.field private mCheckExecutablePkg:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurVibUid:I

.field private mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

.field private final mDefaultVibrationAmplitude:I

.field private final mFallbackEffects:[Landroid/os/VibrationEffect;

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

.field private mIsEnableIntensity:Z

.field private mIsForceTouchIntensitySupported:Z

.field private mIsFrequencySupported:Z

.field private mIsHapticEngineSupported:Z

.field private mIsHapticSupported:Z

.field private mLowPowerMode:Z

.field private mMaxMagnitude:I

.field private mMinMagnitude:I

.field private mMotorType:I

.field private mNotiMagnitude:I

.field private mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

.field private mPatternInfo_A:Lcom/android/server/VibratorService$PatternInfo;

.field private mPatternInfo_B:Lcom/android/server/VibratorService$PatternInfo;

.field private mPatternInfo_C:Lcom/android/server/VibratorService$PatternInfo;

.field private mPatternInfo_D:Lcom/android/server/VibratorService$PatternInfo;

.field private mPatternInfo_E:Lcom/android/server/VibratorService$PatternInfo;

.field private mPatternInfo_F:Lcom/android/server/VibratorService$PatternInfo;

.field private mPatternInfo_G:Lcom/android/server/VibratorService$PatternInfo;

.field private mPatternInfo_H:Lcom/android/server/VibratorService$PatternInfo;

.field private mPatternInfo_I:Lcom/android/server/VibratorService$PatternInfo;

.field private mPatternInfo_J:Lcom/android/server/VibratorService$PatternInfo;

.field private mPatternInfo_K:Lcom/android/server/VibratorService$PatternInfo;

.field private mPatternInfo_L:Lcom/android/server/VibratorService$PatternInfo;

.field private mPatternInfo_M:Lcom/android/server/VibratorService$PatternInfo;

.field private mPatternInfo_N:Lcom/android/server/VibratorService$PatternInfo;

.field private mPatternInfo_O:Lcom/android/server/VibratorService$PatternInfo;

.field private mPatternInfo_P:Lcom/android/server/VibratorService$PatternInfo;

.field private mPatternInfo_Q:Lcom/android/server/VibratorService$PatternInfo;

.field private mPatternInfo_R:Lcom/android/server/VibratorService$PatternInfo;

.field private mPatternInfo_S:Lcom/android/server/VibratorService$PatternInfo;

.field private mPatternInfo_T:Lcom/android/server/VibratorService$PatternInfo;

.field private mPatternInfo_U:Lcom/android/server/VibratorService$PatternInfo;

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

.field private final mSupportsAmplitudeControl:Z

.field private mTempMagnitude:I

.field private volatile mThread:Lcom/android/server/VibratorService$VibrateThread;

.field private final mTimeFormat:Ljava/text/SimpleDateFormat;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mTouchMagnitude:I

.field private mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

.field private mUseMax:Z

.field private mVibePatternHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<[J",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVibrateInputDevicesSetting:Z

.field private final mVibrationEndRunnable:Ljava/lang/Runnable;

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
.method static synthetic -get0(Lcom/android/server/VibratorService;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/VibratorService;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/VibratorService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get15()Ljava/util/Hashtable;
    .locals 1

    sget-object v0, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/VibratorService;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    return-object v0
.end method

.method static synthetic -get3()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    return v0
.end method

.method static synthetic -get4()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;

    return-object v0
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

    iget v0, p0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/VibratorService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/VibratorService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsForceTouchIntensitySupported:Z

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

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_FORCE:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v1}, Landroid/os/Vibrator$SemMagnitudeTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v1}, Landroid/os/Vibrator$SemMagnitudeTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MIN:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v1}, Landroid/os/Vibrator$SemMagnitudeTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_NOTIFICATION:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v1}, Landroid/os/Vibrator$SemMagnitudeTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v1}, Landroid/os/Vibrator$SemMagnitudeTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x7

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

.method static synthetic -set1(Lcom/android/server/VibratorService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/VibratorService;->mCameraOn:Z

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

.method static synthetic -set4(Lcom/android/server/VibratorService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$VibrateThread;)Lcom/android/server/VibratorService$VibrateThread;
    .locals 0

    iput-object p1, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/server/VibratorService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    return p1
.end method

.method static synthetic -wrap0(Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/VibratorService;->getMuteInfoKey(Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/VibratorService;->addToMuteLogInfos(Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/VibratorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/VibratorService;JIIIII)V
    .locals 1

    invoke-direct/range {p0 .. p7}, Lcom/android/server/VibratorService;->doVibratorOn(JIIIII)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/VibratorService;JII[IIII)V
    .locals 1

    invoke-direct/range {p0 .. p8}, Lcom/android/server/VibratorService;->doVibratorOn(JII[IIII)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/VibratorService;JIIII)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/android/server/VibratorService;->doVibratorOn(JIIII)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/VibratorService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/VibratorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/VibratorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_SystemUI_ConfigDndExceptionPackage"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/VibratorService;->PKG_ACT_ALWAYS:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "VIB_FEEDBACK_MAGNITUDE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "VIB_RECVCALL_MAGNITUDE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "SEM_VIBRATION_NOTIFICATION_INTENSITY"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "SEM_VIBRATION_FORCE_TOUCH_INTENSITY"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 17

    invoke-direct/range {p0 .. p0}, Landroid/os/IVibratorService$Stub;-><init>()V

    new-instance v14, Landroid/os/WorkSource;

    invoke-direct {v14}, Landroid/os/WorkSource;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    new-instance v14, Landroid/os/Handler;

    invoke-direct {v14}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/VibratorService;->mCurVibUid:I

    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string/jumbo v15, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mTimeFormat:Ljava/text/SimpleDateFormat;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/VibratorService;->mHasVibrator:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/VibratorService;->mIsForceTouchIntensitySupported:Z

    const-string/jumbo v14, "Max"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v15

    const-string/jumbo v16, "CscFeature_Framework_ConfigVibService"

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/VibratorService;->mUseMax:Z

    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mActAlwaysPkgs:Ljava/util/HashSet;

    const/16 v14, 0x270f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    const/16 v14, 0x270f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    const/16 v14, 0x270f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    const/16 v14, 0x270f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/VibratorService;->mMaxMagnitude:I

    const/16 v14, 0x270f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/VibratorService;->mMinMagnitude:I

    const/16 v14, 0x270f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/VibratorService;->mMotorType:I

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mVibePatternHash:Ljava/util/HashMap;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/VibratorService;->mCheckExecutable:I

    const-string/jumbo v14, ""

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mCheckExecutablePkg:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/VibratorService;->mCameraOn:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/VibratorService;->mHMTMount:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/VibratorService;->mHMTMountCount:I

    new-instance v14, Lcom/android/server/VibratorService$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/server/VibratorService$1;-><init>(Lcom/android/server/VibratorService;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    new-instance v14, Lcom/android/server/VibratorService$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/server/VibratorService$2;-><init>(Lcom/android/server/VibratorService;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    invoke-static {}, Lcom/android/server/VibratorService;->vibratorInit()V

    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    invoke-static {}, Lcom/android/server/VibratorService;->vibratorSupportsAmplitudeControl()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManager;

    const-string/jumbo v14, "*vibrator*"

    const/4 v15, 0x1

    invoke-virtual {v10, v15, v14}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string/jumbo v14, "appops"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const-string/jumbo v14, "batterystats"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10e009b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10e0045

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/VibratorService;->mAllowPriorityVibrationsInLowPowerMode:Z

    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mPreviousNoTouchVibrations:Ljava/util/LinkedList;

    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    sput-object v14, Lcom/android/server/VibratorService;->sMuteLogInfos:Ljava/util/LinkedList;

    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mAbortLogInfos:Ljava/util/LinkedList;

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v14, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v14, "com.sec.android.app.camera.ACTION_CAMERA_START"

    invoke-virtual {v6, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v14, "com.sec.android.app.camera.ACTION_CAMERA_STOP"

    invoke-virtual {v6, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1070098

    invoke-static {v14, v15}, Lcom/android/server/VibratorService;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    array-length v14, v4

    if-nez v14, :cond_0

    const/4 v3, 0x0

    :goto_0
    const/4 v14, 0x4

    new-array v14, v14, [J

    fill-array-data v14, :array_0

    const/4 v15, -0x1

    invoke-static {v14, v15}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v5

    const/4 v14, 0x2

    new-array v14, v14, [Landroid/os/VibrationEffect;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    const/4 v15, 0x1

    aput-object v5, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mFallbackEffects:[Landroid/os/VibrationEffect;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/VibratorService;->mUseMax:Z

    if-eqz v14, :cond_2

    sget-object v14, Lcom/android/server/VibratorService;->PKG_ACT_ALWAYS:Ljava/lang/String;

    const-string/jumbo v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    :goto_1
    array-length v14, v2

    if-ge v7, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/VibratorService;->mActAlwaysPkgs:Ljava/util/HashSet;

    aget-object v15, v2, v7

    invoke-virtual {v14, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    array-length v14, v4

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    const/4 v14, 0x0

    aget-wide v14, v4, v14

    const/16 v16, -0x1

    invoke-static/range {v14 .. v16}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v14, -0x1

    invoke-static {v4, v14}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v14, 0x1070083

    const/4 v15, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14, v15}, Lcom/android/server/VibratorService;->createPatternInfo(Landroid/content/res/Resources;II)Lcom/android/server/VibratorService$PatternInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mPatternInfo_A:Lcom/android/server/VibratorService$PatternInfo;

    const v14, 0x1070084

    const/4 v15, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14, v15}, Lcom/android/server/VibratorService;->createPatternInfo(Landroid/content/res/Resources;II)Lcom/android/server/VibratorService$PatternInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mPatternInfo_B:Lcom/android/server/VibratorService$PatternInfo;

    const v14, 0x1070085

    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14, v15}, Lcom/android/server/VibratorService;->createPatternInfo(Landroid/content/res/Resources;II)Lcom/android/server/VibratorService$PatternInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mPatternInfo_C:Lcom/android/server/VibratorService$PatternInfo;

    const v14, 0x1070086

    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14, v15}, Lcom/android/server/VibratorService;->createPatternInfo(Landroid/content/res/Resources;II)Lcom/android/server/VibratorService$PatternInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mPatternInfo_D:Lcom/android/server/VibratorService$PatternInfo;

    const v14, 0x1070087

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14, v15}, Lcom/android/server/VibratorService;->createPatternInfo(Landroid/content/res/Resources;II)Lcom/android/server/VibratorService$PatternInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mPatternInfo_E:Lcom/android/server/VibratorService$PatternInfo;

    const v14, 0x1070088

    const/4 v15, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14, v15}, Lcom/android/server/VibratorService;->createPatternInfo(Landroid/content/res/Resources;II)Lcom/android/server/VibratorService$PatternInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mPatternInfo_F:Lcom/android/server/VibratorService$PatternInfo;

    const v14, 0x1070089

    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14, v15}, Lcom/android/server/VibratorService;->createPatternInfo(Landroid/content/res/Resources;II)Lcom/android/server/VibratorService$PatternInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mPatternInfo_G:Lcom/android/server/VibratorService$PatternInfo;

    const v14, 0x107008a

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14, v15}, Lcom/android/server/VibratorService;->createPatternInfo(Landroid/content/res/Resources;II)Lcom/android/server/VibratorService$PatternInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mPatternInfo_H:Lcom/android/server/VibratorService$PatternInfo;

    const v14, 0x107008b

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14, v15}, Lcom/android/server/VibratorService;->createPatternInfo(Landroid/content/res/Resources;II)Lcom/android/server/VibratorService$PatternInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mPatternInfo_I:Lcom/android/server/VibratorService$PatternInfo;

    const v14, 0x107008c

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14, v15}, Lcom/android/server/VibratorService;->createPatternInfo(Landroid/content/res/Resources;II)Lcom/android/server/VibratorService$PatternInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mPatternInfo_J:Lcom/android/server/VibratorService$PatternInfo;

    const v14, 0x107008d

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14, v15}, Lcom/android/server/VibratorService;->createPatternInfo(Landroid/content/res/Resources;II)Lcom/android/server/VibratorService$PatternInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mPatternInfo_K:Lcom/android/server/VibratorService$PatternInfo;

    const v14, 0x107008e

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14, v15}, Lcom/android/server/VibratorService;->createPatternInfo(Landroid/content/res/Resources;II)Lcom/android/server/VibratorService$PatternInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mPatternInfo_L:Lcom/android/server/VibratorService$PatternInfo;

    const v14, 0x107008f

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14, v15}, Lcom/android/server/VibratorService;->createPatternInfo(Landroid/content/res/Resources;II)Lcom/android/server/VibratorService$PatternInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mPatternInfo_M:Lcom/android/server/VibratorService$PatternInfo;

    const v14, 0x1070090

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14, v15}, Lcom/android/server/VibratorService;->createPatternInfo(Landroid/content/res/Resources;II)Lcom/android/server/VibratorService$PatternInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mPatternInfo_N:Lcom/android/server/VibratorService$PatternInfo;

    const v14, 0x1070091

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14, v15}, Lcom/android/server/VibratorService;->createPatternInfo(Landroid/content/res/Resources;II)Lcom/android/server/VibratorService$PatternInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mPatternInfo_O:Lcom/android/server/VibratorService$PatternInfo;

    const v14, 0x1070092

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14, v15}, Lcom/android/server/VibratorService;->createPatternInfo(Landroid/content/res/Resources;II)Lcom/android/server/VibratorService$PatternInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mPatternInfo_P:Lcom/android/server/VibratorService$PatternInfo;

    const v14, 0x1070093

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14, v15}, Lcom/android/server/VibratorService;->createPatternInfo(Landroid/content/res/Resources;II)Lcom/android/server/VibratorService$PatternInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mPatternInfo_Q:Lcom/android/server/VibratorService$PatternInfo;

    const v14, 0x1070094

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14, v15}, Lcom/android/server/VibratorService;->createPatternInfo(Landroid/content/res/Resources;II)Lcom/android/server/VibratorService$PatternInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mPatternInfo_R:Lcom/android/server/VibratorService$PatternInfo;

    const v14, 0x1070095

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14, v15}, Lcom/android/server/VibratorService;->createPatternInfo(Landroid/content/res/Resources;II)Lcom/android/server/VibratorService$PatternInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mPatternInfo_S:Lcom/android/server/VibratorService$PatternInfo;

    const v14, 0x1070096

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14, v15}, Lcom/android/server/VibratorService;->createPatternInfo(Landroid/content/res/Resources;II)Lcom/android/server/VibratorService$PatternInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mPatternInfo_T:Lcom/android/server/VibratorService$PatternInfo;

    const v14, 0x1070097

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14, v15}, Lcom/android/server/VibratorService;->createPatternInfo(Landroid/content/res/Resources;II)Lcom/android/server/VibratorService$PatternInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mPatternInfo_U:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {}, Lcom/android/server/VibratorService;->getVibratorMotorType()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/VibratorService;->mMotorType:I

    sget-boolean v14, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v14, :cond_3

    const-string/jumbo v14, "VibratorService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mMType : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/VibratorService;->mMotorType:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorFrequencyExist()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    sget-boolean v14, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v14, :cond_4

    const-string/jumbo v14, "VibratorService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "f : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorEngineExist()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    sget-boolean v14, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v14, :cond_5

    const-string/jumbo v14, "VibratorService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "e : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorForceTouchIntensityExist()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/VibratorService;->mIsForceTouchIntensitySupported:Z

    sget-boolean v14, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v14, :cond_6

    const-string/jumbo v14, "VibratorService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "f.t.i : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/VibratorService;->mIsForceTouchIntensitySupported:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/VibratorService;->mMotorType:I

    packed-switch v14, :pswitch_data_0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    if-eqz v14, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    array-length v14, v14

    add-int/lit8 v9, v14, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    array-length v14, v14

    add-int/lit8 v13, v14, -0x1

    const/4 v14, 0x2

    if-lt v9, v14, :cond_7

    const/4 v14, 0x2

    if-ge v13, v14, :cond_9

    :cond_7
    const-string/jumbo v14, "VibratorService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "magnitudeMaxLevel : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", touchMagnitudeMaxLevel : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x107007e

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1070080

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    :goto_3
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x107007d

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x107007f

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    goto :goto_3

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1070082

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1070082

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    aget v14, v14, v13

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v14, v14, v9

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v14, v14, v9

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v14, v14, v9

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/VibratorService;->mMaxMagnitude:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/VibratorService;->mMinMagnitude:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v14, Lcom/android/server/VibratorService$SecSettingsObserver;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/android/server/VibratorService$SecSettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    new-instance v14, Lcom/android/server/VibratorService$SecSettingsObserver;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/android/server/VibratorService$SecSettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mCallMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    new-instance v14, Lcom/android/server/VibratorService$SecSettingsObserver;

    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/android/server/VibratorService$SecSettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v15, Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-static {v14, v15, v13, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-le v8, v13, :cond_a

    :goto_4
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v15, Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-static {v14, v15, v9, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-le v8, v9, :cond_b

    :goto_5
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v15, Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;

    const/16 v16, 0x2

    aget-object v15, v15, v16

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-static {v14, v15, v9, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-le v8, v9, :cond_c

    move v14, v8

    :goto_6
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1070081

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    new-instance v14, Lcom/android/server/VibratorService$SecSettingsObserver;

    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/android/server/VibratorService$SecSettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/VibratorService;->mForceMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    array-length v14, v14

    add-int/lit8 v12, v14, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    aget v14, v14, v12

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    const/4 v14, 0x2

    if-ge v12, v14, :cond_d

    const-string/jumbo v14, "VibratorService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "touchForceMagnitudeMaxLevel : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    aget v8, v14, v8

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v8, v14, v8

    goto :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v14, v14, v8

    goto :goto_6

    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v15, Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;

    const/16 v16, 0x3

    aget-object v15, v15, v16

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-static {v14, v15, v12, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-le v8, v12, :cond_10

    move v14, v8

    :goto_7
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/VibratorService;->mIsForceTouchIntensitySupported:Z

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    int-to-long v14, v14

    invoke-static {v14, v15}, Lcom/android/server/VibratorService;->vibratorForceTouchIntensity(J)V

    :cond_e
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/VibratorService;->setIntensity(I)V

    :cond_f
    return-void

    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    aget v14, v14, v8

    goto :goto_7

    :array_0
    .array-data 8
        0x0
        0x1e
        0x64
        0x1e
    .end array-data

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private addAbortedVibration(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v7, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    monitor-enter v7

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VibratorService;->addToAbortLogInfos(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v6, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    invoke-virtual {v6, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/VibratorService$MuteInfo;

    const/4 v2, 0x0

    invoke-static {v5}, Lcom/android/server/VibratorService$MuteInfo;->-get0(Lcom/android/server/VibratorService$MuteInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_NOTIFICATION:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v6}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/android/server/VibratorService$MuteInfo;->-get0(Lcom/android/server/VibratorService$MuteInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_EXTRA:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v6}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_3
    invoke-static {v5}, Lcom/android/server/VibratorService$MuteInfo;->-wrap0(Lcom/android/server/VibratorService$MuteInfo;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VibratorService$AbortVibration;

    invoke-static {v0}, Lcom/android/server/VibratorService$AbortVibration;->-wrap1(Lcom/android/server/VibratorService$AbortVibration;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v2, 0x1

    invoke-static {v0}, Lcom/android/server/VibratorService$AbortVibration;->-wrap2(Lcom/android/server/VibratorService$AbortVibration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_5
    if-nez v2, :cond_2

    :try_start_1
    new-instance v0, Lcom/android/server/VibratorService$AbortVibration;

    const/4 v6, 0x0

    invoke-direct {v0, v6}, Lcom/android/server/VibratorService$AbortVibration;-><init>(Lcom/android/server/VibratorService$AbortVibration;)V

    invoke-static {v0, p2}, Lcom/android/server/VibratorService$AbortVibration;->-wrap3(Lcom/android/server/VibratorService$AbortVibration;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/VibratorService$AbortVibration;->-wrap2(Lcom/android/server/VibratorService$AbortVibration;)V

    invoke-static {v5, v0}, Lcom/android/server/VibratorService$MuteInfo;->-wrap1(Lcom/android/server/VibratorService$MuteInfo;Lcom/android/server/VibratorService$AbortVibration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_6
    monitor-exit v7

    return-void
.end method

.method private addToAbortLogInfos(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v1, p0, Lcom/android/server/VibratorService;->mAbortLogInfos:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mAbortLogInfos:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mTimeFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mAbortLogInfos:Ljava/util/LinkedList;

    new-instance v2, Lcom/android/server/VibratorService$AbortLogInfo;

    invoke-direct {v2, v0, p1, p2}, Lcom/android/server/VibratorService$AbortLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method private static addToMuteLogInfos(Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;)V
    .locals 8

    sget-object v0, Lcom/android/server/VibratorService;->sMuteLogInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v2, 0xf

    if-le v0, v2, :cond_0

    sget-object v0, Lcom/android/server/VibratorService;->sMuteLogInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v6, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/android/server/VibratorService;->sMuteLogInfos:Ljava/util/LinkedList;

    new-instance v0, Lcom/android/server/VibratorService$MuteLogInfo;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/VibratorService$MuteLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method private addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 21

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
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mTimeFormat:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    new-instance v3, Lcom/android/server/VibratorService$VibrationInfo;

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get10(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v4

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get2(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get14(Lcom/android/server/VibratorService$Vibration;)I

    move-result v7

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get13(Lcom/android/server/VibratorService$Vibration;)I

    move-result v8

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get7(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get11(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v10

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get8(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v12

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get9(Lcom/android/server/VibratorService$Vibration;)I

    move-result v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-eqz v14, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v14

    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)I

    move-result v15

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get3(Lcom/android/server/VibratorService$Vibration;)[I

    move-result-object v16

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v17

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get6(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v3 .. v19}, Lcom/android/server/VibratorService$VibrationInfo;-><init>(JLandroid/os/VibrationEffect;IILjava/lang/String;J[JIII[IILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get6(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Vibrator$SemMagnitudeTypes;->valueOf(Ljava/lang/String;)Landroid/os/Vibrator$SemMagnitudeTypes;

    move-result-object v2

    sget-object v3, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v2, v3}, Landroid/os/Vibrator$SemMagnitudeTypes;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_FORCE:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v2, v3}, Landroid/os/Vibrator$SemMagnitudeTypes;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mPreviousNoTouchVibrations:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    if-le v3, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mPreviousNoTouchVibrations:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService;->mPreviousNoTouchVibrations:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    new-instance v3, Lcom/android/server/VibratorService$VibrationInfo;

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get10(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v4

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get2(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get14(Lcom/android/server/VibratorService$Vibration;)I

    move-result v7

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get13(Lcom/android/server/VibratorService$Vibration;)I

    move-result v8

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get7(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get11(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v10

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get8(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v12

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get9(Lcom/android/server/VibratorService$Vibration;)I

    move-result v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-eqz v14, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v14

    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)I

    move-result v15

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get3(Lcom/android/server/VibratorService$Vibration;)[I

    move-result-object v16

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v17

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get6(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v3 .. v19}, Lcom/android/server/VibratorService$VibrationInfo;-><init>(JLandroid/os/VibrationEffect;IILjava/lang/String;J[JIII[IILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    const/4 v14, -0x1

    goto/16 :goto_0

    :cond_4
    const/4 v14, -0x1

    goto :goto_1
.end method

.method private doCancelVibrateLocked()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrateThread;->cancel()V

    iput-object v1, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    :cond_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    iget-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/server/VibratorService;->reportFinishVibrationLocked()V

    return-void
.end method

.method private doVibratorExists()Z
    .locals 1

    invoke-static {}, Lcom/android/server/VibratorService;->vibratorExists()Z

    move-result v0

    return v0
.end method

.method private doVibratorOff()V
    .locals 5

    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->noteVibratorOffLocked()V

    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "VibratorService"

    const-string/jumbo v4, "Turning vibrator off"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private doVibratorOn(JIII)V
    .locals 5

    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v4

    const/4 v3, -0x1

    if-ne p3, v3, :cond_0

    :try_start_0
    iget p3, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    :cond_0
    invoke-direct {p0, p4, p1, p2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v3, p5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    invoke-virtual {v3, p1, p2, v0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->vibratorOn(J)V

    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private doVibratorOn(JIIII)V
    .locals 9

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    iget-object v5, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v3, p4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    invoke-virtual {v3, p1, p2, v0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v5, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/server/VibratorService;->mHMTMountCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/VibratorService;->mHMTMountCount:I

    const-string/jumbo v5, "VibratorService"

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

    const-string/jumbo v7, ", mag :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", f : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-eqz v7, :cond_2

    :goto_1
    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " is not working because HMTMount is TRUE."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_2
    monitor-exit v4

    return-void

    :cond_2
    move p6, v3

    goto :goto_1

    :cond_3
    :try_start_1
    const-string/jumbo v5, "VibratorService"

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

    const-string/jumbo v7, ", mag :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", f : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-eqz v7, :cond_4

    move v3, p6

    :cond_4
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p6}, Lcom/android/server/VibratorService;->setFrequency(I)V

    invoke-direct {p0, p5}, Lcom/android/server/VibratorService;->setIntensity(I)V

    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->vibratorOn(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private doVibratorOn(JIIIII)V
    .locals 11

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v5

    if-ne p3, v4, :cond_0

    :try_start_0
    iget p3, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    :cond_0
    invoke-direct {p0, p4, p1, p2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    iget-object v6, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    invoke-virtual {v4, p1, p2, v1}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v6, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    if-eqz v6, :cond_4

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

    const-string/jumbo v8, ", amplitude :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", mag :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", f : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-eqz v8, :cond_3

    :goto_1
    move/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, " is not working because HMTMount is TRUE."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_2
    monitor-exit v5

    return-void

    :cond_3
    move/from16 p7, v4

    goto :goto_1

    :cond_4
    :try_start_1
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

    const-string/jumbo v8, ", amplitude :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", mag :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", f : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-eqz v8, :cond_5

    move/from16 v4, p7

    :cond_5
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->setFrequency(I)V

    move/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->setIntensity(I)V

    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->vibratorOn(J)V

    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private doVibratorOn(JII[IIII)V
    .locals 7

    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v3, p4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    invoke-virtual {v3, p1, p2, v0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v3, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/server/VibratorService;->mHMTMountCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/VibratorService;->mHMTMountCount:I

    const-string/jumbo v3, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vibratorOn() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mag :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is not working because HMTMount is TRUE."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v4

    return-void

    :cond_2
    :try_start_1
    const-string/jumbo v3, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vibratorOn() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mag :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    if-le p8, v3, :cond_3

    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    :cond_3
    invoke-virtual {p5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    invoke-static {v3, p6, p8}, Lcom/android/server/VibratorService;->vibratorEngine([III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private doVibratorPrebakedEffectLocked(Lcom/android/server/VibratorService$Vibration;)J
    .locals 14

    iget-object v13, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v13

    :try_start_0
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get2(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v9

    check-cast v9, Landroid/os/VibrationEffect$Prebaked;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v9}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v1

    int-to-long v4, v1

    const-wide/16 v6, 0x1

    invoke-static {v4, v5, v6, v7}, Lcom/android/server/VibratorService;->vibratorPerformEffect(JJ)J

    move-result-wide v10

    const-wide/16 v4, 0x0

    cmp-long v1, v10, v4

    if-lez v1, :cond_0

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get13(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    invoke-direct {p0, v1, v10, v11}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v13

    return-wide v10

    :cond_0
    :try_start_1
    invoke-virtual {v9}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v8

    if-ltz v8, :cond_1

    iget-object v1, p0, Lcom/android/server/VibratorService;->mFallbackEffects:[Landroid/os/VibrationEffect;

    array-length v1, v1

    if-lt v8, v1, :cond_2

    :cond_1
    const-string/jumbo v1, "VibratorService"

    const-string/jumbo v2, "Failed to play prebaked effect, no fallback"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v4, 0x0

    monitor-exit v13

    return-wide v4

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/VibratorService;->mFallbackEffects:[Landroid/os/VibrationEffect;

    aget-object v1, v1, v8

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/VibratorService;->mFallbackEffects:[Landroid/os/VibrationEffect;

    aget-object v3, v1, v8

    new-instance v0, Lcom/android/server/VibratorService$Vibration;

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get12(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get14(Lcom/android/server/VibratorService$Vibration;)I

    move-result v4

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get13(Lcom/android/server/VibratorService$Vibration;)I

    move-result v5

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get7(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;Lcom/android/server/VibratorService$Vibration;)V

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v13

    const-wide/16 v4, 0x0

    return-wide v4

    :catchall_0
    move-exception v1

    monitor-exit v13

    throw v1
.end method

.method private doVibratorSetAmplitude(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/VibratorService;->vibratorSetAmplitude(I)V

    :cond_0
    return-void
.end method

.method private getAppOpMode(Lcom/android/server/VibratorService$Vibration;)I
    .locals 7

    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get14(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get13(Lcom/android/server/VibratorService$Vibration;)I

    move-result v4

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get7(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v2, v6, v3, v4, v5}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v3}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get13(Lcom/android/server/VibratorService$Vibration;)I

    move-result v4

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get7(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v2, v3, v6, v4, v5}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "VibratorService"

    const-string/jumbo v3, "Failed to get appop mode for vibration!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getColorfulData(I)[I
    .locals 1

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    filled-new-array {v0, v0}, [I

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPatternInfo_A:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v0}, Lcom/android/server/VibratorService$PatternInfo;->-get0(Lcom/android/server/VibratorService$PatternInfo;)[I

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPatternInfo_B:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v0}, Lcom/android/server/VibratorService$PatternInfo;->-get0(Lcom/android/server/VibratorService$PatternInfo;)[I

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPatternInfo_C:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v0}, Lcom/android/server/VibratorService$PatternInfo;->-get0(Lcom/android/server/VibratorService$PatternInfo;)[I

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPatternInfo_D:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v0}, Lcom/android/server/VibratorService$PatternInfo;->-get0(Lcom/android/server/VibratorService$PatternInfo;)[I

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPatternInfo_E:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v0}, Lcom/android/server/VibratorService$PatternInfo;->-get0(Lcom/android/server/VibratorService$PatternInfo;)[I

    move-result-object v0

    return-object v0

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPatternInfo_F:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v0}, Lcom/android/server/VibratorService$PatternInfo;->-get0(Lcom/android/server/VibratorService$PatternInfo;)[I

    move-result-object v0

    return-object v0

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPatternInfo_G:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v0}, Lcom/android/server/VibratorService$PatternInfo;->-get0(Lcom/android/server/VibratorService$PatternInfo;)[I

    move-result-object v0

    return-object v0

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPatternInfo_H:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v0}, Lcom/android/server/VibratorService$PatternInfo;->-get0(Lcom/android/server/VibratorService$PatternInfo;)[I

    move-result-object v0

    return-object v0

    :pswitch_8
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPatternInfo_I:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v0}, Lcom/android/server/VibratorService$PatternInfo;->-get0(Lcom/android/server/VibratorService$PatternInfo;)[I

    move-result-object v0

    return-object v0

    :pswitch_9
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPatternInfo_J:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v0}, Lcom/android/server/VibratorService$PatternInfo;->-get0(Lcom/android/server/VibratorService$PatternInfo;)[I

    move-result-object v0

    return-object v0

    :pswitch_a
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPatternInfo_K:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v0}, Lcom/android/server/VibratorService$PatternInfo;->-get0(Lcom/android/server/VibratorService$PatternInfo;)[I

    move-result-object v0

    return-object v0

    :pswitch_b
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPatternInfo_L:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v0}, Lcom/android/server/VibratorService$PatternInfo;->-get0(Lcom/android/server/VibratorService$PatternInfo;)[I

    move-result-object v0

    return-object v0

    :pswitch_c
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPatternInfo_M:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v0}, Lcom/android/server/VibratorService$PatternInfo;->-get0(Lcom/android/server/VibratorService$PatternInfo;)[I

    move-result-object v0

    return-object v0

    :pswitch_d
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPatternInfo_N:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v0}, Lcom/android/server/VibratorService$PatternInfo;->-get0(Lcom/android/server/VibratorService$PatternInfo;)[I

    move-result-object v0

    return-object v0

    :pswitch_e
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPatternInfo_O:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v0}, Lcom/android/server/VibratorService$PatternInfo;->-get0(Lcom/android/server/VibratorService$PatternInfo;)[I

    move-result-object v0

    return-object v0

    :pswitch_f
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPatternInfo_P:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v0}, Lcom/android/server/VibratorService$PatternInfo;->-get0(Lcom/android/server/VibratorService$PatternInfo;)[I

    move-result-object v0

    return-object v0

    :pswitch_10
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPatternInfo_Q:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v0}, Lcom/android/server/VibratorService$PatternInfo;->-get0(Lcom/android/server/VibratorService$PatternInfo;)[I

    move-result-object v0

    return-object v0

    :pswitch_11
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPatternInfo_R:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v0}, Lcom/android/server/VibratorService$PatternInfo;->-get0(Lcom/android/server/VibratorService$PatternInfo;)[I

    move-result-object v0

    return-object v0

    :pswitch_12
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPatternInfo_S:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v0}, Lcom/android/server/VibratorService$PatternInfo;->-get0(Lcom/android/server/VibratorService$PatternInfo;)[I

    move-result-object v0

    return-object v0

    :pswitch_13
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPatternInfo_T:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v0}, Lcom/android/server/VibratorService$PatternInfo;->-get0(Lcom/android/server/VibratorService$PatternInfo;)[I

    move-result-object v0

    return-object v0

    :pswitch_14
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPatternInfo_U:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v0}, Lcom/android/server/VibratorService$PatternInfo;->-get0(Lcom/android/server/VibratorService$PatternInfo;)[I

    move-result-object v0

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
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
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
    .locals 2

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x2

    new-array v0, v1, [J

    fill-array-data v0, :array_0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPatternInfo_A:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v1}, Lcom/android/server/VibratorService$PatternInfo;->-get1(Lcom/android/server/VibratorService$PatternInfo;)[J

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPatternInfo_B:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v1}, Lcom/android/server/VibratorService$PatternInfo;->-get1(Lcom/android/server/VibratorService$PatternInfo;)[J

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPatternInfo_C:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v1}, Lcom/android/server/VibratorService$PatternInfo;->-get1(Lcom/android/server/VibratorService$PatternInfo;)[J

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPatternInfo_D:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v1}, Lcom/android/server/VibratorService$PatternInfo;->-get1(Lcom/android/server/VibratorService$PatternInfo;)[J

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPatternInfo_E:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v1}, Lcom/android/server/VibratorService$PatternInfo;->-get1(Lcom/android/server/VibratorService$PatternInfo;)[J

    move-result-object v0

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPatternInfo_F:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v1}, Lcom/android/server/VibratorService$PatternInfo;->-get1(Lcom/android/server/VibratorService$PatternInfo;)[J

    move-result-object v0

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPatternInfo_G:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v1}, Lcom/android/server/VibratorService$PatternInfo;->-get1(Lcom/android/server/VibratorService$PatternInfo;)[J

    move-result-object v0

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPatternInfo_H:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v1}, Lcom/android/server/VibratorService$PatternInfo;->-get1(Lcom/android/server/VibratorService$PatternInfo;)[J

    move-result-object v0

    goto :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPatternInfo_I:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v1}, Lcom/android/server/VibratorService$PatternInfo;->-get1(Lcom/android/server/VibratorService$PatternInfo;)[J

    move-result-object v0

    goto :goto_0

    :pswitch_9
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPatternInfo_J:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v1}, Lcom/android/server/VibratorService$PatternInfo;->-get1(Lcom/android/server/VibratorService$PatternInfo;)[J

    move-result-object v0

    goto :goto_0

    :pswitch_a
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPatternInfo_K:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v1}, Lcom/android/server/VibratorService$PatternInfo;->-get1(Lcom/android/server/VibratorService$PatternInfo;)[J

    move-result-object v0

    goto :goto_0

    :pswitch_b
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPatternInfo_L:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v1}, Lcom/android/server/VibratorService$PatternInfo;->-get1(Lcom/android/server/VibratorService$PatternInfo;)[J

    move-result-object v0

    goto :goto_0

    :pswitch_c
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPatternInfo_M:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v1}, Lcom/android/server/VibratorService$PatternInfo;->-get1(Lcom/android/server/VibratorService$PatternInfo;)[J

    move-result-object v0

    goto :goto_0

    :pswitch_d
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPatternInfo_N:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v1}, Lcom/android/server/VibratorService$PatternInfo;->-get1(Lcom/android/server/VibratorService$PatternInfo;)[J

    move-result-object v0

    goto :goto_0

    :pswitch_e
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPatternInfo_O:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v1}, Lcom/android/server/VibratorService$PatternInfo;->-get1(Lcom/android/server/VibratorService$PatternInfo;)[J

    move-result-object v0

    goto :goto_0

    :pswitch_f
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPatternInfo_P:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v1}, Lcom/android/server/VibratorService$PatternInfo;->-get1(Lcom/android/server/VibratorService$PatternInfo;)[J

    move-result-object v0

    goto :goto_0

    :pswitch_10
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPatternInfo_Q:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v1}, Lcom/android/server/VibratorService$PatternInfo;->-get1(Lcom/android/server/VibratorService$PatternInfo;)[J

    move-result-object v0

    goto :goto_0

    :pswitch_11
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPatternInfo_R:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v1}, Lcom/android/server/VibratorService$PatternInfo;->-get1(Lcom/android/server/VibratorService$PatternInfo;)[J

    move-result-object v0

    goto :goto_0

    :pswitch_12
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPatternInfo_S:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v1}, Lcom/android/server/VibratorService$PatternInfo;->-get1(Lcom/android/server/VibratorService$PatternInfo;)[J

    move-result-object v0

    goto/16 :goto_0

    :pswitch_13
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPatternInfo_T:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v1}, Lcom/android/server/VibratorService$PatternInfo;->-get1(Lcom/android/server/VibratorService$PatternInfo;)[J

    move-result-object v0

    goto/16 :goto_0

    :pswitch_14
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPatternInfo_U:Lcom/android/server/VibratorService$PatternInfo;

    invoke-static {v1}, Lcom/android/server/VibratorService$PatternInfo;->-get1(Lcom/android/server/VibratorService$PatternInfo;)[J

    move-result-object v0

    goto/16 :goto_0

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
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch

    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method private getCommonPatternFrequency([J)I
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternHash:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_1
    return v2
.end method

.method private getCustomPattern([I)[J
    .locals 12

    const/4 v10, 0x2

    array-length v3, p1

    array-length v8, p1

    const/4 v9, 0x4

    if-gt v8, v9, :cond_0

    new-array v8, v10, [J

    fill-array-data v8, :array_0

    return-object v8

    :cond_0
    add-int/lit8 v8, v3, -0x1

    div-int/lit8 v8, v8, 0x4

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
    add-int/lit8 v0, v0, 0x4

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

.method static getIntArray(Landroid/content/res/Resources;I)[I
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

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

.method static getLongArray(Landroid/content/res/Resources;I)[J
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

.method private static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    array-length v3, v0

    new-array v2, v3, [J

    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    aget v3, v0, v1

    int-to-long v4, v3

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private getMagnitude(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/os/Vibrator$SemMagnitudeTypes;->valueOf(Ljava/lang/String;)Landroid/os/Vibrator$SemMagnitudeTypes;

    move-result-object v0

    invoke-static {}, Lcom/android/server/VibratorService;->-getandroid-os-Vibrator$SemMagnitudeTypesSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Vibrator$SemMagnitudeTypes;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    return v3

    :pswitch_0
    iget v1, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    return v1

    :pswitch_1
    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mUseMax:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mActAlwaysPkgs:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/VibratorService;->mMaxMagnitude:I

    return v1

    :cond_0
    sget-object v2, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/VibratorService$MuteNotificationInfo;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/server/VibratorService;->addAbortedVibration(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v3

    :cond_1
    monitor-exit v2

    iget v1, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :pswitch_2
    sget-object v2, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    monitor-enter v2

    :try_start_1
    invoke-static {}, Lcom/android/server/VibratorService$MuteNotificationInfo;->-get0()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/server/VibratorService;->addAbortedVibration(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    return v3

    :cond_2
    monitor-exit v2

    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mCameraOn:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/server/VibratorService;->mMinMagnitude:I

    iget v2, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_3
    iget v1, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    return v1

    :pswitch_3
    sget-object v2, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    monitor-enter v2

    :try_start_2
    invoke-static {}, Lcom/android/server/VibratorService$MuteCallInfo;->-get0()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/android/server/VibratorService;->addAbortedVibration(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v2

    return v3

    :cond_4
    monitor-exit v2

    iget v1, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    return v1

    :catchall_2
    move-exception v1

    monitor-exit v2

    throw v1

    :pswitch_4
    iget v1, p0, Lcom/android/server/VibratorService;->mMaxMagnitude:I

    return v1

    :pswitch_5
    iget v1, p0, Lcom/android/server/VibratorService;->mMinMagnitude:I

    return v1

    :pswitch_6
    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    return v1

    :cond_5
    iget v1, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_0
    .end packed-switch
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

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private static getMuteInfoKey(Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static native getVibratorMotorType()I
.end method

.method private hasColorfulData(I[I)Z
    .locals 3

    const/4 v2, 0x0

    array-length v0, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    aget v0, p2, v2

    if-gez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private initEngineData(Landroid/content/res/Resources;I)[I
    .locals 2

    const/4 v1, -0x1

    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->getIntArray(Landroid/content/res/Resources;I)[I

    move-result-object v0

    if-nez v0, :cond_0

    filled-new-array {v1, v1}, [I

    move-result-object v1

    return-object v1

    :cond_0
    return-object v0
.end method

.method private initPattern(Landroid/content/res/Resources;II)[J
    .locals 3

    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->getLongArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternHash:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

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

.method private isAllowedToVibrate(Lcom/android/server/VibratorService$Vibration;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get14(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mAllowPriorityVibrationsInLowPowerMode:Z

    if-nez v0, :cond_2

    return v3

    :cond_2
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get14(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get14(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    :cond_3
    return v2

    :cond_4
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get14(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    return v3
.end method

.method private isColorfulDataFormat([I)Z
    .locals 7

    const/4 v6, 0x0

    array-length v2, p1

    add-int/lit8 v1, v2, -0x1

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    div-int/lit8 v3, v1, 0x4

    mul-int/lit8 v3, v3, 0x4

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

.method private noteVibratorOffLocked()V
    .locals 3

    iget v1, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    if-ltz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    iget v2, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOff(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private noteVibratorOnLocked(IJ)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    iput p1, p0, Lcom/android/server/VibratorService;->mCurVibUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
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

    invoke-static {v1}, Lcom/android/server/VibratorService$Vibration;->-get12(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    invoke-direct {p0, v1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v2}, Lcom/android/server/VibratorService$Vibration;->-get12(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

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

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get13(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v4}, Lcom/android/server/VibratorService$Vibration;->-get7(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

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

    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

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

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

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

.method private startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 14

    iput-object p1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get3(Lcom/android/server/VibratorService$Vibration;)[I

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get9(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    if-gez v0, :cond_1

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get11(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get13(Lcom/android/server/VibratorService$Vibration;)I

    move-result v4

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get14(Lcom/android/server/VibratorService$Vibration;)I

    move-result v5

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get3(Lcom/android/server/VibratorService$Vibration;)[I

    move-result-object v6

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v7

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)I

    move-result v8

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get9(Lcom/android/server/VibratorService$Vibration;)I

    move-result v9

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/server/VibratorService;->doVibratorOn(JII[IIII)V

    iget-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get11(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v4

    const-wide/16 v6, 0xa

    add-long/2addr v4, v6

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/server/VibratorService$VibrateThread;

    invoke-direct {v0, p0, p1}, Lcom/android/server/VibratorService$VibrateThread;-><init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrateThread;->start()V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get2(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v0

    instance-of v0, v0, Landroid/os/VibrationEffect$OneShot;

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get2(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v10

    check-cast v10, Landroid/os/VibrationEffect$OneShot;

    invoke-virtual {v10}, Landroid/os/VibrationEffect$OneShot;->getTiming()J

    move-result-wide v2

    invoke-virtual {v10}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v4

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get13(Lcom/android/server/VibratorService$Vibration;)I

    move-result v5

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get14(Lcom/android/server/VibratorService$Vibration;)I

    move-result v6

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v7

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/VibratorService;->doVibratorOn(JIIIII)V

    iget-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10}, Landroid/os/VibrationEffect$OneShot;->getTiming()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get2(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v0

    instance-of v0, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get2(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v3

    check-cast v3, Landroid/os/VibrationEffect$Waveform;

    new-instance v0, Lcom/android/server/VibratorService$VibrateThread;

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get13(Lcom/android/server/VibratorService$Vibration;)I

    move-result v4

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get14(Lcom/android/server/VibratorService$Vibration;)I

    move-result v5

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v6

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v7

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/VibratorService$VibrateThread;-><init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;Landroid/os/VibrationEffect$Waveform;IIII)V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrateThread;->start()V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get2(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v0

    instance-of v0, v0, Landroid/os/VibrationEffect$Prebaked;

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorPrebakedEffectLocked(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v12

    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v0, "VibratorService"

    const-string/jumbo v1, "Unknown vibration type, ignoring"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 6

    const-wide/16 v4, 0x3e8

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get14(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/VibratorService;->shouldVibrateForRingtone()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "VibratorService"

    const-string/jumbo v2, "Vibrate ignored, not vibrating for ringtones"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get9(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    if-gez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->getAppOpMode(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const-string/jumbo v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Would be an error: vibrate from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get13(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get9(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    if-gez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3
    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_FORCE:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v1}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get6(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Would not be allowed : vibrate from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get13(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get9(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    if-gez v1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    :cond_4
    iget-object v1, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V

    return-void
.end method

.method private unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    .locals 3

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get2(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v1

    instance-of v1, v1, Landroid/os/VibrationEffect$Waveform;

    if-eqz v1, :cond_1

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get12(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateInputDeviceVibratorsLocked()Z
    .locals 12

    const/4 v11, 0x1

    iget-object v8, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v8

    const/4 v0, 0x0

    const/4 v5, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "vibrate_input_devices"

    const/4 v10, -0x2

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-lez v7, :cond_3

    const/4 v5, 0x1

    :goto_0
    :try_start_1
    iget-boolean v7, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eq v5, v7, :cond_0

    const/4 v0, 0x1

    iput-boolean v5, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    :cond_0
    iget-boolean v7, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-nez v7, :cond_1

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    iget-object v7, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    iget-object v9, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-virtual {v7, p0, v9}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-boolean v7, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v7}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v3

    const/4 v2, 0x0

    :goto_2
    array-length v7, v3

    if-ge v2, v7, :cond_6

    iget-object v7, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    aget v9, v3, v2

    invoke-virtual {v7, v9}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    if-nez v1, :cond_5

    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    iget-boolean v7, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    iget-object v7, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v7, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_5
    :try_start_2
    invoke-virtual {v1}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_6
    monitor-exit v8

    return v11

    :cond_7
    monitor-exit v8

    return v0

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private updateLowPowerModeLocked()Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v1

    iget-boolean v0, v1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private updateVibrators()V
    .locals 5

    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibratorsLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit v3

    return-void

    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v4

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
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

.method private static verifyVibrationEffect(Landroid/os/VibrationEffect;)Z
    .locals 4

    const/4 v3, 0x0

    if-nez p0, :cond_0

    const-string/jumbo v1, "VibratorService"

    const-string/jumbo v2, "effect must not be null"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/VibrationEffect;->validate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "VibratorService"

    const-string/jumbo v2, "Encountered issue when verifying VibrationEffect."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method static native vibratorEngine([III)V
.end method

.method static native vibratorEngineExist()Z
.end method

.method static native vibratorExists()Z
.end method

.method static native vibratorForceTouchIntensity(J)V
.end method

.method static native vibratorForceTouchIntensityExist()Z
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

.method static native vibratorPerformEffect(JJ)J
.end method

.method static native vibratorSetAmplitude(I)V
.end method

.method static native vibratorSupportsAmplitudeControl()Z
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
    const-string/jumbo v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cancel() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

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

.method createPatternInfo(Landroid/content/res/Resources;II)Lcom/android/server/VibratorService$PatternInfo;
    .locals 2

    new-instance v0, Lcom/android/server/VibratorService$PatternInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService$PatternInfo;-><init>(Lcom/android/server/VibratorService$PatternInfo;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;II)[J

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/VibratorService$PatternInfo;->-set1(Lcom/android/server/VibratorService$PatternInfo;[J)[J

    invoke-direct {p0, p1, p2}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/VibratorService$PatternInfo;->-set0(Lcom/android/server/VibratorService$PatternInfo;[I)[I

    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "VibratorService"

    invoke-static {v4, v5, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    const-string/jumbo v4, "Previous vibrations:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$VibrationInfo;

    const-string/jumbo v4, "  "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_1
    :try_start_1
    const-string/jumbo v4, "Extra vibrations:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/VibratorService;->mPreviousNoTouchVibrations:Ljava/util/LinkedList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$VibrationInfo;

    const-string/jumbo v4, "  "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/android/server/VibratorService;->sMuteLogInfos:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_4

    const-string/jumbo v4, "Mute:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/VibratorService;->sMuteLogInfos:Ljava/util/LinkedList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VibratorService$MuteLogInfo;

    const-string/jumbo v4, "  "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/VibratorService$MuteLogInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string/jumbo v4, "Abort:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/VibratorService;->mAbortLogInfos:Ljava/util/LinkedList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VibratorService$AbortLogInfo;

    const-string/jumbo v4, "  "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/VibratorService$AbortLogInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_4
    monitor-exit v5

    const-string/jumbo v4, "Current Info:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mLowPowerMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mTM = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mCM = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mNM = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mFM = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mMaxM = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/VibratorService;->mMaxMagnitude:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mMinM = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/VibratorService;->mMinMagnitude:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mMType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/VibratorService;->mMotorType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mHMTC = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/VibratorService;->mHMTMountCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mHasVibrator = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/VibratorService;->mHasVibrator:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mIsEnableInt = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mIsSupportedH = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mIsSupportedF = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mIsSupportedE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mIsSupportedFTI = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/VibratorService;->mIsForceTouchIntensitySupported:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mCheckExe = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/VibratorService;->mCheckExecutable:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mCheckPac = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/VibratorService;->mCheckExecutablePkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  USE_SET_MAX_M = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/VibratorService;->mUseMax:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getMagnitude(Ljava/lang/String;)I
    .locals 1

    const-string/jumbo v0, "VibratorService"

    invoke-direct {p0, p1, v0}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMaxMagnitude()I
    .locals 1

    iget v0, p0, Lcom/android/server/VibratorService;->mMaxMagnitude:I

    return v0
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

.method public hasAmplitudeControl()Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hasVibrator()Z
    .locals 3

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

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mIsHSupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mHasVibrator:Z

    return v0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/VibratorService$VibratorShellCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/android/server/VibratorService$VibratorShellCommand;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Lcom/android/server/VibratorService$VibratorShellCommand;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/VibratorService$VibratorShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

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

    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/VibratorService;->mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v4}, Lcom/android/server/VibratorService$SecSettingsObserver;->reload()V

    iget-object v4, p0, Lcom/android/server/VibratorService;->mCallMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v4}, Lcom/android/server/VibratorService$SecSettingsObserver;->reload()V

    iget-object v4, p0, Lcom/android/server/VibratorService;->mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v4}, Lcom/android/server/VibratorService$SecSettingsObserver;->reload()V

    iget-object v4, p0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    iget-object v4, p0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

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

    sget-object v5, Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v4, v5, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-le v0, v3, :cond_2

    :goto_0
    iput v0, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    iget-object v4, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;

    aget-object v5, v5, v9

    invoke-static {v4, v5, v1, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-le v0, v1, :cond_3

    :goto_1
    iput v0, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    iget-object v4, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-static {v4, v5, v1, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-le v0, v1, :cond_4

    :goto_2
    iput v0, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    iget-object v4, p0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v4, v4, v1

    iput v4, p0, Lcom/android/server/VibratorService;->mMaxMagnitude:I

    iget-object v4, p0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v4, v4, v9

    iput v4, p0, Lcom/android/server/VibratorService;->mMinMagnitude:I

    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/VibratorService;->mForceMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v4}, Lcom/android/server/VibratorService$SecSettingsObserver;->reload()V

    iget-object v4, p0, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    array-length v4, v4

    add-int/lit8 v2, v4, -0x1

    iget-object v4, p0, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    aget v4, v4, v2

    iput v4, p0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    if-ge v2, v8, :cond_5

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

    :cond_2
    iget-object v4, p0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    aget v0, v4, v0

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v0, v4, v0

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v0, v4, v0

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-static {v4, v5, v2, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-le v0, v2, :cond_7

    :goto_3
    iput v0, p0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mIsForceTouchIntensitySupported:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/android/server/VibratorService;->vibratorForceTouchIntensity(J)V

    :cond_6
    return-void

    :cond_7
    iget-object v4, p0, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

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
    .locals 34

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

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;Ljava/lang/String;)I

    move-result p6

    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    const-string/jumbo v6, "VibratorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "semColorfulVibrate - package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", repeat: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", token: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", usageHint : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", mag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p9

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz p6, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v6

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-void

    :catchall_0
    move-exception v7

    monitor-exit v6

    throw v7

    :cond_2
    if-nez p3, :cond_3

    const-string/jumbo v6, "VibratorService"

    const-string/jumbo v7, "semColorfulVibrate() : data is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->isColorfulDataFormat([I)Z

    move-result v6

    if-nez v6, :cond_4

    return-void

    :cond_4
    if-lez p4, :cond_5

    const-string/jumbo v6, "VibratorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "semColorfulVibrate() : repeat("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") is wrong."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    if-nez p5, :cond_6

    const-string/jumbo v6, "VibratorService"

    const-string/jumbo v7, "semColorfulVibrate() : token is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->getMillisecondsFromColorfulData([I)J

    move-result-wide v12

    const/4 v6, -0x1

    move/from16 v0, p8

    if-ne v0, v6, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->getCustomPattern([I)[J

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/VibratorService;->getColorfulPattern([J)[J

    move-result-object v14

    :goto_0
    array-length v6, v14

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    const/4 v6, 0x0

    aget-wide v6, v14, v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_8

    const-string/jumbo v6, "VibratorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "This "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p8

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is not supported.(color)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->getCommonPattern(I)[J

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/VibratorService;->getColorfulPattern([J)[J

    move-result-object v14

    goto :goto_0

    :cond_8
    const/4 v6, -0x1

    move/from16 v0, p4

    if-le v0, v6, :cond_9

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p2

    invoke-direct {v0, v14, v1, v2}, Lcom/android/server/VibratorService;->isExecutablePattern([JILjava/lang/String;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_9

    return-void

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    if-eqz v6, :cond_a

    new-instance v5, Lcom/android/server/VibratorService$Vibration;

    const/4 v8, 0x0

    const/16 v17, -0x1

    const/16 v21, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v15, p4

    move/from16 v16, p6

    move/from16 v18, p8

    move-object/from16 v19, p9

    move-object/from16 v20, p3

    invoke-direct/range {v5 .. v21}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;J[JIIIILjava/lang/String;[ILcom/android/server/VibratorService$Vibration;)V

    :goto_1
    const/4 v6, 0x0

    :try_start_1
    move-object/from16 v0, p5

    invoke-interface {v0, v5, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v32

    :try_start_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    if-ltz p4, :cond_b

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static/range {v32 .. v33}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_a
    new-instance v5, Lcom/android/server/VibratorService$Vibration;

    const-wide/16 v22, -0x1

    const/4 v6, 0x2

    new-array v0, v6, [J

    move-object/from16 v24, v0

    fill-array-data v24, :array_0

    const/16 v18, 0x0

    const/16 v27, -0x1

    const/16 v28, -0x1

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object v15, v5

    move-object/from16 v16, p0

    move-object/from16 v17, p5

    move/from16 v19, p7

    move/from16 v20, p1

    move-object/from16 v21, p2

    move/from16 v25, p4

    move/from16 v26, p6

    move-object/from16 v29, p9

    invoke-direct/range {v15 .. v31}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;J[JIIIILjava/lang/String;[ILcom/android/server/VibratorService$Vibration;)V

    goto :goto_1

    :catch_0
    move-exception v4

    return-void

    :cond_b
    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v6

    :try_start_6
    monitor-exit v7

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v6

    invoke-static/range {v32 .. v33}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    nop

    :array_0
    .array-data 8
        0x0
        0x64
    .end array-data
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

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mIsForceTouchIntensitySupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsForceTouchIntensitySupported:Z

    return v0
.end method

.method public semIsHapticEngineSupported()Z
    .locals 3

    sget-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semIsHapticEngineSupported() : "

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

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    return v0
.end method

.method public semSetVibrationMute(Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v16, "android.permission.VIBRATE"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_0

    new-instance v15, Ljava/lang/SecurityException;

    const-string/jumbo v16, "Requires VIBRATE permission"

    invoke-direct/range {v15 .. v16}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_0
    sget-object v16, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    monitor-enter v16

    :try_start_0
    invoke-static/range {p1 .. p4}, Lcom/android/server/VibratorService;->addToMuteLogInfos(Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;)V

    if-eqz p2, :cond_3

    sget-object v15, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_NOTIFICATION:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v15}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    const/4 v15, 0x1

    invoke-static {v15}, Lcom/android/server/VibratorService$MuteNotificationInfo;->-set0(Z)Z

    new-instance v14, Lcom/android/server/VibratorService$MuteNotificationInfo;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-direct {v14, v0, v1}, Lcom/android/server/VibratorService$MuteNotificationInfo;-><init>(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v15, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->getMuteInfoKey(Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v14}, Ljava/util/Hashtable;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    if-nez v15, :cond_1

    const/4 v15, 0x0

    :try_start_1
    move-object/from16 v0, p4

    invoke-interface {v0, v14, v15}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    :try_start_2
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v16

    return-object v15

    :catch_0
    move-exception v5

    const/4 v15, 0x0

    monitor-exit v16

    return-object v15

    :cond_2
    :try_start_3
    sget-object v15, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_CALL:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v15}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v15, 0x1

    invoke-static {v15}, Lcom/android/server/VibratorService$MuteCallInfo;->-set0(Z)Z

    new-instance v4, Lcom/android/server/VibratorService$MuteCallInfo;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-direct {v4, v0, v1}, Lcom/android/server/VibratorService$MuteCallInfo;-><init>(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v15, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->getMuteInfoKey(Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v4}, Ljava/util/Hashtable;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v15

    if-nez v15, :cond_1

    const/4 v15, 0x0

    :try_start_4
    move-object/from16 v0, p4

    invoke-interface {v0, v4, v15}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v5

    const/4 v15, 0x0

    monitor-exit v16

    return-object v15

    :cond_3
    :try_start_5
    sget-object v15, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->getMuteInfoKey(Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/VibratorService$MuteInfo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v13, :cond_4

    const/4 v15, 0x0

    monitor-exit v16

    return-object v15

    :cond_4
    const/4 v9, 0x0

    const/4 v8, 0x0

    :try_start_6
    sget-object v15, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->getMuteInfoKey(Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v15

    if-eqz v15, :cond_5

    const/4 v15, 0x0

    :try_start_7
    move-object/from16 v0, p4

    invoke-interface {v0, v13, v15}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_7
    .catch Ljava/util/NoSuchElementException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_5
    :try_start_8
    sget-object v15, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    invoke-virtual {v15}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v7

    :cond_6
    :goto_1
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    sget-object v15, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    invoke-virtual {v15, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/VibratorService$MuteInfo;

    invoke-static {v15}, Lcom/android/server/VibratorService$MuteInfo;->-get0(Lcom/android/server/VibratorService$MuteInfo;)Ljava/lang/String;

    move-result-object v12

    sget-object v15, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_NOTIFICATION:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v15}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v15

    if-eqz v15, :cond_7

    const/4 v9, 0x1

    goto :goto_1

    :catch_2
    move-exception v6

    const/4 v15, 0x0

    monitor-exit v16

    return-object v15

    :cond_7
    :try_start_9
    sget-object v15, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_CALL:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v15}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    const/4 v8, 0x1

    goto :goto_1

    :cond_8
    if-nez v9, :cond_9

    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/server/VibratorService$MuteNotificationInfo;->-set0(Z)Z

    :cond_9
    if-nez v8, :cond_a

    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/server/VibratorService$MuteCallInfo;->-set0(Z)Z

    :cond_a
    invoke-static {v13}, Lcom/android/server/VibratorService$MuteInfo;->-wrap0(Lcom/android/server/VibratorService$MuteInfo;)Ljava/util/ArrayList;

    move-result-object v15

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v10

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/VibratorService$AbortVibration;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/android/server/VibratorService$AbortVibration;->-wrap1(Lcom/android/server/VibratorService$AbortVibration;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v17, ";"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v3}, Lcom/android/server/VibratorService$AbortVibration;->-wrap0(Lcom/android/server/VibratorService$AbortVibration;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v15

    monitor-exit v16

    throw v15

    :cond_b
    monitor-exit v16

    return-object v2
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
    iget v0, p0, Lcom/android/server/VibratorService;->mMaxMagnitude:I

    if-le p1, v0, :cond_1

    iget p1, p0, Lcom/android/server/VibratorService;->mMaxMagnitude:I

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

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    const-class v1, Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/vr/GearVrManagerInternal;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/server/VibratorService$5;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$5;-><init>(Lcom/android/server/VibratorService;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/vr/GearVrManagerInternal;->registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "VibratorService"

    const-string/jumbo v2, "HMT VibratorService failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;ILandroid/os/IBinder;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.VIBRATE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Requires VIBRATE permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    if-nez p5, :cond_1

    const-string/jumbo v3, "VibratorService"

    const-string/jumbo v4, "token must not be null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    invoke-static/range {p3 .. p3}, Lcom/android/server/VibratorService;->verifyVibrationEffect(Landroid/os/VibrationEffect;)Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    move-object/from16 v0, p3

    instance-of v3, v0, Landroid/os/VibrationEffect$OneShot;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get2(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v3

    instance-of v3, v3, Landroid/os/VibrationEffect$OneShot;

    if-eqz v3, :cond_3

    move-object/from16 v13, p3

    check-cast v13, Landroid/os/VibrationEffect$OneShot;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get2(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v11

    check-cast v11, Landroid/os/VibrationEffect$OneShot;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v13}, Landroid/os/VibrationEffect$OneShot;->getTiming()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/VibratorService$Vibration;->hasLongerTimeout(J)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v13}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v3

    invoke-virtual {v11}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v4

    if-ne v3, v4, :cond_3

    return-void

    :cond_3
    const/4 v9, -0x2

    move-object/from16 v0, p3

    instance-of v3, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v3, :cond_4

    move-object/from16 v16, p3

    check-cast v16, Landroid/os/VibrationEffect$Waveform;

    invoke-virtual/range {v16 .. v16}, Landroid/os/VibrationEffect$Waveform;->getRepeatIndex()I

    move-result v9

    new-instance v2, Lcom/android/server/VibratorService$Vibration;

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p5

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p1

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;ILcom/android/server/VibratorService$Vibration;)V

    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p5

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    if-ltz v9, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_0
    move-exception v12

    return-void

    :cond_4
    new-instance v2, Lcom/android/server/VibratorService$Vibration;

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p5

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p1

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;ILcom/android/server/VibratorService$Vibration;)V

    goto :goto_0

    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v4

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
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

    const-string/jumbo v4, " is not supported.(common)"

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

.method public vibrateMagnitude(ILjava/lang/String;Landroid/os/VibrationEffect;ILandroid/os/IBinder;ILjava/lang/String;)V
    .locals 21

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
    if-nez p5, :cond_1

    const-string/jumbo v5, "VibratorService"

    const-string/jumbo v6, "token must not be null"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    if-gez p6, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;Ljava/lang/String;)I

    move-result p6

    :cond_2
    invoke-static/range {p3 .. p3}, Lcom/android/server/VibratorService;->verifyVibrationEffect(Landroid/os/VibrationEffect;)Z

    move-result v5

    if-nez v5, :cond_3

    return-void

    :cond_3
    const-string/jumbo v5, "VibratorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "vibrateMagnitude - package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", effect: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p6, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v5

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-void

    :catchall_0
    move-exception v6

    monitor-exit v5

    throw v6

    :cond_4
    move-object/from16 v0, p3

    instance-of v5, v0, Landroid/os/VibrationEffect$OneShot;

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v5}, Lcom/android/server/VibratorService$Vibration;->-get2(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v5

    instance-of v5, v5, Landroid/os/VibrationEffect$OneShot;

    if-eqz v5, :cond_5

    move-object/from16 v17, p3

    check-cast v17, Landroid/os/VibrationEffect$OneShot;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v5}, Lcom/android/server/VibratorService$Vibration;->-get2(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v15

    check-cast v15, Landroid/os/VibrationEffect$OneShot;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual/range {v17 .. v17}, Landroid/os/VibrationEffect$OneShot;->getTiming()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/server/VibratorService$Vibration;->hasLongerTimeout(J)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual/range {v17 .. v17}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v5

    invoke-virtual {v15}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v6

    if-ne v5, v6, :cond_5

    return-void

    :cond_5
    const/4 v11, -0x2

    move-object/from16 v0, p3

    instance-of v5, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v5, :cond_6

    move-object/from16 v20, p3

    check-cast v20, Landroid/os/VibrationEffect$Waveform;

    invoke-virtual/range {v20 .. v20}, Landroid/os/VibrationEffect$Waveform;->getRepeatIndex()I

    move-result v11

    new-instance v4, Lcom/android/server/VibratorService$Vibration;

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v12, p6

    move-object/from16 v13, p7

    invoke-direct/range {v4 .. v14}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;IILjava/lang/String;Lcom/android/server/VibratorService$Vibration;)V

    const/4 v5, 0x0

    :try_start_1
    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    if-ltz v11, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_0
    move-exception v16

    return-void

    :cond_6
    new-instance v4, Lcom/android/server/VibratorService$Vibration;

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v12, p6

    move-object/from16 v13, p7

    invoke-direct/range {v4 .. v14}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;IILjava/lang/String;Lcom/android/server/VibratorService$Vibration;)V

    goto :goto_0

    :cond_7
    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    :try_start_6
    monitor-exit v6

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v5

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public vibratePatternMagnitude(ILjava/lang/String;[JIILandroid/os/IBinder;IILjava/lang/String;)V
    .locals 24

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
    if-gez p7, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;Ljava/lang/String;)I

    move-result p7

    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    array-length v6, v0

    if-nez v6, :cond_4

    :cond_2
    const-string/jumbo v6, "VibratorService"

    const-string/jumbo v7, "vibratePatternMagnitude() is failed by illegal argument."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_3

    const-string/jumbo v6, "VibratorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "vibratePatternMagnitude() - pattern.length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    array-length v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", repeat = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string/jumbo v6, "VibratorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "vibratePatternMagnitude() - token = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->isAll0([J)Z

    move-result v6

    if-nez v6, :cond_2

    move-object/from16 v0, p3

    array-length v6, v0

    move/from16 v0, p4

    if-ge v0, v6, :cond_2

    if-eqz p6, :cond_2

    const/4 v6, -0x1

    move/from16 v0, p4

    if-le v0, v6, :cond_5

    const/4 v6, -0x1

    move/from16 v0, p8

    if-ne v0, v6, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/VibratorService;->isExecutablePattern([JILjava/lang/String;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_5

    return-void

    :cond_5
    const-string/jumbo v6, "VibratorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "vibratePatternMagnitude - package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", repeat: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", token: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", mag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p9

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p7, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v6

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-void

    :catchall_0
    move-exception v7

    monitor-exit v6

    throw v7

    :cond_6
    new-instance v5, Lcom/android/server/VibratorService$Vibration;

    const-wide/16 v12, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->getCommonPatternFrequency([J)I

    move-result v17

    const/4 v8, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p6

    move/from16 v9, p5

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p7

    move/from16 v18, p8

    move-object/from16 v19, p9

    invoke-direct/range {v5 .. v21}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;J[JIIIILjava/lang/String;[ILcom/android/server/VibratorService$Vibration;)V

    const/4 v6, 0x0

    :try_start_1
    move-object/from16 v0, p6

    invoke-interface {v0, v5, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    :try_start_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    if-ltz p4, :cond_7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_0
    move-exception v4

    return-void

    :cond_7
    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v6

    :try_start_6
    monitor-exit v7

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v6

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
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
