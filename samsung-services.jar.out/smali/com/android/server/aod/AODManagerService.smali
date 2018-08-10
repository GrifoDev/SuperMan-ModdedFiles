.class public final Lcom/android/server/aod/AODManagerService;
.super Lcom/android/server/SystemService;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/aod/AODManagerService$1;,
        Lcom/android/server/aod/AODManagerService$2;,
        Lcom/android/server/aod/AODManagerService$3;,
        Lcom/android/server/aod/AODManagerService$4;,
        Lcom/android/server/aod/AODManagerService$AODConnection;,
        Lcom/android/server/aod/AODManagerService$AODConnectionCause;,
        Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;,
        Lcom/android/server/aod/AODManagerService$AODDozeLock;,
        Lcom/android/server/aod/AODManagerService$AODHandler;,
        Lcom/android/server/aod/AODManagerService$AODListenerRecord;,
        Lcom/android/server/aod/AODManagerService$BinderService;,
        Lcom/android/server/aod/AODManagerService$LocalService;,
        Lcom/android/server/aod/AODManagerService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final AOD_APP_LOG_LINES:I = 0x3e8

.field private static final AOD_CONNECTION_TIMEOUT:I = 0x1388

.field private static final AOD_DEBUG:Z = false

.field private static final AOD_NOTI_LOG_LINES:I = 0x96

.field private static final AOD_SCREEN_TURNING_ON_TIMEOUT:I = 0x64

.field private static AOD_SHOW_STATE:Ljava/lang/String; = null

.field private static final CONFIG_DISABLE_TOUCH:Ljava/lang/String; = "-touch"

.field private static final CONFIG_SMARTALERT:Ljava/lang/String; = "smartalert"

.field public static GREAT_SPEN_USP_LEVEL:I = 0x0

.field private static final LIVE_CLOCK_LOG_LINES:I = 0x96

.field private static final LUX_FOR_HIGH_NIT:F = 2.0f

.field private static final LUX_QUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final LUX_QUE_SIZE:I = 0xf

.field private static final MAX_SMARTALERT_COUNT:I = 0x32

.field private static final MSG_AOD_APP_LOG:I = 0x64

.field public static final SEC_FEATURE_SEAMLESS_AOD:Z

.field public static final SEC_FEATURE_SUPPORT_SCREEN_TURNING_ON_DELAY:Z

.field private static final SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM:Ljava/lang/String; = "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

.field private static final SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_AOD_DOZE_SERVICE:Z

.field public static final START_AOD_BOOT:I = 0x1

.field public static final START_AOD_SCREEN_OFF:I = 0x3

.field public static final START_AOD_SCREEN_ON:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final TSP_AOD_SETTING_ENABLED:Ljava/lang/String; = "/sys/class/sec/tsp/cmd"

.field private static final TSP_INPUT_ENABLED:Ljava/lang/String; = "/sys/class/sec/tsp/input/enabled"

.field private static final WACOM_AOD_SETTING_ENABLED:Ljava/lang/String; = "/sys/class/sec/sec_epen/aod_enable"

.field private static final WACOM_SPEN_INPUT_ENABLED:Ljava/lang/String; = "/sys/class/sec/sec_epen/input/enabled"


# instance fields
.field final AOD_APP_START:Ljava/lang/String;

.field final AOD_SCREEN_OFF:Ljava/lang/String;

.field final AOD_SCREEN_ON:Ljava/lang/String;

.field private mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

.field private mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

.field private mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

.field private final mAODDozeLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/aod/AODManagerService$AODDozeLock;",
            ">;"
        }
    .end annotation
.end field

.field private final mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

.field private mAODLogHandler:Landroid/os/Handler;

.field private mAODLogHandlerThread:Landroid/os/HandlerThread;

.field private mAODNotificationData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field private final mAODNotificationListener:Landroid/service/notification/NotificationListenerService;

.field private mAODSettings:Lcom/android/server/aod/settings/AODSettings;

.field private final mAppLogLock:Ljava/lang/Object;

.field private mAppLogText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppLogTextArrayFull:Z

.field private mAppLogTextIndex:I

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mCalendarDataDescription:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCalendarDataTimeInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCoverAttached:Z

.field private mCoverClosed:Z

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mCoverUIWorking:Z

.field private mCurrentUser:I

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mDefaultDisplayState:I

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEffectiveUserId:I

.field private mIsAODModeEnabled:Z

.field private mIsAODStartStop:Z

.field private mIsAODTouchDisabled:Z

.field private mIsSingleTouchMode:Z

.field private mIsSmartAlertEnabled:Z

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/aod/AODManagerService$AODListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mLiveClockImageInfo:Ljava/lang/String;

.field private final mLiveClockLogLock:Ljava/lang/Object;

.field private mLiveClockLogText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLiveClockLogTextArrayFull:Z

.field private mLiveClockLogTextIndex:I

.field private final mLock:Ljava/lang/Object;

.field private mLooper:Landroid/os/Looper;

.field private mNewUserId:I

.field private mNotiCount:I

.field private final mNotiLogLock:Ljava/lang/Object;

.field private mNotiLogText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNotiLogTextArrayFull:Z

.field private mNotiLogTextIndex:I

.field private mNotificationKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSViewSensorEventListener:Landroid/hardware/SensorEventListener;

.field private final mScreenTurningOnLock:Ljava/lang/Object;

.field private final mScreenTurningOnRunnable:Ljava/lang/Runnable;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSettingsObserver:Lcom/android/server/aod/AODManagerService$SettingsObserver;

.field private mSmartAlertNotiKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpenUspLevel:I

.field private final mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

.field private final mStopUnconnectedAODRunnable:Ljava/lang/Runnable;

.field private mSupportAODFeatureVersion:I

.field private mTspH:I

.field private final mTspRects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mTspW:I

.field private mTspX:I

.field private mTspY:I

.field private mUserSwitched:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/aod/AODManagerService;->AOD_SHOW_STATE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/Queue;
    .locals 1

    sget-object v0, Lcom/android/server/aod/AODManagerService;->LUX_QUE:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/aod/AODManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/aod/AODManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mCoverAttached:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/aod/AODManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mCoverClosed:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/server/aod/AODManagerService;)Lcom/samsung/android/cover/CoverManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/aod/AODManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mCurrentUser:I

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/aod/AODManagerService;)Landroid/hardware/display/DisplayManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/aod/AODManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mEffectiveUserId:I

    return v0
.end method

