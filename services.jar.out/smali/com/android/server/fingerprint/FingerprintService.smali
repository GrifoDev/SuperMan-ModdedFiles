.class public Lcom/android/server/fingerprint/FingerprintService;
.super Lcom/android/server/SystemService;
.source "FingerprintService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fingerprint/FingerprintService$1;,
        Lcom/android/server/fingerprint/FingerprintService$2;,
        Lcom/android/server/fingerprint/FingerprintService$3;,
        Lcom/android/server/fingerprint/FingerprintService$4;,
        Lcom/android/server/fingerprint/FingerprintService$5;,
        Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;,
        Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;
    }
.end annotation


# static fields
.field static final ACTION_FINGERPRINT_ADDED:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_ADDED"

.field static final ACTION_FINGERPRINT_REMOVED:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

.field static final ACTION_FINGERPRINT_RESET:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_RESET"

.field private static final ACTION_LOCKOUT_RESET:Ljava/lang/String; = "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

.field static final DEBUG:Z

.field private static final DEFAULT_FP_MAX_TEMPLEATES_PER_USER:I = 0x4

.field private static final FAIL_LOCKOUT_TIMEOUT_MS:J = 0x7530L

.field private static final FINGERPRINTD:Ljava/lang/String; = "android.hardware.fingerprint.IFingerprintDaemon"

.field private static final MAX_FAILED_ATTEMPTS:I = 0x5

.field private static final MSG_NONTZ_SERViCE_CONNECTED:I = 0x2711

.field private static final MSG_USER_REMOVED:I = 0xb

.field private static final MSG_USER_SWITCHING:I = 0xa

.field private static final MS_PER_SEC:J = 0x3e8L

.field static final TAG:Ljava/lang/String; = "FingerprintService"

.field private static accquiredEventNameMap:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static errorEventNameMap:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final isEnableSurveyMode:Z

.field private static mKeyguardPackage:Ljava/lang/String; = null

.field private static mMaxTempleatesNumber:I = 0x0

.field static final mSamsungFpmsPackage:Ljava/lang/String; = "com.samsung.android.fingerprint.service"

.field private static requestCmdNameMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentAuthenticatorId:J

.field private mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

.field private mCurrentUserId:I

.field private mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

.field private mDaemonCallback:Landroid/hardware/fingerprint/IFingerprintDaemonCallback;

.field private mFailedAttempts:I

.field private final mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