.method static synthetic -get17(Lcom/android/server/aod/AODManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsSmartAlertEnabled:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/server/aod/AODManagerService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/aod/AODManagerService;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/aod/AODManagerService;->SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_AOD_DOZE_SERVICE:Z

    return v0
.end method

.method static synthetic -get20(Lcom/android/server/aod/AODManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mNewUserId:I

    return v0
.end method

.method static synthetic -get21(Lcom/android/server/aod/AODManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/server/aod/AODManagerService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/server/aod/AODManagerService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mSmartAlertNotiKeyList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get3()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/aod/AODManagerService;)Lcom/samsung/android/aod/AODManager$AODChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODManagerService$AODConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/aod/AODManagerService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODManagerService$AODHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/aod/AODManagerService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODNotificationData:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/settings/AODSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODSettings:Lcom/android/server/aod/settings/AODSettings;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;)Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;
    .locals 0

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/aod/AODManagerService;Lcom/samsung/android/aod/AODManager$AODChangeListener;)Lcom/samsung/android/aod/AODManager$AODChangeListener;
    .locals 0

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/aod/AODManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/aod/AODManagerService;->mCoverAttached:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/aod/AODManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/aod/AODManagerService;->mCoverClosed:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/aod/AODManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/aod/AODManagerService;->mCoverUIWorking:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/aod/AODManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/aod/AODManagerService;->mCurrentUser:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/aod/AODManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/aod/AODManagerService;->mEffectiveUserId:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/aod/AODManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/aod/AODManagerService;->mIsSingleTouchMode:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/aod/AODManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/aod/AODManagerService;->mNewUserId:I

    return p1
.end method