.field private mFpDaemonVersion:[B

.field private mFpMaskView:Lcom/android/server/fingerprint/FingerprintMaskView;

.field private mFpSensorInfo:[B

.field private mGetAuthenticationTime:J

.field private mHalDeviceId:J

.field private mHandler:Landroid/os/Handler;

.field private mIsEnrolling:Z

.field private final mIsInDisplaySensor:Z

.field private mIsNonTZ:Z

.field private mLatestSensorStatus:I

.field private mLockOutTime:J

.field private final mLockoutMonitors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mRequestClientReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field private final mResetClientState:Ljava/lang/Runnable;

.field private final mResetFailedAttemptsRunnable:Ljava/lang/Runnable;

.field private mSemHqmManager:Landroid/os/SemHqmManager;

.field private mUserIdForNonTZ:I

.field private final mUserManager:Landroid/os/UserManager;

.field private final syncObj:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->syncObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/fingerprint/FingerprintService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/fingerprint/FingerprintService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic -get5(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/fingerprint/FingerprintService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsNonTZ:Z

    return v0
.end method

.method static synthetic -get7()I
    .locals 1

    sget v0, Lcom/android/server/fingerprint/FingerprintService;->mMaxTempleatesNumber:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetFailedAttemptsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/ClientMonitor;)Lcom/android/server/fingerprint/ClientMonitor;
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintDaemon;)Landroid/hardware/fingerprint/IFingerprintDaemon;
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/fingerprint/FingerprintService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;ZII)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/fingerprint/FingerprintService;->canUseFingerprint(Ljava/lang/String;ZII)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/fingerprint/FingerprintService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->inLockoutMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getVendorDaemon()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->removeLockoutResetCallback(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->resetFailedAttempts()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->scheduleLockoutReset()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/fingerprint/FingerprintService;->sendBroadcast(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/android/server/fingerprint/FingerprintService;->startAuthentication(Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/ClientMonitor;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/server/fingerprint/FingerprintService;->startEnrollment(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/fingerprint/FingerprintService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingClient(Z)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->userActivity()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/fingerprint/FingerprintService;II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService;->removeFinger(II)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;I[B[BIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)I
    .locals 1

    invoke-direct/range {p0 .. p7}, Lcom/android/server/fingerprint/FingerprintService;->startRequest(Landroid/os/IBinder;I[B[BIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/fingerprint/FingerprintService;ILjava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->addLockoutResetMonitor(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/fingerprint/FingerprintService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->checkIntegrity(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/ClientMonitor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->clientDied(Lcom/android/server/fingerprint/ClientMonitor;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->connectVendorDaemon()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/fingerprint/FingerprintService;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->isEnableSurveyMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestClientReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iput-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mGetAuthenticationTime:J

    iput-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemHqmManager:Landroid/os/SemHqmManager;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->syncObj:Ljava/lang/Object;

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLatestSensorStatus:I

    iput-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsNonTZ:Z

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mUserIdForNonTZ:I

    iput-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockOutTime:J

    iput-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsEnrolling:Z

    iput-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mFpDaemonVersion:[B

    iput-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mFpSensorInfo:[B

    iput-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mFpMaskView:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->getSensorPosition()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsInDisplaySensor:Z

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$1;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$1;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$2;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$2;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$3;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$3;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetFailedAttemptsRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$4;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$4;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetClientState:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$5;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$5;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/fingerprint/IFingerprintDaemonCallback;

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.permission.RESET_FINGERPRINT_LOCKOUT"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mUserManager:Landroid/os/UserManager;

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->readSensorConfig()V

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/fingerprint/FingerprintService;->accquiredEventNameMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/fingerprint/FingerprintService;->errorEventNameMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/fingerprint/FingerprintService;->requestCmdNameMap:Landroid/util/SparseArray;

    sget-object v0, Lcom/android/server/fingerprint/FingerprintService;->accquiredEventNameMap:Landroid/util/SparseArray;

    const-string/jumbo v1, "FINGERPRINT_ACQUIRED_"

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->generateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/fingerprint/FingerprintService;->errorEventNameMap:Landroid/util/SparseArray;

    const-string/jumbo v1, "FINGERPRINT_ERROR_"

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->generateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/fingerprint/FingerprintService;->requestCmdNameMap:Landroid/util/SparseArray;

    const-string/jumbo v1, "FINGERPRINT_REQUEST_"

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->generateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private addLockoutResetMonitor(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private canStopExclusiveIdentify(Lcom/android/server/fingerprint/ClientMonitor;Landroid/os/Bundle;ZLjava/lang/String;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    sget-object v3, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "canStopExclusiveIdentify : Keyguard client"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo v3, "privileged_attr"

    invoke-virtual {p2, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "canStopExclusiveIdentify : have PRIVILEGED_ATTR_EXCLUSIVE_IDENTIFY attr"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    if-eqz p1, :cond_2

    sget-object v3, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "canStopExclusiveIdentify : keyguard is unlocked"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "canStopExclusiveIdentify: no fingeprintd!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->getSensorStatus(Landroid/hardware/fingerprint/IFingerprintDaemon;)I

    move-result v3

    const v4, 0x186c9

    if-ne v4, v3, :cond_4

    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "canStopExclusiveIdentify : sensor is working"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception v1

    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "canStopExclusiveIdentify: failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "canStopExclusiveIdentify : false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method private canUseFingerprint(Ljava/lang/String;ZII)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v3, "android.permission.USE_FINGERPRINT"

    invoke-virtual {p0, v3}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "android.permission.MANAGE_FINGERPRINT"

    const-string/jumbo v5, "No android.permission.MANAGE_FINGERPRINT permission."

    invoke-virtual {v3, v4, p4, p3, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/server/fingerprint/FingerprintService;->isKeyguard(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return v7

    :catch_0
    move-exception v0

    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "canUseFingerprint:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v2

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/fingerprint/FingerprintService;->isCurrentUserOrProfile(I)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Rejecting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ; not a current user or profile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x37

    invoke-virtual {v3, v4, p3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Rejecting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ; permission denied"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_3
    if-eqz p2, :cond_4

    invoke-direct {p0, p3, p4}, Lcom/android/server/fingerprint/FingerprintService;->isForegroundActivity(II)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    return v7

    :cond_5
    const-string/jumbo v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Rejecting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ; not in foreground"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method private cancelLockoutReset()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutResetIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private checkIntegrity(I)V
    .locals 29

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v19

    if-nez v19, :cond_0

    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "checkIntegrity: no fingeprintd!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v2, 0xa

    :try_start_0
    new-array v6, v2, [B

    const/4 v3, 0x0

    const/16 v4, 0xb

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move/from16 v8, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/fingerprint/FingerprintService;->startRequest(Landroid/os/IBinder;I[B[BIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)I

    move-result v28

    if-gez v28, :cond_1

    const-string/jumbo v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkIntegrity: error ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move/from16 v0, v28

    invoke-static {v6, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    move/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v24

    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v2, :cond_5

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FPS : "

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/hardware/fingerprint/Fingerprint;

    const-string/jumbo v2, "%02d "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v20

    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "checkIntegrity : failed"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_1
    const-string/jumbo v2, "\n"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "FPD : "

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    move-object/from16 v0, v26

    array-length v3, v0

    :goto_2
    if-ge v2, v3, :cond_4

    aget-byte v18, v26, v2

    const-string/jumbo v4, "%02d "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const-string/jumbo v2, "FingerprintService"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-lez v28, :cond_10

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v27

    const/4 v2, 0x0

    move-object/from16 v0, v26

    array-length v3, v0

    :goto_3
    if-ge v2, v3, :cond_2

    aget-byte v9, v26, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v11, 0x0

    :try_start_2
    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Lcom/samsung/android/fingerprint/FingerprintManager;->getIndexName(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v11

    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const/4 v12, -0x1

    move/from16 v10, p1

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/fingerprint/FingerprintUtils;->semAddFingerprintForUser(Landroid/content/Context;IILjava/lang/CharSequence;I)V

    if-eqz v11, :cond_6

    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v9, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->setIndexName(ILjava/lang/String;)Z

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_1
    move-exception v20

    goto :goto_4

    :cond_6
    const-string/jumbo v4, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v9, v1}, Lcom/android/server/fingerprint/FingerprintService;->sendBroadcast(Ljava/lang/String;II)V

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, v26

    array-length v3, v0

    :goto_6
    if-ge v2, v3, :cond_b

    aget-byte v9, v26, v2

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_8
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    if-ne v9, v4, :cond_8

    const/16 v25, 0x1

    :cond_9
    if-nez v25, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const/16 v16, 0x0

    const/16 v17, -0x1

    move v14, v9

    move/from16 v15, p1

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/fingerprint/FingerprintUtils;->semAddFingerprintForUser(Landroid/content/Context;IILjava/lang/CharSequence;I)V

    const-string/jumbo v4, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v9, v1}, Lcom/android/server/fingerprint/FingerprintService;->sendBroadcast(Ljava/lang/String;II)V

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_b
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_c
    :goto_7
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/hardware/fingerprint/Fingerprint;

    const/16 v25, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, v26

    array-length v3, v0

    :goto_8
    if-ge v2, v3, :cond_e

    aget-byte v9, v26, v2

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    if-ne v9, v4, :cond_d

    const/16 v25, 0x1

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_e
    if-nez v25, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    move/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/fingerprint/FingerprintUtils;->removeFingerprintIdForUser(Landroid/content/Context;II)V

    const-string/jumbo v2, "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/fingerprint/FingerprintService;->sendBroadcast(Ljava/lang/String;II)V

    goto :goto_7

    :cond_f
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/fingerprint/FingerprintService;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    const/4 v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/fingerprint/FingerprintService;->sendBroadcast(Ljava/lang/String;II)V

    goto/16 :goto_1

    :cond_10
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_9
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->removeTemplateForUser(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_9
.end method

.method private clientDied(Lcom/android/server/fingerprint/ClientMonitor;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/fingerprint/FingerprintService$8;-><init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/ClientMonitor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private connectVendorDaemon()V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/fingerprint/IFingerprintDaemonCallback;

    invoke-interface {v1, v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->init(Landroid/hardware/fingerprint/IFingerprintDaemonCallback;)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->openHal()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mUserIdForNonTZ:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)I

    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mUserIdForNonTZ:I

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkIntegrity(I)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->initSensorInfo(Landroid/hardware/fingerprint/IFingerprintDaemon;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "connectVendorDaemon : finish"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "Failed to open Fingerprint HAL!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "Failed to open fingeprintd HAL"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    goto :goto_0
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 17

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    const-string/jumbo v13, "service"

    const-string/jumbo v14, "Fingerprint Manager"

    invoke-virtual {v3, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v14, v12}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v14, v12}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v7

    const-string/jumbo v13, "["

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v5}, Landroid/hardware/fingerprint/Fingerprint;->semGetDuplicatedImageCount()I

    move-result v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v13, ", "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string/jumbo v13, "FingerprintService"

    const-string/jumbo v14, "dump formatting failure"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, " dpc : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, " latest sensor status : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/fingerprint/FingerprintService;->mLatestSensorStatus:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, " current User : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/fingerprint/FingerprintService;->mFpDaemonVersion:[B

    if-eqz v13, :cond_0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, " daemon version : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    new-instance v14, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/fingerprint/FingerprintService;->mFpDaemonVersion:[B

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/fingerprint/FingerprintService;->mFpSensorInfo:[B

    if-eqz v13, :cond_1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, " sensor info : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    new-instance v14, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/fingerprint/FingerprintService;->mFpSensorInfo:[B

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v15, "\n"

    const-string/jumbo v16, ", "

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    const-string/jumbo v13, "]"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v13, "id"

    invoke-virtual {v8, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v13, "count"

    invoke-virtual {v8, v13, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v13, "prints"

    invoke-virtual {v3, v13, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method private static generateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-class v4, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v4}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v3, v4

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v6, "FingerprintService"

    const-string/jumbo v7, "generateNameMap: failed "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    return-void
.end method

.method private getLockoutResetIntent()Landroid/app/PendingIntent;
    .locals 4

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getSensorStatus(Landroid/hardware/fingerprint/IFingerprintDaemon;)I
    .locals 10

    const/4 v6, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v5, "FingerprintService"

    const-string/jumbo v6, "getSensorStatus: daemon is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x186ca

    return v5

    :cond_0
    sget-boolean v5, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "sys.samsung.fp.sensor.status"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    return v4

    :cond_1
    const v3, 0x186ca

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v5, 0x0

    new-array v5, v5, [B

    const/4 v6, 0x0

    new-array v6, v6, [B

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-interface {p1, v7, v5, v6, v8}, Landroid/hardware/fingerprint/IFingerprintDaemon;->request(I[B[BI)I

    move-result v3

    const-string/jumbo v5, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getSensorStatus FP_FINISH ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms) RESULT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mLatestSensorStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v5, 0x186c8

    if-eq v3, v5, :cond_2

    const v5, 0x186c9

    if-eq v3, v5, :cond_2

    const v3, 0x186ca

    :cond_2
    :goto_0
    return v3

    :catch_0
    move-exception v2

    const-string/jumbo v5, "FingerprintService"

    const-string/jumbo v6, "getSensorStatus"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getUserOrWorkProfileId(Ljava/lang/String;I)I
    .locals 1

    invoke-static {p1}, Lcom/android/server/fingerprint/FingerprintService;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/fingerprint/FingerprintService;->isWorkProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    move-result v0

    return v0
.end method

.method private getVendorDaemon()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.intent.action.FINGERPRINT_START_NONTZ_DAEMON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.Samsung.FingerprintDaemonForNonTZ"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$6;

    invoke-direct {v2, p0}, Lcom/android/server/fingerprint/FingerprintService$6;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private inLockoutMode()Z
    .locals 2

    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initSensorInfo(Landroid/hardware/fingerprint/IFingerprintDaemon;)V
    .locals 10

    const/4 v7, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v6, "FingerprintService"

    const-string/jumbo v7, "initSensorInfo: daemon is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v5, -0x1

    const/16 v6, 0x100

    new-array v4, v6, [B

    new-array v3, v7, [B

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-interface {p1, v6, v3, v4, v7}, Landroid/hardware/fingerprint/IFingerprintDaemon;->request(I[B[BI)I

    move-result v5

    const-string/jumbo v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "initSensorInfo(getVersion) FP_FINISH ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms) RESULT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v5, :cond_1

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mFpDaemonVersion:[B

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-interface {p1, v6, v3, v4, v7}, Landroid/hardware/fingerprint/IFingerprintDaemon;->request(I[B[BI)I

    move-result v5

    const-string/jumbo v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "initSensorInfo(getSensorInfo) FP_FINISH ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms) RESULT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v5, :cond_2

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mFpSensorInfo:[B

    :cond_2
    sget-boolean v6, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mFpDaemonVersion:[B

    if-eqz v6, :cond_3

    const-string/jumbo v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "initSensorInfo: Version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/fingerprint/FingerprintService;->mFpDaemonVersion:[B

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mFpSensorInfo:[B

    if-eqz v6, :cond_4

    const-string/jumbo v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "initSensorInfo: Sensor Info "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/fingerprint/FingerprintService;->mFpSensorInfo:[B

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v6, "FingerprintService"

    const-string/jumbo v7, "initSensorInfo "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isForegroundActivity(II)Z
    .locals 7

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p2, :cond_0

    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v5, p1, :cond_0

    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v6, 0x64

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    return v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "FingerprintService"

    const-string/jumbo v6, "am.getRunningAppProcesses() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v5, 0x0

    return v5
.end method

.method static isKeyguard(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isKnoxProfile(I)Z
    .locals 1

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isTZCommand(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isWorkProfile(I)Z
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->isKnoxProfile(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "isWorkProfile: Knox profile!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    :cond_1
    return v1
.end method

.method private listenForUserSwitches()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$12;

    invoke-direct {v2, p0}, Lcom/android/server/fingerprint/FingerprintService$12;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "Failed to listen for user switching event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifyLockoutResetMonitors()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->sendLockoutReset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readSensorConfig()V
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x4

    sput v6, Lcom/android/server/fingerprint/FingerprintService;->mMaxTempleatesNumber:I

    iput-boolean v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsNonTZ:Z

    const-string/jumbo v0, "google_touch"

    if-eqz v0, :cond_2

    const-string/jumbo v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v3, v4, v5

    const-string/jumbo v7, "settings="

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    :try_start_0
    const-string/jumbo v7, "settings="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/android/server/fingerprint/FingerprintService;->mMaxTempleatesNumber:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v7, "FingerprintService"

    const-string/jumbo v8, "readSensorConfig : failed to read sensor config"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    const-string/jumbo v7, "tz="

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    :try_start_1
    const-string/jumbo v7, "tz="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsNonTZ:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v7, "FingerprintService"

    const-string/jumbo v8, "readSensorConfig : failed to read sensor config"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    return-void
.end method

.method private remove(Landroid/hardware/fingerprint/IFingerprintDaemon;II)I
    .locals 8

    const/4 v3, -0x1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1, p2, p3}, Landroid/hardware/fingerprint/IFingerprintDaemon;->remove(II)I

    move-result v3

    const-string/jumbo v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remove FP_FINISH ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms) RESULT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v3

    :catch_0
    move-exception v2

    const-string/jumbo v4, "FingerprintService"

    const-string/jumbo v5, "remove failed"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->destroy()V

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "FingerprintService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected client: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "expected: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Done with client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v0, "null"

    goto :goto_0
.end method

.method private removeFinger(II)I
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v6, "FingerprintService"

    const-string/jumbo v7, "removeFinger: no fingeprintd!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_0
    invoke-direct {p0, v7}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingClient(Z)V

    const/4 v5, 0x0

    if-ne p1, v8, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/server/fingerprint/FingerprintService;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v6

    invoke-direct {p0, v0, v6, p2}, Lcom/android/server/fingerprint/FingerprintService;->remove(Landroid/hardware/fingerprint/IFingerprintDaemon;II)I

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "remove with id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " failed, result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v6

    invoke-direct {p0, p2, v6}, Lcom/android/server/fingerprint/FingerprintService;->removeTemplateForUser(II)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService;->remove(Landroid/hardware/fingerprint/IFingerprintDaemon;II)I

    move-result v6

    if-nez v6, :cond_3

    invoke-direct {p0, p2, p1}, Lcom/android/server/fingerprint/FingerprintService;->removeTemplateForUser(II)V

    return v7

    :cond_3
    return v8

    :cond_4
    return v5
.end method

.method private removeLockoutResetCallback(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private removeTemplateForUser(II)V
    .locals 6

    const-wide/16 v4, -0x1

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeTemplateForUser : fingerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->removeFingerprintIdForUser(Landroid/content/Context;II)V

    invoke-virtual {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string/jumbo v0, "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/fingerprint/FingerprintService;->sendBroadcast(Ljava/lang/String;II)V

    const-string/jumbo v0, "FPRM"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/server/fingerprint/FingerprintService;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/fingerprint/FingerprintService;->sendBroadcast(Ljava/lang/String;II)V

    const-string/jumbo v0, "FPRM"

    const-string/jumbo v1, "ALL"

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/server/fingerprint/FingerprintService;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private resetFailedAttempts()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->inLockoutMode()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "Reset fingerprint lockout"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->cancelLockoutReset()V

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->notifyLockoutResetMonitors()V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockOutTime:J

    return-void
.end method

.method private scheduleLockoutReset()V
    .locals 8

    const-wide/16 v6, 0x7530

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v6

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutResetIntent()Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, v6

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockOutTime:J

    return-void
.end method

.method private sendBroadcast(Ljava/lang/String;II)V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-lez p2, :cond_0

    const-string/jumbo v2, "fingerIndex"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "verificationType"

    const-string/jumbo v3, "Device Credential"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] is sent with fingerId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] is sent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendBroadcast failed :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendError(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;I)V
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    invoke-interface {p1, v2, v3, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "sendError : Failed to invoke onError:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "sendError : Failed to send error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendFingerprintBigdata(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 10

    const/4 v1, 0x1

    const-string/jumbo v2, "BFS"

    const-string/jumbo v4, "ph"

    const-string/jumbo v5, "0.0"

    const-string/jumbo v6, "sec"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    const-string/jumbo v9, ""

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v3, "sendFingerprintBigdata() mSemHqmManager.sendHWParamToHQM !!!"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemHqmManager:Landroid/os/SemHqmManager;

    move-object v3, p1

    invoke-virtual/range {v0 .. v9}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v3, "sendFingerprintBigdata() mSemHqmManager is null!!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startAuthentication(Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)I

    move-result p5

    sget-boolean v4, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startAuthentication("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p9

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mIsInDisplaySensor:Z

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mFpMaskView:Lcom/android/server/fingerprint/FingerprintMaskView;

    if-nez v4, :cond_1

    new-instance v4, Lcom/android/server/fingerprint/FingerprintMaskView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/android/server/fingerprint/FingerprintMaskView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mFpMaskView:Lcom/android/server/fingerprint/FingerprintMaskView;

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v4, :cond_4

    const-string/jumbo v4, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startClient: currentClient client = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v7}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    instance-of v4, v4, Lcom/android/server/fingerprint/EnrollClient;

    if-eqz v4, :cond_2

    const-string/jumbo v4, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Enroll client["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v7}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] is in progress"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/server/fingerprint/FingerprintService;->sendError(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;I)V

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    instance-of v4, v4, Lcom/android/server/fingerprint/AuthenticationClient;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v4}, Lcom/android/server/fingerprint/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v4

    move-object/from16 v0, p1

    if-ne v4, v0, :cond_3

    const-string/jumbo v4, "FingerprintService"

    const-string/jumbo v6, "authentication is already in progress."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lcom/android/server/fingerprint/ClientMonitor;->hasPrivilegedAttr(I)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    move-object/from16 v0, p0

    move-object/from16 v1, p10

    move/from16 v2, p8

    move-object/from16 v3, p9

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/fingerprint/FingerprintService;->canStopExclusiveIdentify(Lcom/android/server/fingerprint/ClientMonitor;Landroid/os/Bundle;ZLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    new-instance v5, Lcom/android/server/fingerprint/FingerprintService$10;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    move-object/from16 v6, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    move/from16 v13, p5

    move-wide/from16 v14, p2

    move/from16 v16, p8

    move-object/from16 v17, p9

    move-object/from16 v18, p10

    invoke-direct/range {v5 .. v18}, Lcom/android/server/fingerprint/FingerprintService$10;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIJZLjava/lang/String;Landroid/os/Bundle;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->inLockoutMode()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x2

    invoke-virtual {v5, v4}, Lcom/android/server/fingerprint/AuthenticationClient;->hasPrivilegedAttr(I)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_5
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    return-void

    :cond_6
    const-string/jumbo v4, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Locked client["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v7}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] is in progress"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/server/fingerprint/FingerprintService;->sendError(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;I)V

    return-void

    :cond_7
    const-string/jumbo v4, "FingerprintService"

    const-string/jumbo v6, "In lockout mode; disallowing authentication"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x7

    invoke-virtual {v5, v4}, Lcom/android/server/fingerprint/AuthenticationClient;->onError(I)Z

    move-result v4

    if-nez v4, :cond_8

    const-string/jumbo v4, "FingerprintService"

    const-string/jumbo v6, "Cannot send timeout message to client"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {v5}, Lcom/android/server/fingerprint/AuthenticationClient;->destroy()V

    return-void
.end method

.method private startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_1

    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startClient : request stop current client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingClient(Z)V

    :cond_1
    if-nez p1, :cond_2

    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "startClient : client is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startClient : starting client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", initiatedByClient = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->syncObj:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->start()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    :cond_4
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    goto :goto_0
.end method

.method private startEnrollment(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;)V
    .locals 18

    sget-boolean v6, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startEnrollment : token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ,userId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ,flags="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ,restricted="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)I

    move-result p3

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mIsInDisplaySensor:Z

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mFpMaskView:Lcom/android/server/fingerprint/FingerprintMaskView;

    if-nez v6, :cond_1

    new-instance v6, Lcom/android/server/fingerprint/FingerprintMaskView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/server/fingerprint/FingerprintMaskView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mFpMaskView:Lcom/android/server/fingerprint/FingerprintMaskView;

    :cond_1
    move/from16 v4, p3

    new-instance v5, Lcom/android/server/fingerprint/FingerprintService$11;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    move-object/from16 v6, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p4

    move/from16 v12, p3

    move/from16 v13, p3

    move-object/from16 v14, p2

    move/from16 v15, p6

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    invoke-direct/range {v5 .. v17}, Lcom/android/server/fingerprint/FingerprintService$11;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II[BZLjava/lang/String;Landroid/os/Bundle;)V

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    return-void
.end method

.method private startRequest(Landroid/os/IBinder;I[B[BIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)I
    .locals 26

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v8

    if-nez v8, :cond_0

    const-string/jumbo v20, "FingerprintService"

    const-string/jumbo v21, "startRequest: no fingeprintd!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, -0x2

    return v20

    :cond_0
    :try_start_0
    sget-boolean v20, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v20, :cond_1

    const-string/jumbo v21, "FingerprintService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "startRequest: CMD= "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v22, "["

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v20, Lcom/android/server/fingerprint/FingerprintService;->requestCmdNameMap:Landroid/util/SparseArray;

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v22, "]"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v22, ", Param = "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v22, ", UserId = "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    const-string/jumbo v20, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result p6

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v20, 0x3e8

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->removeFinger(II)I

    move-result v20

    return v20

    :cond_2
    const/16 v20, 0x2

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->startPostEnroll(Landroid/os/IBinder;)I

    :cond_3
    :goto_0
    if-nez p3, :cond_4

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 p3, v0

    :cond_4
    if-nez p4, :cond_5

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 p4, v0

    :cond_5
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService;->syncObj:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->isTZCommand(I)Z

    move-result v20

    if-eqz v20, :cond_6

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingClient(Z)V

    :cond_6
    const/16 v20, 0x3

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/fingerprint/FingerprintService;->mRequestClientReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    invoke-interface {v8, v0, v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintDaemon;->request(I[B[BI)I

    move-result v13

    const-string/jumbo v20, "FingerprintService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "startRequest["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "] FP_FINISH ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v6

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "ms) RESULT: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v5, :cond_8

    instance-of v0, v5, Lcom/android/server/fingerprint/AuthenticationClient;

    move/from16 v20, v0

    if-eqz v20, :cond_8

    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v5, Lcom/android/server/fingerprint/ClientMonitor;->mNeedRetry:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    :try_start_2
    monitor-exit v21

    sget-boolean v20, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v20, :cond_1c

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_1a

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_1a

    const/16 v20, 0x0

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_19

    aget-byte v4, p3, v20

    const-string/jumbo v22, "%02x "

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    and-int/lit16 v0, v4, 0xff

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, v23, v25

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    :cond_9
    const/16 v20, 0x3e9

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->inLockoutMode()Z

    move-result v20

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/fingerprint/FingerprintService;->mLockOutTime:J

    move-wide/from16 v20, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v20, v20, v22

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v16, v0

    const-string/jumbo v20, "FingerprintService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "startRequest["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "] FP_FINISH - RESULT: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v16

    :cond_a
    const/16 v20, 0x0

    return v20

    :cond_b
    const/16 v20, 0x3ea

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    const-string/jumbo v20, "FingerprintService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "startRequest["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "] FP_FINISH - RESULT: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/fingerprint/FingerprintService;->mIsEnrolling:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/fingerprint/FingerprintService;->mIsEnrolling:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    const/16 v20, 0x1

    return v20

    :cond_c
    const/16 v20, 0x0

    return v20

    :cond_d
    const/16 v20, 0x7

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v5, :cond_3

    instance-of v0, v5, Lcom/android/server/fingerprint/AuthenticationClient;

    move/from16 v20, v0

    if-eqz v20, :cond_3

    invoke-virtual {v5}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v20

    sget-object v21, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_e

    iget-boolean v0, v5, Lcom/android/server/fingerprint/ClientMonitor;->misFromFPMS:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    :cond_e
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v5, Lcom/android/server/fingerprint/ClientMonitor;->mNeedRetry:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v9

    const-string/jumbo v20, "FingerprintService"

    const-string/jumbo v21, "startRequest failed"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v20, -0x3

    return v20

    :cond_f
    const/16 v20, 0x6

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/fingerprint/FingerprintService;->getSensorStatus(Landroid/hardware/fingerprint/IFingerprintDaemon;)I

    move-result v20

    return v20

    :cond_10
    const/16 v20, 0x4

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService;->mFpDaemonVersion:[B

    move-object/from16 v20, v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v20, :cond_11

    if-nez p4, :cond_12

    :cond_11
    const/16 v20, -0x1

    return v20

    :cond_12
    const/4 v12, 0x0

    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService;->mFpDaemonVersion:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v12, v0, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService;->mFpDaemonVersion:[B

    move-object/from16 v20, v0

    aget-byte v20, v20, v12

    aput-byte v20, p4, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService;->mFpDaemonVersion:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    return v20

    :catch_1
    move-exception v10

    :try_start_5
    const-string/jumbo v20, "FingerprintService"

    const-string/jumbo v21, "startRequest failed"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    const/16 v20, -0x1

    return v20

    :cond_14
    const/16 v20, 0x3eb

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    if-eqz p4, :cond_15

    :try_start_6
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v20, v0

    sget v21, Lcom/android/server/fingerprint/FingerprintService;->mMaxTempleatesNumber:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_16

    :cond_15
    const/16 v20, -0x1

    return v20

    :cond_16
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_18

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v17

    const/4 v12, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v12, v0, :cond_17

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v20

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, p4, v12
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_17
    return v17

    :catch_2
    move-exception v10

    :try_start_7
    const-string/jumbo v20, "FingerprintService"

    const-string/jumbo v21, "startRequest[FINGERPRINT_REQUEST_GET_FP_IDS] failed"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_18
    const/16 v20, -0x1

    return v20

    :catchall_0
    move-exception v20

    monitor-exit v21

    throw v20

    :cond_19
    const-string/jumbo v20, "FingerprintService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "startRequest: In = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    if-eqz p4, :cond_1c

    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_1c

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v13, :cond_1b

    const-string/jumbo v20, "%02x "

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    aget-byte v22, p4, v12

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_1b
    const-string/jumbo v20, "FingerprintService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "startRequest: Out= "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    :cond_1c
    return v13
.end method

.method private stopPendingClient(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/server/fingerprint/RemovalClient;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopPendingClient : CurrentClient = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1}, Lcom/android/server/fingerprint/ClientMonitor;->stop(Z)I

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/ClientMonitor;->onError(I)Z

    iget-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsInDisplaySensor:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFpMaskView:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintMaskView;->dismiss()V

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    goto :goto_0
.end method

.method private updateActiveGroup(ILjava/lang/String;)I
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v2

    if-eqz v2, :cond_3

    :try_start_0
    invoke-direct {p0, p2, p1}, Lcom/android/server/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result p1

    iget v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    if-ne p1, v4, :cond_0

    if-nez p2, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingClient(Z)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/data/biometrics/fp/User_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-interface {v2, p1, v4}, Landroid/hardware/fingerprint/IFingerprintDaemon;->setActiveGroup(I[B)I

    const-string/jumbo v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateActiveGroup FP_FINISH ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    :cond_2
    invoke-interface {v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->getAuthenticatorId()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentAuthenticatorId:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return p1

    :catch_0
    move-exception v3

    const-string/jumbo v4, "FingerprintService"

    const-string/jumbo v5, "Failed to setActiveGroup():"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private userActivity()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "fingerprintd died"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->handleError(JI)V

    return-void
.end method

.method checkPermission(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Must have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " permission."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAuthenticatorId(Ljava/lang/String;)J
    .locals 3

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAuthenticatorId pkg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->canUseFingerprint(Ljava/lang/String;ZII)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentAuthenticatorId:J

    return-wide v0

    :cond_1
    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "Client isn\'t current, returning authenticator_id=0"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method getEffectiveUserId(I)I
    .locals 7

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->isKnoxProfile(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getParentId(I)I

    move-result p1

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string/jumbo v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getEffectiveUserId: SemPersonaManager ParentId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v4, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getEffectiveUserId return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p1

    :cond_3
    const-string/jumbo v4, "FingerprintService"

    const-string/jumbo v5, "Unable to acquire UserManager"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEnrolledFingerprints(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    const-string/jumbo v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getEnrolledFingerprints : userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const-string/jumbo v2, ""

    invoke-direct {p0, v2, p1}, Lcom/android/server/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;
    .locals 10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    if-nez v4, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iget-boolean v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsNonTZ:Z

    if-eqz v4, :cond_1

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mUserIdForNonTZ:I

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getVendorDaemon()V

    :goto_0
    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService;->syncObj:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    :try_start_1
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v4}, Landroid/hardware/fingerprint/IFingerprintDaemon;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v4, p0, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/fingerprint/IFingerprintDaemonCallback;

    invoke-interface {v4, v6}, Landroid/hardware/fingerprint/IFingerprintDaemon;->init(Landroid/hardware/fingerprint/IFingerprintDaemonCallback;)V

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v4}, Landroid/hardware/fingerprint/IFingerprintDaemon;->openHal()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    iget-wide v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->checkIntegrity(I)V

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-direct {p0, v4}, Lcom/android/server/fingerprint/FingerprintService;->initSensorInfo(Landroid/hardware/fingerprint/IFingerprintDaemon;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v5

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    return-object v4

    :cond_1
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    goto :goto_0

    :cond_2
    :try_start_2
    const-string/jumbo v4, "FingerprintService"

    const-string/jumbo v6, "Failed to open Fingerprint HAL!"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    const-string/jumbo v4, "FingerprintService"

    const-string/jumbo v6, "Failed to open fingeprintd HAL"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_3
    :try_start_4
    const-string/jumbo v4, "FingerprintService"

    const-string/jumbo v6, "fingerprint service not available"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method protected handleAcquired(JI)V
    .locals 7

    const/4 v5, 0x0

    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string/jumbo v3, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleAcquired : deviceId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", acquiredInfo="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/android/server/fingerprint/FingerprintService;->accquiredEventNameMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/16 v2, 0x2712

    if-ne p3, v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mGetAuthenticationTime:J

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsInDisplaySensor:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x2711

    if-ne p3, v2, :cond_5

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mFpMaskView:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-virtual {v2}, Lcom/android/server/fingerprint/FingerprintMaskView;->show()V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p3}, Lcom/android/server/fingerprint/ClientMonitor;->onAcquired(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    :cond_2
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestClientReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v2, :cond_6

    :try_start_0
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestClientReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    invoke-interface {v2, p1, p2, p3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAcquired(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/16 v2, 0x2719

    if-ne p3, v2, :cond_3

    iput-object v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestClientReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    :cond_3
    return-void

    :cond_4
    const-string/jumbo v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleAcquired : acquiredInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/16 v2, 0x2713

    if-ne p3, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mFpMaskView:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-virtual {v2}, Lcom/android/server/fingerprint/FingerprintMaskView;->dismiss()V

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "handleAcquired failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_6
    return-void
.end method

.method protected handleAuthenticated(JII)V
    .locals 9

    const-wide/16 v6, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleAuthenticated : deviceId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ,fingerId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ,groupId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3, p4}, Lcom/android/server/fingerprint/ClientMonitor;->onAuthenticated(II)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_3

    :goto_1
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->inLockoutMode()Z

    move-result v1

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/ClientMonitor;->stop(Z)I

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    :cond_0
    if-nez p3, :cond_4

    const-string/jumbo v1, "FPTF"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mGetAuthenticationTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v6, v7}, Lcom/android/server/fingerprint/FingerprintService;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_2
    return-void

    :cond_1
    const-string/jumbo v4, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleAuthenticated : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p3, :cond_2

    move v1, v2

    :goto_3
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_3

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "FPTS"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mGetAuthenticationTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v6, v7}, Lcom/android/server/fingerprint/FingerprintService;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2
.end method

.method protected handleEnrollResult(JIII)V
    .locals 5

    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleEnrollResult : deviceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,fingerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,remaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p3, p4, p5}, Lcom/android/server/fingerprint/ClientMonitor;->onEnrollResult(III)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    :cond_1
    return-void
.end method

.method protected handleEnumerate(J[I[I)V
    .locals 3

    array-length v0, p3

    array-length v1, p4

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fingerIds and groupIds differ in length: f[]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", g[]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Enumerate: f[]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", g[]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected handleError(JI)V
    .locals 9

    const/4 v8, 0x1

    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string/jumbo v4, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleError : deviceId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", error="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v3, Lcom/android/server/fingerprint/FingerprintService;->errorEventNameMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v2, -0x1

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->syncObj:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p3}, Lcom/android/server/fingerprint/ClientMonitor;->onError(I)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v3, p1, v6

    if-nez v3, :cond_0

    const/high16 v3, 0x8000000

    invoke-virtual {v0, v3}, Lcom/android/server/fingerprint/ClientMonitor;->hasPrivilegedAttr(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/server/fingerprint/ClientMonitor;->stop(Z)I

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getGroupId()I

    move-result v2

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    :cond_1
    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v5, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleError(client="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ", error = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v4

    iget-boolean v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsInDisplaySensor:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mFpMaskView:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-virtual {v3}, Lcom/android/server/fingerprint/FingerprintMaskView;->dismiss()V

    :cond_3
    const/16 v3, 0x3ec

    if-ne p3, v3, :cond_4

    move v1, v2

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/fingerprint/FingerprintService$7;

    invoke-direct {v4, p0, v1}, Lcom/android/server/fingerprint/FingerprintService$7;-><init>(Lcom/android/server/fingerprint/FingerprintService;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    if-eq p3, v8, :cond_5

    const/4 v3, 0x2

    if-ne p3, v3, :cond_9

    :cond_5
    :goto_2
    const-string/jumbo v3, "FPER"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, -0x1

    invoke-virtual {p0, v3, v4, v6, v7}, Lcom/android/server/fingerprint/FingerprintService;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_6
    return-void

    :cond_7
    const-string/jumbo v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleError : error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    :try_start_1
    const-string/jumbo v3, "null"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_9
    const/4 v3, 0x3

    if-eq p3, v3, :cond_5

    const/4 v3, 0x4

    if-eq p3, v3, :cond_5

    const/4 v3, 0x6

    if-eq p3, v3, :cond_5

    const/16 v3, 0x3e8

    if-le p3, v3, :cond_6

    goto :goto_2
.end method

.method protected handleRemoved(JII)V
    .locals 5

    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleRemoved : deviceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,fingerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p3, p4}, Lcom/android/server/fingerprint/ClientMonitor;->onRemoved(II)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    :cond_1
    return-void
.end method

.method handleUserSwitching(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleUserSwitching : userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingClient(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)I

    return-void
.end method

.method public hasEnrolledFingerprints(I)Z
    .locals 6

    const/4 v2, 0x0

    const-string/jumbo v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hasEnrolledFingerprints : userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    if-eq p1, v3, :cond_0

    const-string/jumbo v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v3}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const-string/jumbo v3, ""

    invoke-direct {p0, v3, p1}, Lcom/android/server/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method hasPermission(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertSurveyLog: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/fingerprint/FingerprintService;->isEnableSurveyMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintService;->isEnableSurveyMode:Z

    if-eqz v2, :cond_1

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/fingerprint/FingerprintService;->sendFingerprintBigdata(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method isCurrentUserOrProfile(I)Z
    .locals 6

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget v0, v4, v2

    if-ne v0, p1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public onStart()V
    .locals 5

    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "onStart"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v2, "fingerprint"

    new-instance v3, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/server/fingerprint/FingerprintService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->listenForUserSwitches()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsNonTZ:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getVendorDaemon()V

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "HqmManagerService"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/SemHqmManager;

    iput-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemHqmManager:Landroid/os/SemHqmManager;

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "onStart : failed to register receiver"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startPostEnroll(Landroid/os/IBinder;)I
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v5, "FingerprintService"

    const-string/jumbo v6, "startPostEnroll: no fingeprintd!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->syncObj:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsEnrolling:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return v10

    :cond_1
    const/4 v5, 0x0

    :try_start_3
    invoke-direct {p0, v5}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingClient(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->postEnroll()I

    move-result v4

    const-string/jumbo v5, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startPostEnroll FP_FINISH ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms) RESULT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsEnrolling:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v6

    return v4

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v3

    const-string/jumbo v5, "FingerprintService"

    const-string/jumbo v6, "startPostEnroll failed"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v10
.end method

.method public startPreEnroll(Landroid/os/IBinder;)J
    .locals 14

    const-wide/16 v12, 0x0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v6, "FingerprintService"

    const-string/jumbo v7, "startPreEnroll: no fingeprintd!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v12

    :cond_0
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/fingerprint/FingerprintService;->getSensorStatus(Landroid/hardware/fingerprint/IFingerprintDaemon;)I

    move-result v6

    const v7, 0x186ca

    if-ne v6, v7, :cond_1

    const-string/jumbo v6, "FingerprintService"

    const-string/jumbo v7, "startPreEnroll: sensor error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v12

    :cond_1
    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService;->syncObj:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    :try_start_1
    invoke-direct {p0, v6}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingClient(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->preEnroll()J

    move-result-wide v4

    const-string/jumbo v6, "FingerprintService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startPreEnroll FP_FINISH ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "ms) RESULT: 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsEnrolling:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v7

    return-wide v4

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v3

    const-string/jumbo v6, "FingerprintService"

    const-string/jumbo v7, "startPreEnroll failed"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v12
.end method

.method startRemove(Landroid/os/IBinder;IIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Z)V
    .locals 15

    sget-boolean v4, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startRemove: token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", fingerId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", userId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v4, "FingerprintService"

    const-string/jumbo v5, "startRemove: no fingeprintd!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v3, Lcom/android/server/fingerprint/FingerprintService$9;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v4, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p5

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p6

    invoke-direct/range {v3 .. v14}, Lcom/android/server/fingerprint/FingerprintService$9;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIIZLjava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    return-void
.end method