.method static synthetic -set9(Lcom/android/server/aod/AODManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/aod/AODManagerService;->mUserSwitched:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/aod/AODManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->isSViewCoverBrightnessHighInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/aod/AODManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->isSupportRegisterAODListener()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/aod/AODManagerService;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->turnOnSelfMoveInternal()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Lcom/android/server/aod/AODManagerService;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->getActiveImageInfoV2Internal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap12(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/aod/AODManagerService;->acquireDozeInternal(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/aod/AODManagerService;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->addAODAppLog(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/aod/AODManagerService;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->addLogTextInternal(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/aod/AODManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystemOrSystemUI()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/aod/AODManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystemOrSystemUid()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/aod/AODManagerService;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/aod/AODManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->readyToScreenTurningOnInternal()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->registerAODDozeCallbackInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/aod/AODManagerService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->startAODService(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->registerAODListenerInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/aod/AODManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->registerSViewCoverSensorListener()V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->releaseDozeInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;Lcom/samsung/android/aod/AODToast;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/aod/AODManagerService;->requestAODToastInternal(Ljava/lang/String;Lcom/samsung/android/aod/AODToast;)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/aod/AODManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->requestCalendarDataInternal()V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/aod/AODManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->requestNotificationKeysInternal()V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/aod/AODManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->requestSmartAlertInternal()V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/aod/AODManagerService;I[BLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/aod/AODManagerService;->setActiveImageV2Internal(I[BLjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/aod/AODManagerService;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->setLiveClockNeedleInternal([B)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->unregisterAODDozeCallbackInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/aod/AODManagerService;IIII)I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/aod/AODManagerService;->setAnalogClockInfoInternal(IIII)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->unregisterAODListenerInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/aod/AODManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->unregisterSViewCoverSensorListener()V

    return-void
.end method

.method static synthetic -wrap32(Lcom/android/server/aod/AODManagerService;IIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/aod/AODManagerService;->updateAODTspRectInternal(IIIII)V

    return-void
.end method

.method static synthetic -wrap33(Lcom/android/server/aod/AODManagerService;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/aod/AODManagerService;->updateCalendarDataInternal(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap34(Lcom/android/server/aod/AODManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->updateDefaultDisplayState(I)V

    return-void
.end method

.method static synthetic -wrap35(Lcom/android/server/aod/AODManagerService;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/aod/AODManagerService;->updateNotificationKeysInternal(ILjava/util/List;)V

    return-void
.end method

.method static synthetic -wrap36(Lcom/android/server/aod/AODManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->updateSettings()V

    return-void
.end method

.method static synthetic -wrap37(Lcom/android/server/aod/AODManagerService;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->updateSmartAlertInternal(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap38(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/aod/AODManagerService;->writeAODCommandInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/aod/AODManagerService;IIIIII)I
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/android/server/aod/AODManagerService;->setCurrentTimeInternal(IIIIII)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/aod/AODManagerService;IIIIIIIIIIIIIIIIIIII)I
    .locals 1

    invoke-direct/range {p0 .. p20}, Lcom/android/server/aod/AODManagerService;->setDigitalClockInfoInternal(IIIIIIIIIIIIIIIIIIII)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/aod/AODManagerService;IJJJJJJJJ)I
    .locals 2

    invoke-direct/range {p0 .. p17}, Lcom/android/server/aod/AODManagerService;->setLiveClockInfoInternal(IJJJJJJJJ)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/aod/AODManagerService;IIIII)I
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/android/server/aod/AODManagerService;->setSelfGridInfoInternal(IIIII)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/aod/AODManagerService;IIIII)I
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/android/server/aod/AODManagerService;->setSelfIconInfoInternal(IIIII)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/server/aod/AODManagerService;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->turnOffSelfMoveInternal()I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-class v2, Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "aod_show_state"

    sput-object v2, Lcom/android/server/aod/AODManagerService;->AOD_SHOW_STATE:Ljava/lang/String;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    sput-object v2, Lcom/android/server/aod/AODManagerService;->LUX_QUE:Ljava/util/Queue;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_DOZE_SERVICE_VERSION"

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lt v2, v0, :cond_1

    :goto_0
    sput-boolean v0, Lcom/android/server/aod/AODManagerService;->SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_AOD_DOZE_SERVICE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_WALLPAPER_STYLE"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "INFINITY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/aod/AODManagerService;->SEC_FEATURE_SEAMLESS_AOD:Z

    sget-boolean v0, Lcom/android/server/aod/AODManagerService;->SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_AOD_DOZE_SERVICE:Z

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/android/server/aod/AODManagerService;->SEC_FEATURE_SEAMLESS_AOD:Z

    :cond_0
    sput-boolean v1, Lcom/android/server/aod/AODManagerService;->SEC_FEATURE_SUPPORT_SCREEN_TURNING_ON_DELAY:Z

    const/16 v0, 0x1e

    sput v0, Lcom/android/server/aod/AODManagerService;->GREAT_SPEN_USP_LEVEL:I

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    const-string/jumbo v2, "5"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/server/aod/AODManagerService;->mSupportAODFeatureVersion:I

    iput-boolean v5, p0, Lcom/android/server/aod/AODManagerService;->mIsAODTouchDisabled:Z

    iput-boolean v5, p0, Lcom/android/server/aod/AODManagerService;->mIsSmartAlertEnabled:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mLock:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnLock:Ljava/lang/Object;

    iput-boolean v5, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    iput-boolean v5, p0, Lcom/android/server/aod/AODManagerService;->mIsAODStartStop:Z

    iput-object v6, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mNotificationKeys:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mCalendarDataTimeInfo:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mCalendarDataDescription:Ljava/util/List;

    iput v5, p0, Lcom/android/server/aod/AODManagerService;->mNotiCount:I

    iput v5, p0, Lcom/android/server/aod/AODManagerService;->mCurrentUser:I

    iput-boolean v5, p0, Lcom/android/server/aod/AODManagerService;->mUserSwitched:Z

    iput v3, p0, Lcom/android/server/aod/AODManagerService;->mEffectiveUserId:I

    iput v3, p0, Lcom/android/server/aod/AODManagerService;->mNewUserId:I

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    iput-boolean v5, p0, Lcom/android/server/aod/AODManagerService;->mIsSingleTouchMode:Z

    iput v3, p0, Lcom/android/server/aod/AODManagerService;->mSpenUspLevel:I

    iput-object v6, p0, Lcom/android/server/aod/AODManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iput-object v6, p0, Lcom/android/server/aod/AODManagerService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    iput-boolean v5, p0, Lcom/android/server/aod/AODManagerService;->mCoverAttached:Z

    iput-boolean v5, p0, Lcom/android/server/aod/AODManagerService;->mCoverClosed:Z

    iput-boolean v5, p0, Lcom/android/server/aod/AODManagerService;->mCoverUIWorking:Z

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "[MM-dd HH:mm:ss.SSS]"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAppLogLock:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mNotiLogLock:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mLiveClockLogLock:Ljava/lang/Object;

    iput v5, p0, Lcom/android/server/aod/AODManagerService;->mAppLogTextIndex:I

    iput-boolean v5, p0, Lcom/android/server/aod/AODManagerService;->mAppLogTextArrayFull:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAppLogText:Ljava/util/ArrayList;

    iput v5, p0, Lcom/android/server/aod/AODManagerService;->mNotiLogTextIndex:I

    iput-boolean v5, p0, Lcom/android/server/aod/AODManagerService;->mNotiLogTextArrayFull:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mNotiLogText:Ljava/util/ArrayList;

    iput v5, p0, Lcom/android/server/aod/AODManagerService;->mLiveClockLogTextIndex:I

    iput-boolean v5, p0, Lcom/android/server/aod/AODManagerService;->mLiveClockLogTextArrayFull:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mLiveClockLogText:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.samsung.android.app.aodservice.intent.action.AOD_APP_START"

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->AOD_APP_START:Ljava/lang/String;

    const-string/jumbo v2, "com.samsung.android.app.aodservice.intent.action.AOD_SCREEN_ON"

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->AOD_SCREEN_ON:Ljava/lang/String;

    const-string/jumbo v2, "com.samsung.android.app.aodservice.intent.action.AOD_SCREEN_OFF"

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->AOD_SCREEN_OFF:Ljava/lang/String;

    new-instance v2, Lcom/android/server/aod/AODManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/aod/AODManagerService$1;-><init>(Lcom/android/server/aod/AODManagerService;)V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mStopUnconnectedAODRunnable:Ljava/lang/Runnable;

    new-instance v2, Lcom/android/server/aod/AODManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/aod/AODManagerService$2;-><init>(Lcom/android/server/aod/AODManagerService;)V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    new-instance v2, Lcom/android/server/aod/AODManagerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/aod/AODManagerService$3;-><init>(Lcom/android/server/aod/AODManagerService;)V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnRunnable:Ljava/lang/Runnable;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODNotificationData:Ljava/util/HashMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mSmartAlertNotiKeyList:Ljava/util/List;

    new-instance v2, Lcom/android/server/aod/AODManagerService$4;

    invoke-direct {v2, p0}, Lcom/android/server/aod/AODManagerService$4;-><init>(Lcom/android/server/aod/AODManagerService;)V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODNotificationListener:Landroid/service/notification/NotificationListenerService;

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/aod/AODManagerService$AODHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/aod/AODManagerService$AODHandler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mLooper:Landroid/os/Looper;

    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "AODManagerService.LogThread"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODLogHandlerThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODLogHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/server/aod/AODManagerService$5;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODLogHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/aod/AODManagerService$5;-><init>(Lcom/android/server/aod/AODManagerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODLogHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/aod/settings/AODSettings;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/aod/settings/AODSettings;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettings:Lcom/android/server/aod/settings/AODSettings;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    iput v2, p0, Lcom/android/server/aod/AODManagerService;->mCurrentUser:I

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "-touch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsAODTouchDisabled:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsSmartAlertEnabled:Z

    new-instance v2, Lcom/android/server/aod/AODManagerService$SettingsObserver;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/aod/AODManagerService$SettingsObserver;-><init>(Lcom/android/server/aod/AODManagerService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mSettingsObserver:Lcom/android/server/aod/AODManagerService$SettingsObserver;

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mSettingsObserver:Lcom/android/server/aod/AODManagerService$SettingsObserver;

    invoke-virtual {v2}, Lcom/android/server/aod/AODManagerService$SettingsObserver;->observe()V

    const-string/jumbo v2, "display"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v2, Lcom/android/server/aod/AODManagerService$6;

    invoke-direct {v2, p0}, Lcom/android/server/aod/AODManagerService$6;-><init>(Lcom/android/server/aod/AODManagerService;)V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v2, v3, v6}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v5}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/aod/AODManagerService;->updateDefaultDisplayState(I)V

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    new-instance v3, Lcom/android/server/aod/AODManagerService$7;

    invoke-direct {v3, p0}, Lcom/android/server/aod/AODManagerService$7;-><init>(Lcom/android/server/aod/AODManagerService;)V

    sget-object v4, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private acquireDozeInternal(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 11

    iget-object v10, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    monitor-enter v10

    :try_start_0
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "acquireDozeInternal: mAODCallback "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "existed"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", display = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    monitor-exit v10

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v1, "null"

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->findAODDozeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v8

    if-gez v8, :cond_2

    new-instance v0, Lcom/android/server/aod/AODManagerService$AODDozeLock;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/aod/AODManagerService$AODDozeLock;-><init>(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :try_start_2
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v9, :cond_3

    monitor-exit v10

    return-void

    :catch_0
    move-exception v7

    :try_start_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "AOD doze lock is already dead."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v10

    throw v1

    :cond_2
    :try_start_5
    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "acquireDozeInternal: already acquired"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v10

    return-void

    :cond_3
    :try_start_6
    iget v1, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    packed-switch v1, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_0
    monitor-exit v10

    return-void

    :pswitch_1
    :try_start_7
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    invoke-virtual {v1}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->onAODDozeAcquired()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private addAODAppLog(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v5, 0x3e8

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAppLogLock:Ljava/lang/Object;

    monitor-enter v3

    if-nez p1, :cond_0

    monitor-exit v3

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mAppLogTextArrayFull:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAppLogText:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v5, :cond_2

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAppLogText:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mAppLogTextArrayFull:Z

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAppLogText:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/server/aod/AODManagerService;->mAppLogTextIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAppLogText:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/server/aod/AODManagerService;->mAppLogTextIndex:I

    invoke-virtual {v2, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v2, p0, Lcom/android/server/aod/AODManagerService;->mAppLogTextIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/aod/AODManagerService;->mAppLogTextIndex:I

    iget v2, p0, Lcom/android/server/aod/AODManagerService;->mAppLogTextIndex:I

    if-lt v2, v5, :cond_1

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/aod/AODManagerService;->mAppLogTextIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_3
    monitor-exit v3

    return-void
.end method

.method private addAODNotiLog(Ljava/lang/String;)V
    .locals 6

    const/16 v5, 0x96

    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mNotiLogLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mNotiLogTextArrayFull:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mNotiLogText:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v5, :cond_1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mNotiLogText:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->getCurDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mNotiLogTextArrayFull:Z

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mNotiLogText:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/server/aod/AODManagerService;->mNotiLogTextIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mNotiLogText:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/server/aod/AODManagerService;->mNotiLogTextIndex:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->getCurDateTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mNotiLogTextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/aod/AODManagerService;->mNotiLogTextIndex:I

    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mNotiLogTextIndex:I

    if-lt v0, v5, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/aod/AODManagerService;->mNotiLogTextIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private addLiveClockDumpLog(Ljava/lang/String;)V
    .locals 6

    const/16 v5, 0x96

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mLiveClockLogLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mLiveClockLogTextArrayFull:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mLiveClockLogText:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v5, :cond_1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mLiveClockLogText:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->getCurDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mLiveClockLogTextArrayFull:Z

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mLiveClockLogText:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/server/aod/AODManagerService;->mLiveClockLogTextIndex:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->getCurDateTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mLiveClockLogTextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/aod/AODManagerService;->mLiveClockLogTextIndex:I

    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mLiveClockLogTextIndex:I

    if-lt v0, v5, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/aod/AODManagerService;->mLiveClockLogTextIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private addLogTextInternal(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODLogHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "logs"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODLogHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private checkCallerIsSystem()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Disallowed call for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkCallerIsSystemOrSystemUI()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->isCallerSystemUI()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Disallowed call for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkCallerIsSystemOrSystemUid()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->isCallerSystemApp()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Disallowed call for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createAODConnection(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V
    .locals 8

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    new-instance v2, Lcom/android/server/aod/AODManagerService$AODConnection;

    invoke-direct {v2, p0, p1}, Lcom/android/server/aod/AODManagerService$AODConnection;-><init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.aod.AlwaysOnDisplayService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.samsung.android.app.aodservice"

    const-string/jumbo v5, "com.samsung.android.app.aodservice.AODService"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const v6, 0x4000001

    invoke-virtual {v2, v1, v4, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "createAODConnection : bindServiceAsUser fail"

    invoke-static {v2, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v3

    return-void

    :cond_0
    :try_start_2
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "createAODConnection : bindServiceAsUser success"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mBound:Z

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mStopUnconnectedAODRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1388

    invoke-virtual {v2, v4, v6, v7}, Lcom/android/server/aod/AODManagerService$AODHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to bind AODService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 12

    const-string/jumbo v9, "AODMANAGER (dumpsys AODManagerService)"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ActivityManager.getCurrentUser()="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mCurrentUser="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/aod/AODManagerService;->mCurrentUser:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mIsAODTouchDisabled="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/aod/AODManagerService;->mIsAODTouchDisabled:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v9, p0, Lcom/android/server/aod/AODManagerService;->mUserSwitched:Z

    if-eqz v9, :cond_0

    const-string/jumbo v9, "   . . . Last UserSwitched : "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "              mNewUserId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/aod/AODManagerService;->mNewUserId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "              mEffectiveUserId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/aod/AODManagerService;->mEffectiveUserId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v10, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    monitor-enter v10

    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mAODCallback= "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/aod/AODManagerService$AODDozeLock;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "AODDozeLock= "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_1
    monitor-exit v10

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mAODConnection="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    if-eqz v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mAODConnection mService="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v10, v10, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mAODConnection mBound="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-boolean v10, v10, Lcom/android/server/aod/AODManagerService$AODConnection;->mBound:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mAODConnection mConnected="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-boolean v10, v10, Lcom/android/server/aod/AODManagerService$AODConnection;->mConnected:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mAODConnection mConnectedUser="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget v10, v10, Lcom/android/server/aod/AODManagerService$AODConnection;->mConnectedUser:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mAODConnection mConnectionCauseList="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v10, v10, Lcom/android/server/aod/AODManagerService$AODConnection;->mConnectionCauseList:Ljava/util/List;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v9, "----- Regarding AOD TSP -----"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mIsAODModeEnabled(tsp.cmd aod_enable)="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mIsSingleTouchMode(tsp.input.enabled)="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/aod/AODManagerService;->mIsSingleTouchMode:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    monitor-enter v10

    :try_start_1
    iget-object v9, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v9, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v9, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "tsp touch rect(uid :"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, "), "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    monitor-exit v10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "tsp touch : x="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/aod/AODManagerService;->mTspX:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", y="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/aod/AODManagerService;->mTspY:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", w="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/aod/AODManagerService;->mTspW:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", h="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/aod/AODManagerService;->mTspH:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "live clock image info : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/aod/AODManagerService;->mLiveClockImageInfo:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/aod/AODManagerService;->mAppLogLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_2
    const-string/jumbo v9, "----- AODManagerService__Working log -----"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v9, p0, Lcom/android/server/aod/AODManagerService;->mAppLogText:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x1

    move v5, v4

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "["

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, "] "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v5, v4

    goto :goto_2

    :catchall_1
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_4
    :try_start_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v10

    iget-object v10, p0, Lcom/android/server/aod/AODManagerService;->mNotiLogLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_4
    const-string/jumbo v9, "----- AODManagerService__Notification log -----"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v9, p0, Lcom/android/server/aod/AODManagerService;->mNotiLogText:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x1

    move v5, v4

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "["

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, "] "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move v5, v4

    goto :goto_3

    :catchall_2
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_5
    :try_start_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit v10

    iget-object v10, p0, Lcom/android/server/aod/AODManagerService;->mLiveClockLogLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_6
    const-string/jumbo v9, "----- AODManagerService__liveclock log -----"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v9, p0, Lcom/android/server/aod/AODManagerService;->mLiveClockLogText:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x1

    move v5, v4

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "["

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, "] "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move v5, v4

    goto :goto_4

    :catchall_3
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_6
    :try_start_7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    monitor-exit v10

    return-void

    :catchall_4
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method private findAODDozeLockIndexLocked(Landroid/os/IBinder;)I
    .locals 3

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/aod/AODManagerService$AODDozeLock;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODDozeLock;->mLock:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private getActiveImageInfoV2Internal()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private getCurDateTime()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getCurrentDisplayName()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "OFF"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "ON"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "DOZE"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "DOZE_SUSPEND"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private initCoverManager(Landroid/content/Context;)V
    .locals 3

    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "initCoverManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v1, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    new-instance v1, Lcom/android/server/aod/AODManagerService$9;

    invoke-direct {v1, p0}, Lcom/android/server/aod/AODManagerService$9;-><init>(Lcom/android/server/aod/AODManagerService;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mCoverAttached:Z

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mCoverClosed:Z

    iget-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mCoverAttached:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mCoverClosed:Z

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mCoverUIWorking:Z

    :cond_0
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "initCoverManager is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isCallerSystem()Z
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/aod/AODManagerService;->isUidSystem(I)Z

    move-result v0

    return v0
.end method

.method private isCallerSystemApp()Z
    .locals 15

    const/4 v14, 0x1

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v6, :cond_1

    array-length v10, v6

    move v8, v9

    :goto_0
    if-ge v8, v10, :cond_2

    aget-object v4, v6, v8

    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {v7, v4, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v11, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    and-int/lit16 v11, v11, 0x81

    if-eqz v11, :cond_0

    return v14

    :catchall_0
    move-exception v8

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    :catch_0
    move-exception v1

    sget-object v11, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "Could not find package [%s]"

    new-array v13, v14, [Ljava/lang/Object;

    aput-object v4, v13, v9

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    sget-object v8, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "No known packages with uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v9
.end method

.method private isCallerSystemUI()Z
    .locals 10

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v0, -0x1

    :try_start_0
    iget-object v7, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string/jumbo v8, "com.android.systemui"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    iget-object v7, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    const-string/jumbo v7, "android.uid.systemui"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-ne v0, v5, :cond_0

    const/4 v6, 0x1

    :cond_0
    return v6

    :catch_0
    move-exception v3

    sget-object v7, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Unable to resolve SystemUI\'s UID."

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v6

    :cond_1
    return v6
.end method

.method private isSViewCoverBrightnessHighInternal()Z
    .locals 9

    sget-object v8, Lcom/android/server/aod/AODManagerService;->LUX_QUE:Ljava/util/Queue;

    monitor-enter v8

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    const/high16 v3, 0x40400000    # 3.0f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v0, 0x0

    sget-object v7, Lcom/android/server/aod/AODManagerService;->LUX_QUE:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    const/4 v4, 0x0

    sget-object v7, Lcom/android/server/aod/AODManagerService;->LUX_QUE:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_0
    int-to-float v7, v1

    div-float v0, v4, v7

    :try_start_1
    sget-object v7, Lcom/android/server/aod/AODManagerService;->LUX_QUE:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    :cond_1
    const/high16 v7, 0x40000000    # 2.0f

    cmpl-float v7, v0, v7

    if-lez v7, :cond_2

    const/4 v7, 0x1

    :goto_1
    monitor-exit v8

    return v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private isSupportRegisterAODListener()Z
    .locals 2

    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mSupportAODFeatureVersion:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUidSystem(I)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private readyToScreenTurningOnInternal()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    sget-boolean v0, Lcom/android/server/aod/AODManagerService;->SEC_FEATURE_SUPPORT_SCREEN_TURNING_ON_DELAY:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readyToScreenTurningOn : Not allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "readyToScreenTurningOn"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

    invoke-interface {v0}, Lcom/samsung/android/aod/AODManager$AODChangeListener;->readyToScreenTurningOn()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/server/aod/AODManagerService$AODHandler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "readyToScreenTurningOn : Do nothing, There is no Listener"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private registerAODDozeCallbackInternal(Landroid/os/IBinder;)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerAODDozeCallbackInternal"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v0, p0, p1, v2, v3}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;-><init>(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;II)V

    iput-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerAODDozeCallbackInternal : already registered"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private registerAODListenerInternal(Landroid/os/IBinder;)V
    .locals 5

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->-get0(Lcom/android/server/aod/AODManagerService$AODListenerRecord;)Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "registerAODListenerInternal : already registered"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v0, p0, p1, v2, v4}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;-><init>(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;II)V

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private registerNotificationListener()V
    .locals 6

    :try_start_0
    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerNotificationListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODNotificationListener:Landroid/service/notification/NotificationListenerService;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to register notification listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private registerSViewCoverSensorListener()V
    .locals 5

    sget-object v1, Lcom/android/server/aod/AODManagerService;->LUX_QUE:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sensor"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/aod/AODManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mSViewSensorEventListener:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/aod/AODManagerService;->LUX_QUE:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    new-instance v0, Lcom/android/server/aod/AODManagerService$10;

    invoke-direct {v0, p0}, Lcom/android/server/aod/AODManagerService$10;-><init>(Lcom/android/server/aod/AODManagerService;)V

    iput-object v0, p0, Lcom/android/server/aod/AODManagerService;->mSViewSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mSViewSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private releaseDozeInternal(Landroid/os/IBinder;)V
    .locals 6

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "releaseDozeInternal: mAODCallback "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "existed"

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ", display = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    iget v2, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    :cond_0
    monitor-exit v3

    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v2, "null"

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->findAODDozeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v1

    if-gez v1, :cond_3

    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "releaseDozeInternal: cannot find"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-void

    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/aod/AODManagerService$AODDozeLock;

    iget-object v2, v0, Lcom/android/server/aod/AODManagerService$AODDozeLock;->mLock:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    invoke-direct {p0, v1}, Lcom/android/server/aod/AODManagerService;->removeDozeLockLocked(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private removeDozeLockLocked(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    invoke-virtual {v0}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->onAODDozeReleased()V

    :cond_0
    return-void
.end method

.method private removeDozeLockLocked(Lcom/android/server/aod/AODManagerService$AODDozeLock;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    invoke-virtual {v0}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->onAODDozeReleased()V

    :cond_0
    return-void
.end method

.method private requestAODToastInternal(Ljava/lang/String;Lcom/samsung/android/aod/AODToast;)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestAODToastInternal: mAODCallback "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "existed"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", toast: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    invoke-virtual {v0, p2}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->onAODToastRequested(Lcom/samsung/android/aod/AODToast;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v0, "null"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private requestCalendarDataInternal()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    invoke-direct {p0, v0, v0}, Lcom/android/server/aod/AODManagerService;->updateCalendarDataInternal(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private requestNotificationKeysInternal()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/aod/AODManagerService;->updateNotificationKeysInternal(ILjava/util/List;)V

    return-void
.end method

.method private requestSmartAlertInternal()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mSmartAlertNotiKeyList:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mSmartAlertNotiKeyList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/android/server/aod/AODManagerService;->updateSmartAlertInternal(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static native setActiveImageV2(I[B)V
.end method

.method private setActiveImageV2Internal(I[BLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    return-void
.end method

.method static native setAnalogClockInfo(IIII)I
.end method

.method private setAnalogClockInfoInternal(IIII)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    const/4 v0, -0x1

    return v0
.end method

.method static native setCurrentTime(IIIIII)I
.end method

.method private setCurrentTimeInternal(IIIIII)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    const/4 v0, -0x1

    return v0
.end method

.method static native setDigitalClockInfo(IIIIIIIIIIIIIIIIIIII)I
.end method

.method private setDigitalClockInfoInternal(IIIIIIIIIIIIIIIIIIII)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    const/4 v0, -0x1

    return v0
.end method

.method static native setLiveClockInfo(IJJJJJJJJ)I
.end method

.method private setLiveClockInfoInternal(IJJJJJJJJ)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    const/4 v0, -0x1

    return v0
.end method

.method static native setLiveClockNeedle([B)V
.end method

.method private setLiveClockNeedleInternal([B)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    return-void
.end method

.method static native setSelfGridInfo(IIIII)I
.end method

.method private setSelfGridInfoInternal(IIIII)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    const/4 v0, -0x1

    return v0
.end method

.method static native setSelfIconInfo(IIIII)I
.end method

.method private setSelfIconInfoInternal(IIIII)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    const/4 v0, -0x1

    return v0
.end method

.method private startAODService(I)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "aod_mode"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    new-instance v1, Lcom/android/server/aod/AODManagerService$8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/aod/AODManagerService$8;-><init>(Lcom/android/server/aod/AODManagerService;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/aod/AODManagerService$AODHandler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v3
.end method

.method static native turnOffSelfMove()I
.end method

.method private turnOffSelfMoveInternal()I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    const/4 v0, -0x1

    return v0
.end method

.method static native turnOnSelfMove()I
.end method

.method private turnOnSelfMoveInternal()I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    const/4 v0, -0x1

    return v0
.end method

.method private unregisterAODDozeCallbackInternal(Landroid/os/IBinder;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->-get0(Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;)Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregisterAODDozeCallbackInternal"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregisterAODDozeCallbackInternal : cannot find matched callback"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private unregisterAODListenerInternal(Landroid/os/IBinder;)V
    .locals 6

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->-get0(Lcom/android/server/aod/AODManagerService$AODListenerRecord;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    sget-object v3, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "unregisterAODListenerInternal : cannot find the matched host"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-void

    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    const/4 v3, 0x0

    invoke-interface {p1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private unregisterSViewCoverSensorListener()V
    .locals 3

    sget-object v1, Lcom/android/server/aod/AODManagerService;->LUX_QUE:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mSViewSensorEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mSViewSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/aod/AODManagerService;->mSViewSensorEventListener:Landroid/hardware/SensorEventListener;

    sget-object v0, Lcom/android/server/aod/AODManagerService;->LUX_QUE:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateAODTspRectInternal(IIIII)V
    .locals 15

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    iget-object v13, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    monitor-enter v13

    if-gez p3, :cond_0

    if-gez p4, :cond_0

    if-gez p1, :cond_0

    if-gez p2, :cond_0

    :try_start_0
    iget-object v12, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    move/from16 v0, p5

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->remove(I)V

    :goto_0
    iget-object v12, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_5

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v2, :cond_2

    iget-object v12, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    invoke-virtual {v10, v12}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    iget-object v12, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    move/from16 v0, p5

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    if-nez v10, :cond_1

    new-instance v10, Landroid/graphics/Rect;

    add-int v12, p3, p1

    add-int v14, p4, p2

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v10, v0, v1, v12, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v12, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    move/from16 v0, p5

    invoke-virtual {v12, v0, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_1
    :try_start_1
    move/from16 v0, p3

    iput v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v0, p4

    iput v0, v10, Landroid/graphics/Rect;->top:I

    add-int v12, p3, p1

    iput v12, v10, Landroid/graphics/Rect;->right:I

    add-int v12, p4, p2

    iput v12, v10, Landroid/graphics/Rect;->bottom:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :try_start_2
    new-instance v6, Ljava/io/File;

    const-string/jumbo v12, "/sys/class/sec/tsp/cmd"

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_4

    :cond_3
    monitor-exit v13

    return-void

    :cond_4
    :try_start_3
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget v12, v10, Landroid/graphics/Rect;->left:I

    iput v12, p0, Lcom/android/server/aod/AODManagerService;->mTspX:I

    iget v12, v10, Landroid/graphics/Rect;->top:I

    iput v12, p0, Lcom/android/server/aod/AODManagerService;->mTspY:I

    iget v12, v10, Landroid/graphics/Rect;->right:I

    iget v14, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v14

    iput v12, p0, Lcom/android/server/aod/AODManagerService;->mTspW:I

    iget v12, v10, Landroid/graphics/Rect;->bottom:I

    iget v14, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v14

    iput v12, p0, Lcom/android/server/aod/AODManagerService;->mTspH:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "set_aod_rect,"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, p0, Lcom/android/server/aod/AODManagerService;->mTspW:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, ","

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, p0, Lcom/android/server/aod/AODManagerService;->mTspH:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, ","

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, p0, Lcom/android/server/aod/AODManagerService;->mTspX:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, ","

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, p0, Lcom/android/server/aod/AODManagerService;->mTspY:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "UTF-8"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v8, :cond_5

    :try_start_5
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    :goto_2
    monitor-exit v13

    return-void

    :catch_0
    move-exception v5

    goto :goto_2

    :catch_1
    move-exception v4

    :goto_3
    :try_start_6
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v7, :cond_5

    :try_start_7
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v5

    goto :goto_2

    :catch_3
    move-exception v3

    :goto_4
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v7, :cond_5

    :try_start_9
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    :catch_4
    move-exception v5

    goto :goto_2

    :catchall_1
    move-exception v12

    :goto_5
    if-eqz v7, :cond_6

    :try_start_a
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_6
    :goto_6
    :try_start_b
    throw v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catch_5
    move-exception v5

    goto :goto_6

    :catchall_2
    move-exception v12

    move-object v7, v8

    goto :goto_5

    :catch_6
    move-exception v3

    move-object v7, v8

    goto :goto_4

    :catch_7
    move-exception v4

    move-object v7, v8

    goto :goto_3
.end method

.method private updateAODTspState()V
    .locals 7

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODSettings:Lcom/android/server/aod/settings/AODSettings;

    invoke-virtual {v3}, Lcom/android/server/aod/settings/AODSettings;->getAODEnableSettings()Z

    move-result v0

    iget-boolean v3, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    if-eq v3, v0, :cond_1

    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    sget-object v3, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateAODTspState: mIsAODModeEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "/sys/class/sec/tsp/cmd"

    iget-boolean v5, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    invoke-direct {p0, v3, v5}, Lcom/android/server/aod/AODManagerService;->updateAODTspState(Ljava/lang/String;Z)V

    iget v3, p0, Lcom/android/server/aod/AODManagerService;->mSpenUspLevel:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v3, "com.sec.feature.spen_usp"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/aod/AODManagerService;->mSpenUspLevel:I

    sget-object v3, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateAODTspState: mSpenUspLevel = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/aod/AODManagerService;->mSpenUspLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v3, p0, Lcom/android/server/aod/AODManagerService;->mSpenUspLevel:I

    sget v5, Lcom/android/server/aod/AODManagerService;->GREAT_SPEN_USP_LEVEL:I

    if-lt v3, v5, :cond_1

    sget-object v3, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "updateAODWacomState "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "/sys/class/sec/sec_epen/aod_enable"

    iget-boolean v5, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    invoke-direct {p0, v3, v5}, Lcom/android/server/aod/AODManagerService;->updateAODWacomState(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private updateAODTspState(Ljava/lang/String;Z)V
    .locals 9

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    iget-boolean v7, p0, Lcom/android/server/aod/AODManagerService;->mIsAODTouchDisabled:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "skip -- AOD TSP"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v4, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2

    :cond_1
    return-void

    :cond_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "aod_enable,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p2, :cond_5

    const-string/jumbo v7, "1"

    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_3

    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_1
    move-object v4, v5

    :cond_4
    :goto_2
    return-void

    :cond_5
    :try_start_3
    const-string/jumbo v7, "0"
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_4

    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v0

    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v4, :cond_4

    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_2

    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v4, :cond_6

    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :cond_6
    :goto_6
    throw v7

    :catch_5
    move-exception v2

    goto :goto_6

    :catchall_1
    move-exception v7

    move-object v4, v5

    goto :goto_5

    :catch_6
    move-exception v0

    move-object v4, v5

    goto :goto_4

    :catch_7
    move-exception v1

    move-object v4, v5

    goto :goto_3
.end method

.method private updateAODWacomState(Ljava/lang/String;Z)V
    .locals 9

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    iget-boolean v7, p0, Lcom/android/server/aod/AODManagerService;->mIsAODTouchDisabled:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "skip -- AOD Wacom"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v4, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2

    :cond_1
    return-void

    :cond_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_5

    :try_start_1
    const-string/jumbo v6, "1"

    :goto_0
    const-string/jumbo v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_3

    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_1
    move-object v4, v5

    :cond_4
    :goto_2
    return-void

    :cond_5
    :try_start_3
    const-string/jumbo v6, "0"
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_4

    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v0

    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v4, :cond_4

    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_2

    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v4, :cond_6

    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :cond_6
    :goto_6
    throw v7

    :catch_5
    move-exception v2

    goto :goto_6

    :catchall_1
    move-exception v7

    move-object v4, v5

    goto :goto_5

    :catch_6
    move-exception v0

    move-object v4, v5

    goto :goto_4

    :catch_7
    move-exception v1

    move-object v4, v5

    goto :goto_3
.end method

.method private updateCalendarDataInternal(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mCalendarDataTimeInfo:Ljava/util/List;

    :cond_0
    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/android/server/aod/AODManagerService;->mCalendarDataDescription:Ljava/util/List;

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->isAODStateInternal()Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/aod/AODManagerService;->mCoverUIWorking:Z

    if-eqz v4, :cond_8

    :cond_2
    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODSettings:Lcom/android/server/aod/settings/AODSettings;

    invoke-virtual {v4}, Lcom/android/server/aod/settings/AODSettings;->isAODServiceEnable()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v4, p0, Lcom/android/server/aod/AODManagerService;->mCoverUIWorking:Z

    if-eqz v4, :cond_8

    :cond_3
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->isSupportRegisterAODListener()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v5, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    const/4 v6, 0x1

    if-ge v4, v6, :cond_4

    monitor-exit v5

    return-void

    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mCalendarDataTimeInfo:Ljava/util/List;

    iget-object v6, p0, Lcom/android/server/aod/AODManagerService;->mCalendarDataDescription:Ljava/util/List;

    invoke-virtual {v2, v4, v6}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->onUpdateCalendarData(Ljava/util/List;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_6
    monitor-exit v5

    return-void

    :cond_7
    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    if-nez v4, :cond_9

    sget-object v4, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_UPDATE_CALENDAR_DATA:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-direct {p0, v4}, Lcom/android/server/aod/AODManagerService;->createAODConnection(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V

    :cond_8
    :goto_1
    return-void

    :cond_9
    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v4, v4, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    if-eqz v4, :cond_a

    :try_start_2
    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v4, v4, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    iget-object v5, p0, Lcom/android/server/aod/AODManagerService;->mCalendarDataTimeInfo:Ljava/util/List;

    iget-object v6, p0, Lcom/android/server/aod/AODManagerService;->mCalendarDataDescription:Ljava/util/List;

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/aod/IAlwaysOnDisplayService;->updateCalendarData(Ljava/util/List;Ljava/util/List;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "mAODConnection.mService.updateNotificationKeys"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_a
    sget-object v4, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "AODConnection is disconnected..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    sget-object v5, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_UPDATE_CALENDAR_DATA:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-virtual {v4, v5}, Lcom/android/server/aod/AODManagerService$AODConnection;->addConnectionCause(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v5, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/android/server/aod/AODManagerService$AODHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v5, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/aod/AODManagerService$AODHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private updateDefaultDisplayState(I)V
    .locals 4

    iput p1, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    monitor-enter v3

    packed-switch p1, :pswitch_data_0

    :cond_0
    monitor-exit v3

    return-void

    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/aod/AODManagerService$AODDozeLock;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/aod/AODManagerService;->removeDozeLockLocked(Lcom/android/server/aod/AODManagerService$AODDozeLock;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateNotificationKeysInternal(ILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/android/server/aod/AODManagerService;->mNotificationKeys:Ljava/util/List;

    :cond_0
    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    iput p1, p0, Lcom/android/server/aod/AODManagerService;->mNotiCount:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->isAODStateInternal()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mCoverUIWorking:Z

    if-eqz v2, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettings:Lcom/android/server/aod/settings/AODSettings;

    invoke-virtual {v2}, Lcom/android/server/aod/settings/AODSettings;->isAODServiceEnable()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mCoverUIWorking:Z

    if-eqz v2, :cond_5

    :cond_3
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->isSupportRegisterAODListener()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/server/aod/AODManagerService;->mNotiCount:I

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mNotificationKeys:Ljava/util/List;

    invoke-direct {p0, v2, v3}, Lcom/android/server/aod/AODManagerService;->updateNotificationKeysLocked(ILjava/util/List;)V

    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    if-nez v2, :cond_6

    sget-object v2, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_UPDATE_NOTIFICATION_KEYS:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-direct {p0, v2}, Lcom/android/server/aod/AODManagerService;->createAODConnection(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    if-eqz v2, :cond_7

    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    iget v3, p0, Lcom/android/server/aod/AODManagerService;->mNotiCount:I

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mNotificationKeys:Ljava/util/List;

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/aod/IAlwaysOnDisplayService;->updateNotificationKeys(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "mAODConnection.mService.updateNotificationKeys"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_7
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "AODConnection is disconnected..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    sget-object v3, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_UPDATE_NOTIFICATION_KEYS:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-virtual {v2, v3}, Lcom/android/server/aod/AODManagerService$AODConnection;->addConnectionCause(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/aod/AODManagerService$AODHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/aod/AODManagerService$AODHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private updateNotificationKeysLocked(ILjava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v14

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    const/4 v15, 0x1

    if-ge v13, v15, :cond_0

    monitor-exit v14

    return-void

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    if-eqz v2, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/aod/AODManagerService;->mAODNotificationData:Ljava/util/HashMap;

    invoke-direct {v1, v13}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/service/notification/StatusBarNotification;

    if-eqz v9, :cond_3

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v13, 0x5b

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v13, 0x7c

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x7c

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x5d

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    :cond_3
    :try_start_2
    sget-object v13, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "] : key not found"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string/jumbo v13, "[onUpdateStatusBarNotifications] "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x28

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x2f

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x2f

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x29

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v13, " showingKeys "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string/jumbo v13, "UserHandle"

    const-string/jumbo v15, ""

    invoke-virtual {v4, v13, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_5
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/aod/AODManagerService;->addAODNotiLog(Ljava/lang/String;)V

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Landroid/service/notification/StatusBarNotification;

    invoke-interface {v12, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/service/notification/StatusBarNotification;

    move/from16 v0, p1

    invoke-virtual {v2, v0, v10}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->onUpdateStatusBarNotifications(I[Landroid/service/notification/StatusBarNotification;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_6
    monitor-exit v14

    return-void
.end method

.method private updateSettings()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->updateAODTspState()V

    return-void
.end method

.method private updateSmartAlertInternal(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    iget-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mIsSmartAlertEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->isAODStateInternal()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->isSupportRegisterAODListener()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODSettings:Lcom/android/server/aod/settings/AODSettings;

    invoke-virtual {v1}, Lcom/android/server/aod/settings/AODSettings;->isAODServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->updateSmartAlertLocked(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private updateSmartAlertLocked(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v14

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v15, 0x1

    if-lt v13, v15, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/aod/AODManagerService;->mIsSmartAlertEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_1

    :cond_0
    monitor-exit v14

    return-void

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    if-eqz v2, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/aod/AODManagerService;->mAODNotificationData:Ljava/util/HashMap;

    invoke-direct {v1, v13}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/service/notification/StatusBarNotification;

    if-eqz v9, :cond_4

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v13, 0x5b

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v13, 0x7c

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x7c

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x5d

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    :cond_4
    :try_start_2
    sget-object v13, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "] : key not found"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string/jumbo v13, "[onUpdateSmartAlert] "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x28

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x3c

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x3e

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v13, 0x29

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v13, " showingKeys "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string/jumbo v13, "UserHandle"

    const-string/jumbo v15, ""

    invoke-virtual {v4, v13, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_6
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/aod/AODManagerService;->addAODNotiLog(Ljava/lang/String;)V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Landroid/service/notification/StatusBarNotification;

    invoke-interface {v11, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2, v10}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->onUpdateSmartAlertNotifications([Landroid/service/notification/StatusBarNotification;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_7
    monitor-exit v14

    return-void
.end method

.method private writeAODCommandInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    const/4 v4, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v6, "UTF-8"

    invoke-virtual {p2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_2

    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    move-object v4, v5

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_3

    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v0

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v4, :cond_3

    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :catch_4
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v4, :cond_4

    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_5
    throw v6

    :catch_5
    move-exception v2

    goto :goto_5

    :catchall_1
    move-exception v6

    move-object v4, v5

    goto :goto_4

    :catch_6
    move-exception v0

    move-object v4, v5

    goto :goto_3

    :catch_7
    move-exception v1

    move-object v4, v5

    goto :goto_2
.end method


# virtual methods
.method getEffectiveUserId(I)I
    .locals 5

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return p1

    :cond_0
    sget-object v3, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Unable to acquire UserManager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isAODStateInternal()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/server/aod/AODManagerService;->AOD_SHOW_STATE:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/aod/AODManagerService;->mCurrentUser:I

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onBootPhase(I)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    const/16 v3, 0x258

    if-ne p1, v3, :cond_0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.app.aodservice.intent.action.AOD_APP_START"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v3, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startAodService : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.samsung.android.app.aodservice"

    const-string/jumbo v5, "com.samsung.android.app.aodservice.AODService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->registerNotificationListener()V

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/aod/AODManagerService;->initCoverManager(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v0, v1

    goto :goto_1
.end method

.method public onStart()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "AODManagerService"

    new-instance v1, Lcom/android/server/aod/AODManagerService$BinderService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/aod/AODManagerService$BinderService;-><init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$BinderService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/aod/AODManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v0, Lcom/samsung/android/aod/AODManagerInternal;

    new-instance v1, Lcom/android/server/aod/AODManagerService$LocalService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/aod/AODManagerService$LocalService;-><init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$LocalService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/aod/AODManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public startAODInternal()Z
    .locals 6

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->isSupportRegisterAODListener()Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettings:Lcom/android/server/aod/settings/AODSettings;

    invoke-virtual {v2}, Lcom/android/server/aod/settings/AODSettings;->isAODServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_STARTAOD:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-direct {p0, v2}, Lcom/android/server/aod/AODManagerService;->createAODConnection(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V

    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2

    :cond_2
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    if-eqz v2, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    invoke-interface {v2}, Lcom/samsung/android/aod/IAlwaysOnDisplayService;->startAOD()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startAODInternal - mAODConnection.mService.startAOD()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "AODConnection is disconnected..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/aod/AODManagerService$AODHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/aod/AODManagerService$AODHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    return v3
.end method

.method public stopAODInternal()Z
    .locals 6

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->isSupportRegisterAODListener()Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettings:Lcom/android/server/aod/settings/AODSettings;

    invoke-virtual {v2}, Lcom/android/server/aod/settings/AODSettings;->isAODServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_STOPAOD:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-direct {p0, v2}, Lcom/android/server/aod/AODManagerService;->createAODConnection(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V

    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2

    :cond_2
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    if-eqz v2, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    invoke-interface {v2}, Lcom/samsung/android/aod/IAlwaysOnDisplayService;->stopAOD()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "stopAODInternal - mAODConnection.mService.stopAOD()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "AODConnection is disconnected..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/aod/AODManagerService$AODHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/aod/AODManagerService$AODHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    return v3
.end method

.method public stopConnection()V
    .locals 6

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "already stopped connection"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v5, p0, Lcom/android/server/aod/AODManagerService;->mStopUnconnectedAODRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Lcom/android/server/aod/AODManagerService$AODHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v3, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    :try_start_2
    iget-object v3, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    invoke-interface {v3}, Lcom/samsung/android/aod/IAlwaysOnDisplayService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v2, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    const/4 v3, 0x0

    :try_start_3
    iput-object v3, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    :cond_2
    iget-boolean v3, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mBound:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mBound:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :goto_1
    monitor-exit v4

    return-void

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public updateBatteryStats()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "aod_show_state"

    const/4 v4, -0x2

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-boolean v3, p0, Lcom/android/server/aod/AODManagerService;->mIsAODStartStop:Z

    if-eq v3, v1, :cond_0

    iput-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mIsAODStartStop:Z

    :try_start_0
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-boolean v4, p0, Lcom/android/server/aod/AODManagerService;->mIsAODStartStop:Z

    invoke-interface {v3, v4}, Lcom/android/internal/app/IBatteryStats;->noteAodService(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "mBatteryStats is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exception mIsAODStartStop : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/aod/AODManagerService;->mIsAODStartStop:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public wakeUpInternal()Z
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODSettings:Lcom/android/server/aod/settings/AODSettings;

    invoke-virtual {v4}, Lcom/android/server/aod/settings/AODSettings;->isAODServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->isSupportRegisterAODListener()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-ge v4, v8, :cond_0

    monitor-exit v5

    return v6

    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->onScreenTurningOn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_2
    monitor-exit v5

    return v8

    :cond_3
    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    if-nez v4, :cond_5

    sget-object v4, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_STOPAOD:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-direct {p0, v4}, Lcom/android/server/aod/AODManagerService;->createAODConnection(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V

    :cond_4
    :goto_1
    return v8

    :cond_5
    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v4, v4, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    if-eqz v4, :cond_6

    :try_start_2
    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v4, v4, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    invoke-interface {v4}, Lcom/samsung/android/aod/IAlwaysOnDisplayService;->requestHide()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    sget-object v4, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "AODConnection is disconnected..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v5, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/android/server/aod/AODManagerService$AODHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v5, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/aod/AODManagerService$AODHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_7
    return v6
.end method
