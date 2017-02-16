.class public Lcom/samsung/android/fingerprint/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/fingerprint/FingerprintManager$1;,
        Lcom/samsung/android/fingerprint/FingerprintManager$2;,
        Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;,
        Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;,
        Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    }
.end annotation


# static fields
.field public static final BUNDLE_BACKUP_BUTTON_NAME:Ljava/lang/String; = "button_name"

.field public static final BUNDLE_DENIED_FINGERPRINT:Ljava/lang/String; = "denied_fingerprint"

.field public static final BUNDLE_ENABLE_PASSWORD:Ljava/lang/String; = "password"

.field public static final BUNDLE_ENROLLED_IRIS:Ljava/lang/String; = "enrolled_iris"

.field public static final BUNDLE_PRIMARY_AUTHORIZATION:Ljava/lang/String; = "primary_authorization"

.field public static final BUNDLE_STANDBY_STRING:Ljava/lang/String; = "standby_string"

.field public static final CLIENTSPEC_KEY_ACCURACY:Ljava/lang/String; = "request_accuracy"

.field public static final CLIENTSPEC_KEY_ALLOW_INDEXES:Ljava/lang/String; = "request_template_index_list"

.field public static final CLIENTSPEC_KEY_APPNAME:Ljava/lang/String; = "appName"

.field public static final CLIENTSPEC_KEY_BACKGROUND:Ljava/lang/String; = "background"

.field public static final CLIENTSPEC_KEY_DEMANDED_PROPERTY_NAME:Ljava/lang/String; = "propertyName"

.field public static final CLIENTSPEC_KEY_DEMAND_EXTRA_EVENT:Ljava/lang/String; = "demandExtraEvent"

.field public static final CLIENTSPEC_KEY_OWN_NAME:Ljava/lang/String; = "ownName"

.field public static final CLIENTSPEC_KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final CLIENTSPEC_KEY_PRIVILEGED:Ljava/lang/String; = "privileged"

.field public static final CLIENTSPEC_KEY_PRIVILEGED_ATTR:Ljava/lang/String; = "privileged_attr"

.field public static final CLIENTSPEC_KEY_SECURITY_LEVEL:Ljava/lang/String; = "securityLevel"

.field public static final CLIENTSPEC_KEY_USE_MANUAL_TIMEOUT:Ljava/lang/String; = "useManualTimeout"

.field private static final DEBUG:Z

.field public static final ENROLL_FINISHED:Ljava/lang/String; = "com.samsung.android.fingerprint.action.ENROLL_FINISHED"

.field private static final ERROR_MSG_SERVICE_NOT_FOUND:Ljava/lang/String; = "FingerprintService is not running!"

.field public static final EXTRAS_KEY_TOKEN:Ljava/lang/String; = "token"

.field public static final FINGER_ALL:I = 0x15

.field public static final FINGER_LEFT_INDEX:I = 0x2

.field public static final FINGER_LEFT_INDEX_2ND:I = 0xc

.field public static final FINGER_LEFT_LITTLE:I = 0x5

.field public static final FINGER_LEFT_LITTLE_2ND:I = 0xf

.field public static final FINGER_LEFT_MIDDLE:I = 0x3

.field public static final FINGER_LEFT_MIDDLE_2ND:I = 0xd

.field public static final FINGER_LEFT_RING:I = 0x4

.field public static final FINGER_LEFT_RING_2ND:I = 0xe

.field public static final FINGER_LEFT_THUMB:I = 0x1

.field public static final FINGER_LEFT_THUMB_2ND:I = 0xb

.field public static final FINGER_NOT_SPECIFIED:I = 0x0

.field public static final FINGER_NUMBER_FOR_ONE:I = 0xa

.field public static final FINGER_PERMISSION_DELIMITER:Ljava/lang/String; = ","

.field public static final FINGER_RIGHT_INDEX:I = 0x7

.field public static final FINGER_RIGHT_INDEX_2ND:I = 0x11

.field public static final FINGER_RIGHT_LITTLE:I = 0xa

.field public static final FINGER_RIGHT_LITTLE_2ND:I = 0x14

.field public static final FINGER_RIGHT_MIDDLE:I = 0x8

.field public static final FINGER_RIGHT_MIDDLE_2ND:I = 0x12

.field public static final FINGER_RIGHT_RING:I = 0x9

.field public static final FINGER_RIGHT_RING_2ND:I = 0x13

.field public static final FINGER_RIGHT_THUMB:I = 0x6

.field public static final FINGER_RIGHT_THUMB_2ND:I = 0x10

.field public static final PRIVILEGED_ATTR_EXCLUSIVE_IDENTIFY:I = 0x4

.field public static final PRIVILEGED_ATTR_NO_IDENTIFY_LOCK:I = 0x2

.field public static final PRIVILEGED_ATTR_NO_VIBRATION:I = 0x1

.field public static final PRIVILEGED_TYPE_KEYGUARD:I = -0x80000000

.field public static final REQ_CMD_SESSION_OPEN:I = 0x1

.field public static final SECURITY_LEVEL_HIGH:I = 0x2

.field public static final SECURITY_LEVEL_LOW:I = 0x0

.field public static final SECURITY_LEVEL_REGULAR:I = 0x1

.field public static final SECURITY_LEVEL_VERY_HIGH:I = 0x3

.field public static final SENSOR_POSITION_DISPLAY:I = 0x2

.field public static final SENSOR_POSITION_HOMEKEY:I = 0x1

.field public static final SENSOR_POSITION_REAR:I = 0x3

.field public static final SENSOR_TYPE_SWIPE:I = 0x1

.field public static final SENSOR_TYPE_TOUCH:I = 0x2

.field public static final SERVICE_NAME:Ljava/lang/String; = "fingerprint_service"

.field public static final SERVICE_VERSION:I = 0x1030000

.field private static final START_ENROLL_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String; = "FPMS_FingerprintManager"

.field public static final USE_LAST_QUALITY_FEEDBACK:I = -0x1

.field private static mCallerActivity:Landroid/app/Activity;

.field private static mCallerApplication:Landroid/app/Application;

.field private static mContext:Landroid/content/Context;

.field private static mEnrollFinishResult:I

.field private static mEnrollListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

.field private static mFpClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

.field private static mIdentifyDialog:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

.field private static mIndex:I

.field private static mIsAndroidFingerprintSupported:Z

.field private static mIsLinkedDeathRecipient:Z

.field private static mOwnName:Ljava/lang/String;

.field private static mSecurityLevel:I

.field private static mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

.field private static mStringId:Ljava/lang/String;

.field private static mWaitLock:Ljava/lang/Object;

.field private static sFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private static sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;


# instance fields
.field private mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field public mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

.field private final mHandler:Landroid/os/Handler;

.field private mSpassProcessSdkClientToken:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2()Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    .locals 1

    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    return-object v0
.end method

.method static synthetic -get3()Lcom/samsung/android/fingerprint/IFingerprintClient;
    .locals 1

    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mFpClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/fingerprint/FingerprintManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5()I
    .locals 1

    sget v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mIndex:I

    return v0
.end method

.method static synthetic -get6()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mStringId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/fingerprint/FingerprintManager;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "extraInfo"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/fingerprint/FingerprintManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterActivityLifeCallback()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 60
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    .line 63
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.samsung.android.fingerprint.service"

    const-string/jumbo v2, "com.samsung.android.fingerprint.service.activity.StartEnrollActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->START_ENROLL_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

    .line 210
    sput-boolean v5, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsLinkedDeathRecipient:Z

    .line 211
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mWaitLock:Ljava/lang/Object;

    .line 215
    sput-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 216
    sput-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mStringId:Ljava/lang/String;

    .line 217
    sput-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    .line 218
    sput v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mIndex:I

    .line 219
    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mSecurityLevel:I

    .line 222
    sput-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mIdentifyDialog:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    .line 225
    sput v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollFinishResult:I

    .line 234
    sput-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 235
    sput-boolean v5, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsAndroidFingerprintSupported:Z

    .line 58
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mSpassProcessSdkClientToken:Landroid/os/IBinder;

    .line 776
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/fingerprint/FingerprintManager$1;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1256
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/fingerprint/FingerprintManager$2;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    .line 280
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    .line 281
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->getSensorType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 282
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsAndroidFingerprintSupported:Z

    .line 279
    :cond_0
    return-void
.end method

.method private static declared-synchronized ensureServiceConnected()V
    .locals 8

    .prologue
    const-class v5, Lcom/samsung/android/fingerprint/FingerprintManager;

    monitor-enter v5

    .line 362
    const/4 v3, 0x0

    .line 364
    .local v3, "isStartedServiceInTime":Z
    :try_start_0
    sget-object v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v4, :cond_0

    .line 365
    const-string/jumbo v4, "fingerprint_service"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/fingerprint/IFingerprintManager;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    .line 368
    :cond_0
    sget-object v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v4, :cond_3

    .line 369
    const-string/jumbo v4, "FPMS_FingerprintManager"

    const-string/jumbo v6, "ensureServiceConnected: mService is null"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->startFingerprintManagerService()V

    .line 371
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->waitForService()Z

    move-result v3

    .line 372
    .local v3, "isStartedServiceInTime":Z
    if-eqz v3, :cond_1

    sget-boolean v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsLinkedDeathRecipient:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    .local v0, "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    monitor-exit v5

    .line 360
    return-void

    .line 374
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    sget-object v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v4}, Lcom/samsung/android/fingerprint/IFingerprintManager;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 375
    const/4 v4, 0x1

    sput-boolean v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsLinkedDeathRecipient:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v4, "FPMS_FingerprintManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ensureServiceConnected:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 383
    .end local v0    # "e":Landroid/os/RemoteException;
    .local v3, "isStartedServiceInTime":Z
    :cond_3
    :try_start_3
    sget-object v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v4}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getVersion()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 384
    :catch_1
    move-exception v0

    .line 385
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_4
    instance-of v4, v0, Landroid/os/DeadObjectException;

    if-eqz v4, :cond_4

    .line 386
    const-string/jumbo v4, "FPMS_FingerprintManager"

    const-string/jumbo v6, "===DeadObjectException==="

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->startFingerprintManagerService()V

    .line 388
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->waitForService()Z

    move-result v3

    .line 389
    .local v3, "isStartedServiceInTime":Z
    if-eqz v3, :cond_1

    sget-boolean v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsLinkedDeathRecipient:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v4, :cond_1

    .line 391
    :try_start_5
    sget-object v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v4}, Lcom/samsung/android/fingerprint/IFingerprintManager;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 392
    const/4 v4, 0x1

    sput-boolean v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsLinkedDeathRecipient:Z

    .line 393
    const-string/jumbo v4, "FPMS_FingerprintManager"

    const-string/jumbo v6, "ensureServiceConnected: linkToDeath"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 394
    :catch_2
    move-exception v2

    .line 395
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_6
    const-string/jumbo v4, "FPMS_FingerprintManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ensureServiceConnected:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 401
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "ex":Landroid/os/RemoteException;
    .local v3, "isStartedServiceInTime":Z
    :catch_3
    move-exception v1

    .line 402
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "FPMS_FingerprintManager"

    const-string/jumbo v6, "ensureServiceConnected"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 399
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string/jumbo v4, "FPMS_FingerprintManager"

    const-string/jumbo v6, "ensureServiceConnected"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method public static generateHash(Ljava/lang/String;)[B
    .locals 6
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 2192
    :try_start_0
    const-string/jumbo v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 2193
    .local v2, "md":Ljava/security/MessageDigest;
    const-string/jumbo v3, "iso-8859-1"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 2194
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2197
    .end local v2    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 2198
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v3, "FPMS_FingerprintManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "generateHash:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    const/4 v3, 0x0

    return-object v3

    .line 2195
    :catch_1
    move-exception v1

    .line 2196
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v3, "FPMS_FingerprintManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "generateHash:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getImageQualityAnimation(ILandroid/content/Context;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 11
    .param p0, "quality"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 1965
    if-nez p1, :cond_0

    .line 1966
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "context is null."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1968
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1969
    .local v5, "mPm":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    .line 1970
    .local v6, "mRes":Landroid/content/res/Resources;
    const/4 v7, 0x0

    .line 1971
    .local v7, "result":I
    const/4 v4, 0x0

    .line 1974
    .local v4, "mAni":Landroid/graphics/drawable/AnimationDrawable;
    :try_start_0
    const-string/jumbo v8, "com.samsung.android.fingerprint.service"

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1978
    .end local v6    # "mRes":Landroid/content/res/Resources;
    :goto_0
    if-nez v6, :cond_1

    .line 1979
    const-string/jumbo v8, "FPMS_FingerprintManager"

    const-string/jumbo v9, "mRes is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    return-object v10

    .line 1975
    .restart local v6    # "mRes":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 1976
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v8, "FPMS_FingerprintManager"

    const-string/jumbo v9, "getImageQualityAnimation, NameNotFoundException"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1983
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "mRes":Landroid/content/res/Resources;
    :cond_1
    const/4 v8, -0x1

    if-ne p0, v8, :cond_2

    .line 1985
    :try_start_1
    sget-object v8, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getLastImageQuality(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result p0

    .line 1990
    :cond_2
    :goto_1
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->getSensorType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 1991
    sparse-switch p0, :sswitch_data_0

    .line 2024
    const-string/jumbo v8, "spass_errimage_default"

    const-string/jumbo v9, "anim"

    const-string/jumbo v10, "com.samsung.android.fingerprint.service"

    invoke-virtual {v6, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 2063
    :cond_3
    :goto_2
    if-eqz v7, :cond_4

    .line 2065
    :try_start_2
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    move-object v4, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2070
    .end local v4    # "mAni":Landroid/graphics/drawable/AnimationDrawable;
    :cond_4
    :goto_3
    return-object v4

    .line 1986
    .restart local v4    # "mAni":Landroid/graphics/drawable/AnimationDrawable;
    :catch_1
    move-exception v2

    .line 1987
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v8, "FPMS_FingerprintManager"

    const-string/jumbo v9, "getImageQualityAnimation: failed to call getLastImageQuality"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1993
    .end local v2    # "e":Landroid/os/RemoteException;
    :sswitch_0
    const-string/jumbo v8, "spass_errimage_nomatch"

    const-string/jumbo v9, "anim"

    const-string/jumbo v10, "com.samsung.android.fingerprint.service"

    invoke-virtual {v6, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto :goto_2

    .line 1996
    :sswitch_1
    const-string/jumbo v8, "spass_errimage_short"

    const-string/jumbo v9, "anim"

    const-string/jumbo v10, "com.samsung.android.fingerprint.service"

    invoke-virtual {v6, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto :goto_2

    .line 2000
    :sswitch_2
    const-string/jumbo v8, "spass_errimage_speed"

    const-string/jumbo v9, "anim"

    const-string/jumbo v10, "com.samsung.android.fingerprint.service"

    invoke-virtual {v6, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto :goto_2

    .line 2003
    :sswitch_3
    const-string/jumbo v8, "spass_errimage_reverse"

    const-string/jumbo v9, "anim"

    const-string/jumbo v10, "com.samsung.android.fingerprint.service"

    invoke-virtual {v6, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto :goto_2

    .line 2006
    :sswitch_4
    const-string/jumbo v8, "spass_errimage_left"

    const-string/jumbo v9, "anim"

    const-string/jumbo v10, "com.samsung.android.fingerprint.service"

    invoke-virtual {v6, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto :goto_2

    .line 2009
    :sswitch_5
    const-string/jumbo v8, "spass_errimage_right"

    const-string/jumbo v9, "anim"

    const-string/jumbo v10, "com.samsung.android.fingerprint.service"

    invoke-virtual {v6, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto :goto_2

    .line 2012
    :sswitch_6
    const-string/jumbo v8, "spass_errimage_wet"

    const-string/jumbo v9, "anim"

    const-string/jumbo v10, "com.samsung.android.fingerprint.service"

    invoke-virtual {v6, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto :goto_2

    .line 2015
    :sswitch_7
    const-string/jumbo v8, "spass_errimage_diagonal"

    const-string/jumbo v9, "anim"

    const-string/jumbo v10, "com.samsung.android.fingerprint.service"

    invoke-virtual {v6, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_2

    .line 2018
    :sswitch_8
    const-string/jumbo v8, "spass_errimage_homekey"

    const-string/jumbo v9, "anim"

    const-string/jumbo v10, "com.samsung.android.fingerprint.service"

    invoke-virtual {v6, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_2

    .line 2021
    :sswitch_9
    const-string/jumbo v8, "spass_errimage_same"

    const-string/jumbo v9, "anim"

    const-string/jumbo v10, "com.samsung.android.fingerprint.service"

    invoke-virtual {v6, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_2

    .line 2027
    :cond_5
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->getSensorType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 2028
    sparse-switch p0, :sswitch_data_1

    .line 2059
    const-string/jumbo v8, "spass_touch_errimage_default"

    const-string/jumbo v9, "anim"

    const-string/jumbo v10, "com.samsung.android.fingerprint.service"

    invoke-virtual {v6, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_2

    .line 2030
    :sswitch_a
    const-string/jumbo v8, "spass_touch_errimage_nomatch"

    const-string/jumbo v9, "anim"

    const-string/jumbo v10, "com.samsung.android.fingerprint.service"

    invoke-virtual {v6, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_2

    .line 2036
    :sswitch_b
    const-string/jumbo v8, "spass_touch_errimage_too_fast"

    const-string/jumbo v9, "anim"

    const-string/jumbo v10, "com.samsung.android.fingerprint.service"

    invoke-virtual {v6, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_2

    .line 2040
    :sswitch_c
    const-string/jumbo v8, "spass_touch_errimage_something_on_the_sensor"

    const-string/jumbo v9, "anim"

    const-string/jumbo v10, "com.samsung.android.fingerprint.service"

    invoke-virtual {v6, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_2

    .line 2047
    :sswitch_d
    const-string/jumbo v8, "spass_touch_errimage_whole"

    const-string/jumbo v9, "anim"

    const-string/jumbo v10, "com.samsung.android.fingerprint.service"

    invoke-virtual {v6, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_2

    .line 2051
    :sswitch_e
    const-string/jumbo v8, "spass_touch_errimage_wet"

    const-string/jumbo v9, "anim"

    const-string/jumbo v10, "com.samsung.android.fingerprint.service"

    invoke-virtual {v6, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_2

    .line 2055
    :sswitch_f
    const-string/jumbo v8, "spass_touch_errimage_position"

    const-string/jumbo v9, "anim"

    const-string/jumbo v10, "com.samsung.android.fingerprint.service"

    invoke-virtual {v6, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_2

    .line 2066
    :catch_2
    move-exception v3

    .line 2067
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "FPMS_FingerprintManager"

    const-string/jumbo v9, "getImageQualityAnimation : failed"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1991
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_1
        0x10 -> :sswitch_2
        0x200 -> :sswitch_8
        0x8000 -> :sswitch_7
        0x20000 -> :sswitch_4
        0x40000 -> :sswitch_5
        0x1000000 -> :sswitch_6
        0x30000000 -> :sswitch_9
    .end sparse-switch

    .line 2028
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_a
        0x2 -> :sswitch_b
        0x200 -> :sswitch_c
        0x1000 -> :sswitch_d
        0x10000 -> :sswitch_b
        0x20000 -> :sswitch_d
        0x40000 -> :sswitch_d
        0x80000 -> :sswitch_b
        0x1000000 -> :sswitch_e
        0x30000000 -> :sswitch_f
        0x60000000 -> :sswitch_d
    .end sparse-switch
.end method

.method public static getImageQualityFeedback(I)I
    .locals 1
    .param p0, "quality"    # I

    .prologue
    .line 1802
    const/4 v0, 0x0

    .line 1851
    .local v0, "result":I
    return v0
.end method

.method public static getImageQualityFeedbackString(ILandroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "quality"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 1894
    if-nez p1, :cond_0

    .line 1895
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "context is null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1897
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1898
    .local v2, "mPm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 1899
    .local v3, "mRes":Landroid/content/res/Resources;
    const/4 v5, 0x0

    .line 1900
    .local v5, "result":I
    const/4 v4, 0x0

    .line 1903
    .local v4, "mStr":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v6, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1907
    .end local v3    # "mRes":Landroid/content/res/Resources;
    :goto_0
    if-nez v3, :cond_1

    .line 1908
    const-string/jumbo v6, "FPMS_FingerprintManager"

    const-string/jumbo v7, "mRes is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    return-object v8

    .line 1904
    .restart local v3    # "mRes":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 1905
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v6, "FPMS_FingerprintManager"

    const-string/jumbo v7, "getImageQualityFeedbackString, NameNotFoundException"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1912
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "mRes":Landroid/content/res/Resources;
    :cond_1
    sparse-switch p0, :sswitch_data_0

    .line 1946
    const-string/jumbo v6, "touch_image_quality_finger_offset_too_far_left"

    const-string/jumbo v7, "string"

    const-string/jumbo v8, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1949
    :goto_1
    if-eqz v5, :cond_2

    .line 1951
    :try_start_1
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 1957
    .end local v4    # "mStr":Ljava/lang/String;
    :cond_2
    :goto_2
    return-object v4

    .line 1914
    .restart local v4    # "mStr":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v6, "recognize_fail"

    const-string/jumbo v7, "string"

    const-string/jumbo v8, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    .line 1917
    :sswitch_1
    const-string/jumbo v6, "touch_image_quality_finger_offset_too_far_left"

    const-string/jumbo v7, "string"

    const-string/jumbo v8, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    .line 1922
    :sswitch_2
    const-string/jumbo v6, "touch_image_quality_finger_offset_too_far_left"

    const-string/jumbo v7, "string"

    const-string/jumbo v8, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    .line 1925
    :sswitch_3
    const-string/jumbo v6, "touch_image_quality_pressure_too_light"

    const-string/jumbo v7, "string"

    const-string/jumbo v8, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    .line 1928
    :sswitch_4
    const-string/jumbo v6, "touch_image_quality_pressure_too_hard"

    const-string/jumbo v7, "string"

    const-string/jumbo v8, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    .line 1931
    :sswitch_5
    const-string/jumbo v6, "touch_image_quality_same_as_previous"

    const-string/jumbo v7, "string"

    const-string/jumbo v8, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    .line 1934
    :sswitch_6
    const-string/jumbo v6, "spass_image_quality_extraction_failure"

    const-string/jumbo v7, "string"

    const-string/jumbo v8, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    .line 1937
    :sswitch_7
    const-string/jumbo v6, "spass_image_quality_wet_finger"

    const-string/jumbo v7, "string"

    const-string/jumbo v8, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    .line 1940
    :sswitch_8
    const-string/jumbo v6, "spass_something_on_sensor"

    const-string/jumbo v7, "string"

    const-string/jumbo v8, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    .line 1943
    :sswitch_9
    const-string/jumbo v6, "spass_status_too_fast"

    const-string/jumbo v7, "string"

    const-string/jumbo v8, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    .line 1952
    :catch_1
    move-exception v1

    .line 1953
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "FPMS_FingerprintManager"

    const-string/jumbo v7, "getImageQualityFeedbackString : failed"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1912
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_9
        0x200 -> :sswitch_8
        0x1000 -> :sswitch_2
        0x2000 -> :sswitch_1
        0x10000 -> :sswitch_3
        0x20000 -> :sswitch_2
        0x40000 -> :sswitch_2
        0x80000 -> :sswitch_4
        0x1000000 -> :sswitch_7
        0x30000000 -> :sswitch_5
        0x40000000 -> :sswitch_6
    .end sparse-switch
.end method

.method public static getImageQualityIcon(I)I
    .locals 1
    .param p0, "quality"    # I

    .prologue
    .line 1856
    const/4 v0, 0x0

    .line 1889
    .local v0, "result":I
    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v0, Lcom/samsung/android/fingerprint/FingerprintManager;

    monitor-enter v0

    .line 241
    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "SecurityLevel"    # I

    .prologue
    const-class v0, Lcom/samsung/android/fingerprint/FingerprintManager;

    monitor-enter v0

    .line 251
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "SecurityLevel"    # I
    .param p2, "ownName"    # Ljava/lang/String;

    .prologue
    const-class v1, Lcom/samsung/android/fingerprint/FingerprintManager;

    monitor-enter v1

    .line 259
    if-nez p0, :cond_0

    .line 260
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "context must not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 262
    :cond_0
    :try_start_1
    sput-object p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 263
    sput p1, Lcom/samsung/android/fingerprint/FingerprintManager;->mSecurityLevel:I

    .line 264
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v0, :cond_1

    .line 265
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/fingerprint/FingerprintManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 266
    sget-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsAndroidFingerprintSupported:Z

    if-eqz v0, :cond_1

    .line 267
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "fingerprint"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->sFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 270
    :cond_1
    if-eqz p2, :cond_2

    .line 271
    sput-object p2, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    .line 273
    :cond_2
    sget-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsAndroidFingerprintSupported:Z

    if-nez v0, :cond_3

    .line 274
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 276
    :cond_3
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ownName"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/samsung/android/fingerprint/FingerprintManager;

    monitor-enter v0

    .line 246
    const/4 v1, 0x2

    :try_start_0
    invoke-static {p0, v1, p1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getSensorPosition()I
    .locals 2

    .prologue
    .line 1018
    const-string/jumbo v0, "google_touch"

    const-string/jumbo v1, "touch_display"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    const/4 v0, 0x2

    return v0

    .line 1020
    :cond_0
    const-string/jumbo v0, "google_touch"

    const-string/jumbo v1, "touch_rear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1021
    const/4 v0, 0x3

    return v0

    .line 1023
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static getSensorType()I
    .locals 2

    .prologue
    .line 1004
    const-string/jumbo v0, "google_touch"

    const-string/jumbo v1, "touch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1005
    const/4 v0, 0x2

    return v0

    .line 1007
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isSpassProcessSDK(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2204
    if-eqz p1, :cond_0

    const-string/jumbo v0, "com.samsung.android.sdk.pass.process"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2205
    const/4 v0, 0x1

    return v0

    .line 2207
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1094
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1093
    return-void
.end method

.method private logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "extraInfo"    # Ljava/lang/String;

    .prologue
    .line 1105
    const-string/jumbo v1, "FPMS_FingerprintManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ": failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1104
    return-void

    .line 1105
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private registerActivityLifeCallback()V
    .locals 2

    .prologue
    .line 845
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 846
    const-string/jumbo v0, "FPMS_FingerprintManager"

    const-string/jumbo v1, "registerActivityLifeCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 844
    :cond_0
    return-void
.end method

.method private static startFingerprintManagerService()V
    .locals 8

    .prologue
    .line 310
    :try_start_0
    sget-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsAndroidFingerprintSupported:Z

    if-eqz v0, :cond_1

    .line 311
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->sFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    .line 312
    const-string/jumbo v0, "FPMS_FingerprintManager"

    const-string/jumbo v1, "FingerprintService is not running!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void

    .line 315
    :cond_0
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->sFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/16 v1, 0x3ed

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    .line 308
    .local v7, "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 317
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 318
    .restart local v7    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.samsung.android.fingerprint.service"

    .line 319
    const-string/jumbo v2, "com.samsung.android.fingerprint.service.FingerprintServiceStarter"

    .line 318
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 320
    const-string/jumbo v0, "com.samsung.android.fingerprint.action.START_SERVICE"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    sget-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 322
    const-string/jumbo v0, "FPMS_FingerprintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Starting service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_3

    .line 325
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 330
    :catch_0
    move-exception v6

    .line 331
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "FPMS_FingerprintManager"

    const-string/jumbo v1, "startFingerprintManagerService : failed to start service"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 327
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private unregisterActivityLifeCallback()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 852
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 853
    const-string/jumbo v0, "FPMS_FingerprintManager"

    const-string/jumbo v1, "unregisterActivityLifeCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 855
    sput-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;

    .line 856
    sput-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    .line 851
    :cond_0
    return-void
.end method

.method private static waitForService()Z
    .locals 8

    .prologue
    .line 287
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x7d0

    add-long v2, v4, v6

    .line 289
    .local v2, "endMillis":J
    :goto_0
    sget-object v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mWaitLock:Ljava/lang/Object;

    monitor-enter v4

    .line 290
    :try_start_0
    const-string/jumbo v1, "fingerprint_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/fingerprint/IFingerprintManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    .line 291
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-eqz v1, :cond_0

    .line 292
    const-string/jumbo v1, "FPMS_FingerprintManager"

    const-string/jumbo v5, "waitForService: FPMS started"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    const/4 v1, 0x1

    monitor-exit v4

    return v1

    .line 295
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    cmp-long v1, v6, v2

    if-ltz v1, :cond_1

    .line 296
    const-string/jumbo v1, "FPMS_FingerprintManager"

    const-string/jumbo v5, "waitForService: Timeout"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    const/4 v1, 0x0

    monitor-exit v4

    return v1

    .line 300
    :cond_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mWaitLock:Ljava/lang/Object;

    const-wide/16 v6, 0x12c

    invoke-virtual {v1, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit v4

    goto :goto_0

    .line 289
    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1

    .line 301
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_1
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 337
    const-string/jumbo v0, "FPMS_FingerprintManager"

    const-string/jumbo v1, "binderDied called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    sput-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    .line 339
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsLinkedDeathRecipient:Z

    .line 340
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mFpClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    if-eqz v0, :cond_0

    .line 341
    const-string/jumbo v0, "FPMS_FingerprintManager"

    const-string/jumbo v1, "binderDied: Client is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/fingerprint/FingerprintManager$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/fingerprint/FingerprintManager$3;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 336
    :cond_0
    return-void
.end method

.method public cancel(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 453
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 454
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 455
    const-string/jumbo v2, "cancel"

    const-string/jumbo v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v4, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 456
    return v1

    .line 459
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->cancel(Landroid/os/IBinder;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "cancel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 463
    return v1
.end method

.method public closeTransaction(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1083
    const/4 v0, 0x1

    return v0
.end method

.method public enroll(Landroid/os/IBinder;Ljava/lang/String;I)I
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "fingerIndex"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 471
    sget-boolean v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsAndroidFingerprintSupported:Z

    if-nez v1, :cond_1

    .line 472
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 473
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_0

    .line 474
    const-string/jumbo v1, "enroll"

    const-string/jumbo v2, "FingerprintService is not running!"

    invoke-direct {p0, v1, v3, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 475
    return v4

    .line 478
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->enroll(Landroid/os/IBinder;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "enroll"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", permissionName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", fingerIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 484
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return v4
.end method

.method public getDaemonVersion()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1591
    sget-boolean v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsAndroidFingerprintSupported:Z

    if-eqz v2, :cond_3

    .line 1592
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->sFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v2, :cond_0

    .line 1593
    const-string/jumbo v2, "getDaemonVersion"

    const-string/jumbo v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v4, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1594
    return-object v4

    .line 1596
    :cond_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->sFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->requestGetVersion()[B

    move-result-object v0

    .line 1597
    .local v0, "bytes":[B
    if-eqz v0, :cond_1

    array-length v2, v0

    if-gtz v2, :cond_2

    .line 1598
    :cond_1
    return-object v4

    .line 1600
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    return-object v2

    .line 1603
    .end local v0    # "bytes":[B
    :cond_3
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1604
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_4

    .line 1605
    const-string/jumbo v2, "getDaemonVersion"

    const-string/jumbo v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v4, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1606
    return-object v4

    .line 1609
    :cond_4
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getDaemonVersion()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1610
    :catch_0
    move-exception v1

    .line 1611
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "getDaemonVersion"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1614
    return-object v4
.end method

.method public getEnrollFinishResult()I
    .locals 1

    .prologue
    .line 1213
    sget v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollFinishResult:I

    return v0
.end method

.method public getEnrollRepeatCount()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2172
    sget-boolean v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsAndroidFingerprintSupported:Z

    if-nez v1, :cond_1

    .line 2173
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 2174
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_0

    .line 2175
    const-string/jumbo v1, "getFingerprintId"

    const-string/jumbo v2, "FingerprintService is not running!"

    invoke-direct {p0, v1, v4, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 2176
    return v3

    .line 2179
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getEnrollRepeatCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2180
    :catch_0
    move-exception v0

    .line 2181
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "getFingerprintId"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2183
    return v3

    .line 2185
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public getEnrolledFingers()I
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 901
    sget-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsAndroidFingerprintSupported:Z

    if-eqz v0, :cond_4

    .line 902
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->sFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    .line 903
    const-string/jumbo v0, "getFingerprintId"

    const-string/jumbo v1, "FingerprintService is not running!"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 904
    return v10

    .line 907
    :cond_0
    const/16 v0, 0xa

    :try_start_0
    new-array v3, v0, [B

    .line 908
    .local v3, "fpIds":[B
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->sFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/16 v1, 0x3eb

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v9

    .line 909
    .local v9, "size":I
    if-lez v9, :cond_3

    .line 910
    const/4 v8, 0x0

    .line 911
    .local v8, "retFp":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_1

    .line 912
    aget-byte v0, v3, v7

    const/4 v1, 0x1

    shl-int v0, v1, v0

    or-int/2addr v8, v0

    .line 911
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 914
    :cond_1
    sget-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 915
    const-string/jumbo v0, "FPMS_FingerprintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getEnrolledFingers : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", fingers = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :goto_1
    return v8

    .line 917
    :cond_2
    const-string/jumbo v0, "FPMS_FingerprintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getEnrolledFingers : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 921
    .end local v3    # "fpIds":[B
    .end local v7    # "i":I
    .end local v8    # "retFp":I
    .end local v9    # "size":I
    :catch_0
    move-exception v6

    .line 922
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "getEnrolledFingers"

    invoke-direct {p0, v0, v6}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 936
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    const-string/jumbo v0, "FPMS_FingerprintManager"

    const-string/jumbo v1, "getEnrolledFingers : 0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    return v10

    .line 925
    :cond_4
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 926
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v0, :cond_5

    .line 927
    const-string/jumbo v0, "getEnrolledFingers"

    const-string/jumbo v1, "FingerprintService is not running!"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 928
    return v10

    .line 931
    :cond_5
    :try_start_1
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getEnrolledFingers(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    return v0

    .line 932
    :catch_1
    move-exception v6

    .line 933
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string/jumbo v0, "getEnrolledFingers"

    invoke-direct {p0, v0, v6}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method public getFingerprintId(I)Ljava/lang/String;
    .locals 11
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 2135
    sget-boolean v5, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsAndroidFingerprintSupported:Z

    if-eqz v5, :cond_3

    .line 2136
    sget-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->sFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v5, :cond_0

    .line 2137
    const-string/jumbo v4, "getFingerprintId"

    const-string/jumbo v5, "FingerprintService is not running!"

    invoke-direct {p0, v4, v10, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 2138
    return-object v10

    .line 2141
    :cond_0
    :try_start_0
    sget-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->sFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget-object v6, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Landroid/hardware/fingerprint/FingerprintManager;->requestGetUniqueID(ILjava/lang/String;)[B

    move-result-object v2

    .line 2142
    .local v2, "id":[B
    if-eqz v2, :cond_2

    .line 2143
    new-instance v3, Ljava/lang/StringBuilder;

    array-length v5, v2

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2144
    .local v3, "sb":Ljava/lang/StringBuilder;
    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_1

    aget-byte v0, v2, v4

    .line 2145
    .local v0, "b":B
    const-string/jumbo v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    and-int/lit16 v8, v0, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2144
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2147
    .end local v0    # "b":B
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 2149
    .end local v2    # "id":[B
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 2150
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "getFingerprintId"

    invoke-direct {p0, v4, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2164
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-object v10

    .line 2153
    :cond_3
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 2154
    sget-object v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v4, :cond_4

    .line 2155
    const-string/jumbo v4, "getFingerprintId"

    const-string/jumbo v5, "FingerprintService is not running!"

    invoke-direct {p0, v4, v10, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 2156
    return-object v10

    .line 2159
    :cond_4
    :try_start_1
    sget-object v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    sget-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    sget-object v6, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, p1, v5, v6}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getFingerprintIdByFinger(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    return-object v4

    .line 2160
    :catch_1
    move-exception v1

    .line 2161
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "getFingerprintId"

    invoke-direct {p0, v4, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public getFingerprintIds()[Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 2099
    sget-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsAndroidFingerprintSupported:Z

    if-eqz v0, :cond_3

    .line 2100
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->sFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    .line 2101
    const-string/jumbo v0, "getFingerprintId"

    const-string/jumbo v1, "FingerprintService is not running!"

    invoke-direct {p0, v0, v10, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 2102
    return-object v10

    .line 2105
    :cond_0
    const/16 v0, 0xa

    :try_start_0
    new-array v3, v0, [B

    .line 2106
    .local v3, "fpIds":[B
    const/4 v8, 0x0

    .line 2107
    .local v8, "ids":[Ljava/lang/String;
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->sFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/16 v1, 0x3eb

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v9

    .line 2108
    .local v9, "size":I
    if-lez v9, :cond_2

    .line 2109
    new-array v8, v9, [Ljava/lang/String;

    .line 2110
    .local v8, "ids":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_1

    .line 2111
    aget-byte v0, v3, v7

    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getFingerprintId(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2110
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2113
    :cond_1
    return-object v8

    .line 2115
    .end local v3    # "fpIds":[B
    .end local v7    # "i":I
    .end local v8    # "ids":[Ljava/lang/String;
    .end local v9    # "size":I
    :catch_0
    move-exception v6

    .line 2116
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "getFingerprintIds"

    invoke-direct {p0, v0, v6}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2130
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-object v10

    .line 2119
    :cond_3
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 2120
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v0, :cond_4

    .line 2121
    const-string/jumbo v0, "getFingerprintIds"

    const-string/jumbo v1, "FingerprintService is not running!"

    invoke-direct {p0, v0, v10, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 2122
    return-object v10

    .line 2125
    :cond_4
    :try_start_1
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getFingerprintIds(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    .line 2126
    :catch_1
    move-exception v6

    .line 2127
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string/jumbo v0, "getFingerprintIds"

    invoke-direct {p0, v0, v6}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public getIndexName(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 1765
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1766
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_0

    .line 1767
    const-string/jumbo v1, "getIndexName"

    const-string/jumbo v2, "FingerprintService is not running!"

    invoke-direct {p0, v1, v3, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1768
    return-object v3

    .line 1771
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getIndexName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1772
    :catch_0
    move-exception v0

    .line 1773
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "getIndexName"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1775
    return-object v3
.end method

.method public getLastImageQuality(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 676
    const/4 v1, 0x0

    .line 677
    .local v1, "imageId":I
    sget-boolean v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsAndroidFingerprintSupported:Z

    if-nez v2, :cond_2

    .line 678
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 679
    const-string/jumbo v2, "getLastImageQuality"

    const-string/jumbo v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v4, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 680
    const/4 v2, 0x0

    return v2

    .line 682
    :cond_0
    if-nez p1, :cond_1

    .line 683
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "context is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 686
    :cond_1
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getLastImageQuality(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityIcon(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 690
    :goto_0
    const-string/jumbo v2, "FPMS_FingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getLastImageQuality: return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_2
    return v1

    .line 687
    :catch_0
    move-exception v0

    .line 688
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "getQualityMessage"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getLastImageQualityMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 654
    sget-boolean v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsAndroidFingerprintSupported:Z

    if-nez v1, :cond_2

    .line 655
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_0

    .line 656
    const-string/jumbo v1, "getLastImageQualityMessage"

    const-string/jumbo v2, "FingerprintService is not running!"

    invoke-direct {p0, v1, v3, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 657
    return-object v3

    .line 659
    :cond_0
    if-nez p1, :cond_1

    .line 660
    return-object v3

    .line 663
    :cond_1
    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getLastImageQualityMessage(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 664
    :catch_0
    move-exception v0

    .line 665
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "getLastImageQualityMessage"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 668
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v3
.end method

.method public getSensorInfo()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1563
    sget-boolean v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsAndroidFingerprintSupported:Z

    if-eqz v2, :cond_3

    .line 1564
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->sFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v2, :cond_0

    .line 1565
    const-string/jumbo v2, "getSensorInfo"

    const-string/jumbo v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v4, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1566
    return-object v4

    .line 1568
    :cond_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->sFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->requestGetSensorInfo()[B

    move-result-object v0

    .line 1569
    .local v0, "bytes":[B
    if-eqz v0, :cond_1

    array-length v2, v0

    if-gtz v2, :cond_2

    .line 1570
    :cond_1
    return-object v4

    .line 1572
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    return-object v2

    .line 1575
    .end local v0    # "bytes":[B
    :cond_3
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1576
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_4

    .line 1577
    const-string/jumbo v2, "getSensorInfo"

    const-string/jumbo v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v4, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1578
    return-object v4

    .line 1581
    :cond_4
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getSensorInfo()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1582
    :catch_0
    move-exception v1

    .line 1583
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "getSensorInfo"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1586
    return-object v4
.end method

.method public getUserIdList()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1619
    sget-boolean v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsAndroidFingerprintSupported:Z

    if-eqz v1, :cond_1

    .line 1620
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->sFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v1, :cond_0

    .line 1621
    const-string/jumbo v1, "getUserIdList"

    const-string/jumbo v2, "FingerprintService is not running!"

    invoke-direct {p0, v1, v3, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1622
    return-object v3

    .line 1625
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->sFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->requestGetUserIDs()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1626
    :catch_0
    move-exception v0

    .line 1627
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "getUserIdList"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1643
    :goto_0
    return-object v3

    .line 1630
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1632
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_2

    .line 1633
    const-string/jumbo v1, "getUserIdList"

    const-string/jumbo v2, "FingerprintService is not running!"

    invoke-direct {p0, v1, v3, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1634
    return-object v3

    .line 1638
    :cond_2
    :try_start_1
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getUserIdList()[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    return-object v1

    .line 1639
    :catch_1
    move-exception v0

    .line 1640
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "getUserIdList"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getVersion()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1034
    sget-boolean v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsAndroidFingerprintSupported:Z

    if-eqz v1, :cond_0

    .line 1035
    const/high16 v1, 0x1030000

    return v1

    .line 1037
    :cond_0
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1038
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_1

    .line 1039
    const-string/jumbo v1, "getVersion"

    const-string/jumbo v2, "FingerprintService is not running!"

    invoke-direct {p0, v1, v4, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1040
    return v3

    .line 1044
    :cond_1
    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getVersion()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1045
    :catch_0
    move-exception v0

    .line 1046
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "getVersion"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1049
    return v3
.end method

.method public hasPendingCommand()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 985
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 986
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_0

    .line 987
    const-string/jumbo v1, "hasPendingCommand"

    const-string/jumbo v2, "FingerprintService is not running!"

    invoke-direct {p0, v1, v4, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 988
    return v3

    .line 991
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->hasPendingCommand()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 992
    :catch_0
    move-exception v0

    .line 993
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "hasPendingCommand"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 995
    return v3
.end method

.method public identify(Landroid/os/IBinder;Ljava/lang/String;)I
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "permissionName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 600
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 602
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_0

    .line 603
    const-string/jumbo v1, "identify"

    const-string/jumbo v2, "FingerprintService is not running!"

    invoke-direct {p0, v1, v3, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 604
    return v4

    .line 608
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->identify(Landroid/os/IBinder;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 609
    :catch_0
    move-exception v0

    .line 610
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "identify"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 613
    return v4
.end method

.method public identifyForMultiUser(Landroid/os/IBinder;ILjava/lang/String;)I
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "permissionName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 636
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 637
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_0

    .line 638
    const-string/jumbo v1, "identifyForMultiUser"

    const-string/jumbo v2, "FingerprintService is not running!"

    invoke-direct {p0, v1, v3, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 639
    return v4

    .line 642
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->identifyForMultiUser(Landroid/os/IBinder;ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 643
    :catch_0
    move-exception v0

    .line 644
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "identifyForMultiUser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 646
    return v4
.end method

.method public identifyForMultiUser(Landroid/os/IBinder;Ljava/lang/String;)I
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "permissionName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 618
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 620
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_0

    .line 621
    const-string/jumbo v1, "identifyForMultiUser"

    const-string/jumbo v2, "FingerprintService is not running!"

    invoke-direct {p0, v1, v3, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 622
    return v4

    .line 626
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    const/4 v2, -0x1

    invoke-interface {v1, p1, v2, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->identifyForMultiUser(Landroid/os/IBinder;ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "identifyForMultiUser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 631
    return v4
.end method

.method public identifyWithDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "client"    # Lcom/samsung/android/fingerprint/IFingerprintClient;
    .param p3, "attribute"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 559
    const/4 v2, -0x1

    .line 560
    .local v2, "retVal":I
    if-nez p1, :cond_0

    .line 561
    const-string/jumbo v3, "identifyWithDialog"

    const-string/jumbo v4, "Context is null"

    invoke-direct {p0, v3, v5, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 562
    return v6

    .line 564
    :cond_0
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 565
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v3, :cond_1

    .line 566
    const-string/jumbo v3, "identifyWithDialog"

    const-string/jumbo v4, "FingerprintService is not running!"

    invoke-direct {p0, v3, v5, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 567
    return v6

    .line 569
    :cond_1
    const/4 v0, 0x0

    .line 570
    .local v0, "comName":Landroid/content/ComponentName;
    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_2

    .line 571
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterActivityLifeCallback()V

    move-object v3, p1

    .line 572
    nop

    nop

    sput-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;

    move-object v3, p1

    .line 573
    nop

    nop

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    .line 574
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->registerActivityLifeCallback()V

    move-object v3, p1

    .line 575
    nop

    nop

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 582
    .end local v0    # "comName":Landroid/content/ComponentName;
    :goto_0
    :try_start_0
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->identifyWithDialog(Ljava/lang/String;Landroid/content/ComponentName;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I

    move-result v2

    .line 583
    if-eqz v2, :cond_3

    .line 584
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterActivityLifeCallback()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :goto_1
    return v2

    .line 577
    .restart local v0    # "comName":Landroid/content/ComponentName;
    :cond_2
    sput-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    .line 578
    sput-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;

    .line 579
    const-string/jumbo v3, "FPMS_FingerprintManager"

    const-string/jumbo v4, "identifyWithDialog : client is not Activity"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 586
    .end local v0    # "comName":Landroid/content/ComponentName;
    :cond_3
    :try_start_1
    sput-object p2, Lcom/samsung/android/fingerprint/FingerprintManager;->mFpClient:Lcom/samsung/android/fingerprint/IFingerprintClient;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 588
    :catch_0
    move-exception v1

    .line 589
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterActivityLifeCallback()V

    .line 590
    const-string/jumbo v3, "identifyWithDialog"

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public isEnrolling()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1734
    sget-boolean v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsAndroidFingerprintSupported:Z

    if-eqz v1, :cond_1

    .line 1736
    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->sFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v1, :cond_0

    .line 1737
    const-string/jumbo v1, "isEnrolling"

    const-string/jumbo v2, "FingerprintService is not running!"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1738
    return v4

    .line 1740
    :cond_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->sFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->isEnrollSession()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1741
    :catch_0
    move-exception v0

    .line 1742
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "isEnrolling"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1757
    :goto_0
    return v4

    .line 1746
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1747
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_2

    .line 1748
    const-string/jumbo v1, "isEnrolling"

    const-string/jumbo v2, "FingerprintService is not running!"

    invoke-direct {p0, v1, v3, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1749
    return v4

    .line 1752
    :cond_2
    :try_start_1
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->isEnrollSession()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    return v1

    .line 1753
    :catch_1
    move-exception v0

    .line 1754
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "FPMS_FingerprintManager"

    const-string/jumbo v2, "isEnrolling: failed "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isSensorReady()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1449
    sget-boolean v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsAndroidFingerprintSupported:Z

    if-eqz v2, :cond_4

    .line 1450
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->sFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v2, :cond_0

    .line 1451
    const-string/jumbo v2, "isSensorReady"

    const-string/jumbo v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v4, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1452
    return v5

    .line 1455
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->sFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->requestGetSensorStatus()I

    move-result v1

    .line 1456
    .local v1, "status":I
    sget-boolean v2, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1457
    const-string/jumbo v2, "FPMS_FingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSensorReady: status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1459
    :cond_1
    const v2, 0x186c8

    if-eq v1, v2, :cond_2

    .line 1460
    const v2, 0x186c9

    if-ne v1, v2, :cond_3

    .line 1461
    :cond_2
    const/4 v2, 0x1

    return v2

    .line 1463
    .end local v1    # "status":I
    :catch_0
    move-exception v0

    .line 1464
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "isSensorReady"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1478
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_0
    return v5

    .line 1467
    :cond_4
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1468
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_5

    .line 1469
    const-string/jumbo v2, "isSensorReady"

    const-string/jumbo v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v4, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1470
    return v5

    .line 1473
    :cond_5
    :try_start_1
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->isSensorReady()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    .line 1474
    :catch_1
    move-exception v0

    .line 1475
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "isSensorReady"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public isSupportBackupPassword()Z
    .locals 1

    .prologue
    .line 1073
    sget-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsAndroidFingerprintSupported:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSupportFingerprintIds()Z
    .locals 3

    .prologue
    .line 1057
    const/4 v1, 0x1

    .line 1058
    .local v1, "mSupportFingerprintIds":Z
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 1060
    .local v0, "deviceName":Ljava/lang/String;
    const-string/jumbo v2, "klte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "k3g"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1061
    const-string/jumbo v2, "kmini"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 1060
    if-nez v2, :cond_0

    .line 1061
    const-string/jumbo v2, "chagall"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 1060
    if-nez v2, :cond_0

    .line 1061
    const-string/jumbo v2, "klimt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 1060
    if-nez v2, :cond_0

    .line 1062
    const-string/jumbo v2, "slte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 1060
    if-nez v2, :cond_0

    .line 1062
    const-string/jumbo v2, "lentislte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 1060
    if-nez v2, :cond_0

    .line 1062
    const-string/jumbo v2, "kccat6"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 1060
    if-nez v2, :cond_0

    .line 1062
    const-string/jumbo v2, "hestialte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 1060
    if-eqz v2, :cond_1

    .line 1063
    :cond_0
    const/4 v1, 0x0

    .line 1065
    :cond_1
    return v1
.end method

.method public isVZWPermissionGranted()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2079
    sget-boolean v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsAndroidFingerprintSupported:Z

    if-nez v1, :cond_1

    .line 2080
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 2081
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_0

    .line 2082
    const-string/jumbo v1, "isVZWPermissionGranted"

    const-string/jumbo v2, "FingerprintService is not running!"

    invoke-direct {p0, v1, v4, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 2083
    return v3

    .line 2086
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->isVZWPermissionGranted(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2087
    :catch_0
    move-exception v0

    .line 2088
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "isVZWPermissionGranted"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2091
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return v3
.end method

.method public notifyAlternativePasswordBegin()V
    .locals 0

    .prologue
    .line 1683
    return-void
.end method

.method public notifyAppActivityState(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "extInfo"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 831
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 832
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_0

    .line 833
    const-string/jumbo v1, "notifyAppActivityState"

    const-string/jumbo v2, "FingerprintService is not running!"

    invoke-direct {p0, v1, v3, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 834
    return-void

    .line 837
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyApplicationState(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    :goto_0
    return-void

    .line 839
    :catch_0
    move-exception v0

    .line 840
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "notifyAppActivityState"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public notifyEnrollBegin()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1485
    sget-boolean v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsAndroidFingerprintSupported:Z

    if-eqz v1, :cond_0

    .line 1486
    const/4 v1, 0x1

    return v1

    .line 1488
    :cond_0
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1489
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_1

    .line 1490
    const-string/jumbo v1, "notifyEnrollBegin"

    const-string/jumbo v2, "FingerprintService is not running!"

    invoke-direct {p0, v1, v4, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1491
    return v3

    .line 1494
    :cond_1
    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyEnrollBegin()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1495
    :catch_0
    move-exception v0

    .line 1496
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "notifyEnrollBegin"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1498
    return v3
.end method

.method public notifyEnrollEnd()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1507
    sget-boolean v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsAndroidFingerprintSupported:Z

    if-eqz v1, :cond_0

    .line 1508
    const/4 v1, 0x1

    return v1

    .line 1510
    :cond_0
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1511
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_1

    .line 1512
    const-string/jumbo v1, "notifyEnrollEnd"

    const-string/jumbo v2, "FingerprintService is not running!"

    invoke-direct {p0, v1, v4, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1513
    return v3

    .line 1516
    :cond_1
    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyEnrollEnd()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1517
    :catch_0
    move-exception v0

    .line 1518
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "notifyEnrollEnd"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1520
    return v3
.end method

.method public openTransaction(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1078
    const/4 v0, 0x1

    return v0
.end method

.method public pauseEnroll()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1527
    sget-boolean v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsAndroidFingerprintSupported:Z

    if-nez v1, :cond_1

    .line 1528
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1529
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_0

    .line 1530
    const-string/jumbo v1, "pauseEnroll"

    const-string/jumbo v2, "FingerprintService is not running!"

    invoke-direct {p0, v1, v4, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1531
    return v3

    .line 1534
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->pauseEnroll()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1535
    :catch_0
    move-exception v0

    .line 1536
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "pauseEnroll"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1539
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return v3
.end method

.method public process(Landroid/os/IBinder;Ljava/lang/String;[B)[B
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "requestData"    # [B

    .prologue
    const/4 v8, 0x0

    .line 700
    sget-boolean v5, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsAndroidFingerprintSupported:Z

    if-eqz v5, :cond_3

    .line 701
    sget-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->sFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v5, :cond_0

    .line 702
    const-string/jumbo v5, "process"

    const-string/jumbo v6, "FingerprintService is not running!"

    invoke-direct {p0, v5, v8, v6}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 703
    return-object v8

    .line 706
    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 707
    :cond_1
    :try_start_0
    const-string/jumbo v5, "FPMS_FingerprintManager"

    const-string/jumbo v6, "process : invalid param"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    return-object v8

    .line 706
    :cond_2
    array-length v5, p3

    if-eqz v5, :cond_1

    .line 710
    const/16 v0, 0x8

    .line 711
    .local v0, "FIDO_HEADER_LEN":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 712
    .local v2, "lenAppId":I
    add-int/lit8 v5, v2, 0x8

    array-length v6, p3

    add-int v3, v5, v6

    .line 713
    .local v3, "lenBody":I
    add-int/lit8 v5, v2, 0x8

    array-length v6, p3

    add-int/2addr v5, v6

    new-array v4, v5, [B

    .line 714
    .local v4, "request":[B
    const/16 v5, 0x53

    const/4 v6, 0x0

    aput-byte v5, v4, v6

    .line 715
    const/4 v5, 0x1

    const/4 v6, 0x1

    aput-byte v5, v4, v6

    .line 716
    int-to-byte v5, v3

    const/4 v6, 0x2

    aput-byte v5, v4, v6

    .line 717
    shr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    const/4 v6, 0x3

    aput-byte v5, v4, v6

    .line 718
    const/16 v5, 0x53

    const/4 v6, 0x4

    aput-byte v5, v4, v6

    .line 719
    const/4 v5, 0x2

    const/4 v6, 0x5

    aput-byte v5, v4, v6

    .line 720
    int-to-byte v5, v2

    const/4 v6, 0x6

    aput-byte v5, v4, v6

    .line 721
    shr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    const/4 v6, 0x7

    aput-byte v5, v4, v6

    .line 722
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-static {v5, v6, v4, v7, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 723
    add-int/lit8 v5, v2, 0x8

    array-length v6, p3

    const/4 v7, 0x0

    invoke-static {p3, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 724
    sget-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->sFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v5, v4}, Landroid/hardware/fingerprint/FingerprintManager;->requestProcessFIDO([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 725
    .end local v0    # "FIDO_HEADER_LEN":I
    .end local v2    # "lenAppId":I
    .end local v3    # "lenBody":I
    .end local v4    # "request":[B
    :catch_0
    move-exception v1

    .line 726
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "process : "

    invoke-direct {p0, v5, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 744
    :goto_0
    return-object v8

    .line 729
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 730
    sget-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v5, :cond_4

    .line 731
    const-string/jumbo v5, "process"

    const-string/jumbo v6, "FingerprintService is not running!"

    invoke-direct {p0, v5, v8, v6}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 732
    return-object v8

    .line 735
    :cond_4
    if-eqz p3, :cond_5

    :try_start_1
    array-length v5, p3

    if-nez v5, :cond_6

    .line 736
    :cond_5
    const-string/jumbo v5, "process"

    const-string/jumbo v6, "Invaild params"

    const/4 v7, 0x0

    invoke-direct {p0, v5, v7, v6}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 737
    return-object v8

    .line 735
    :cond_6
    if-eqz p1, :cond_5

    .line 739
    sget-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v5, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->process(Landroid/os/IBinder;Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    return-object v5

    .line 740
    :catch_1
    move-exception v1

    .line 741
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "process"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v1, v6}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processFIDO(Landroid/content/Context;Landroid/os/IBinder;Ljava/lang/String;[B)[B
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "permissionName"    # Ljava/lang/String;
    .param p4, "requestData"    # [B

    .prologue
    const/4 v4, 0x0

    .line 752
    sget-boolean v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsAndroidFingerprintSupported:Z

    if-eqz v1, :cond_1

    .line 753
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->sFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v1, :cond_0

    .line 754
    const-string/jumbo v1, "process"

    const-string/jumbo v2, "FingerprintService is not running!"

    invoke-direct {p0, v1, v4, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 755
    return-object v4

    .line 757
    :cond_0
    const-string/jumbo v1, "fp_asm"

    invoke-virtual {p0, p2, v1, p4}, Lcom/samsung/android/fingerprint/FingerprintManager;->process(Landroid/os/IBinder;Ljava/lang/String;[B)[B

    move-result-object v1

    return-object v1

    .line 759
    :cond_1
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 760
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_2

    .line 761
    const-string/jumbo v1, "processFIDO"

    const-string/jumbo v2, "FingerprintService is not running!"

    invoke-direct {p0, v1, v4, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 762
    return-object v4

    .line 765
    :cond_2
    if-eqz p4, :cond_3

    :try_start_0
    array-length v1, p4

    if-nez v1, :cond_4

    .line 766
    :cond_3
    return-object v4

    .line 765
    :cond_4
    if-eqz p1, :cond_3

    .line 768
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2, p3, p4}, Lcom/samsung/android/fingerprint/IFingerprintManager;->processFIDO(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 769
    :catch_0
    move-exception v0

    .line 770
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "processFIDO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", permissionName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 773
    return-object v4
.end method

.method public registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;
    .locals 7
    .param p1, "client"    # Lcom/samsung/android/fingerprint/IFingerprintClient;
    .param p2, "clientSpec"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 492
    if-nez p2, :cond_0

    const/4 v1, 0x0

    .line 493
    :goto_0
    sget-boolean v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsAndroidFingerprintSupported:Z

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 494
    invoke-interface {p1}, Lcom/samsung/android/fingerprint/IFingerprintClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mSpassProcessSdkClientToken:Landroid/os/IBinder;

    .line 495
    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mSpassProcessSdkClientToken:Landroid/os/IBinder;

    return-object v3

    .line 492
    :cond_0
    const-string/jumbo v3, "appName"

    const-string/jumbo v4, ""

    invoke-virtual {p2, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->isSpassProcessSDK(Ljava/lang/String;)Z

    move-result v1

    .local v1, "isSpassProcessSdkClient":Z
    goto :goto_0

    .line 497
    .end local v1    # "isSpassProcessSdkClient":Z
    :cond_1
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 498
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v3, :cond_2

    .line 499
    const-string/jumbo v3, "registerClient"

    const-string/jumbo v4, "FingerprintService is not running!"

    invoke-direct {p0, v3, v6, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 500
    return-object v6

    .line 503
    :cond_2
    sput-object v6, Lcom/samsung/android/fingerprint/FingerprintManager;->mFpClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    .line 504
    sget-boolean v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsAndroidFingerprintSupported:Z

    if-nez v3, :cond_3

    .line 505
    const-string/jumbo v3, "securityLevel"

    invoke-virtual {p2, v3, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 506
    const-string/jumbo v3, "securityLevel"

    sget v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mSecurityLevel:I

    invoke-virtual {p2, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 509
    :cond_3
    const-string/jumbo v3, "packageName"

    sget-object v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :try_start_0
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v2

    .line 512
    .local v2, "retBinder":Landroid/os/IBinder;
    if-eqz v2, :cond_4

    if-eqz v1, :cond_5

    .line 516
    :cond_4
    :goto_1
    return-object v2

    .line 513
    :cond_5
    sput-object p1, Lcom/samsung/android/fingerprint/FingerprintManager;->mFpClient:Lcom/samsung/android/fingerprint/IFingerprintClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 517
    .end local v2    # "retBinder":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 518
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "registerClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "client="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", clientSpec="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v0, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 520
    return-object v6
.end method

.method public registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;)Landroid/os/IBinder;
    .locals 1
    .param p1, "client"    # Lcom/samsung/android/fingerprint/IFingerprintClient;
    .param p2, "clientSpecBuilder"    # Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 525
    invoke-virtual {p2}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->build()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public removeAllEnrolledFingers()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 965
    sget-boolean v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsAndroidFingerprintSupported:Z

    if-nez v1, :cond_1

    .line 966
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 967
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_0

    .line 968
    const-string/jumbo v1, "removeAllEnrolledFingers"

    const-string/jumbo v2, "FingerprintService is not running!"

    invoke-direct {p0, v1, v4, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 969
    return v3

    .line 972
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->removeAllEnrolledFingers(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 973
    :catch_0
    move-exception v0

    .line 974
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "removeAllEnrolledFingers"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 977
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return v3
.end method

.method public removeEnrolledFinger(I)Z
    .locals 5
    .param p1, "fingerIndex"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 945
    sget-boolean v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsAndroidFingerprintSupported:Z

    if-nez v1, :cond_1

    .line 946
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 947
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_0

    .line 948
    const-string/jumbo v1, "removeEnrolledFinger"

    const-string/jumbo v2, "FingerprintService is not running!"

    invoke-direct {p0, v1, v4, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 949
    return v3

    .line 952
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->removeEnrolledFinger(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 953
    :catch_0
    move-exception v0

    .line 954
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "removeEnrolledFinger"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 957
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return v3
.end method

.method public request(II)I
    .locals 5
    .param p1, "command"    # I
    .param p2, "data"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1667
    sget-boolean v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsAndroidFingerprintSupported:Z

    if-nez v1, :cond_1

    .line 1668
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1669
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_0

    .line 1670
    const-string/jumbo v1, "request"

    const-string/jumbo v2, "FingerprintService is not running!"

    invoke-direct {p0, v1, v4, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1671
    return v3

    .line 1674
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->request(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1675
    :catch_0
    move-exception v0

    .line 1676
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "request"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1679
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return v3
.end method

.method public resumeEnroll()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1546
    sget-boolean v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsAndroidFingerprintSupported:Z

    if-nez v1, :cond_1

    .line 1547
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1548
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_0

    .line 1549
    const-string/jumbo v1, "resumeEnroll"

    const-string/jumbo v2, "FingerprintService is not running!"

    invoke-direct {p0, v1, v4, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1550
    return v3

    .line 1553
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->resumeEnroll()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1554
    :catch_0
    move-exception v0

    .line 1555
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "resumeEnroll"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1558
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return v3
.end method

.method public setEnrollFinishResult(I)V
    .locals 0
    .param p1, "set"    # I

    .prologue
    .line 1208
    sput p1, Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollFinishResult:I

    .line 1207
    return-void
.end method

.method public setIndexName(ILjava/lang/String;)Z
    .locals 5
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1782
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1783
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_0

    .line 1784
    const-string/jumbo v1, "setIndexName"

    const-string/jumbo v2, "FingerprintService is not running!"

    invoke-direct {p0, v1, v4, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1785
    return v3

    .line 1788
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 1789
    :cond_1
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->setIndexName(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1791
    :catch_0
    move-exception v0

    .line 1792
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "setIndexName"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1794
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return v3
.end method

.method public setPassword(Ljava/lang/String;)Z
    .locals 5
    .param p1, "newPassword"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1714
    sget-boolean v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsAndroidFingerprintSupported:Z

    if-nez v1, :cond_1

    .line 1715
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1716
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_0

    .line 1717
    const-string/jumbo v1, "setPassword"

    const-string/jumbo v2, "FingerprintService is not running!"

    invoke-direct {p0, v1, v4, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1718
    return v3

    .line 1721
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->setPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1722
    :catch_0
    move-exception v0

    .line 1723
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "setPassword"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1726
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return v3
.end method

.method public showIdentifyDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;Ljava/lang/String;Z)Landroid/app/Dialog;
    .locals 6
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;
    .param p3, "permissionName"    # Ljava/lang/String;
    .param p4, "enablePassword"    # Z

    .prologue
    const/4 v5, 0x0

    .line 866
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 867
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 868
    const-string/jumbo v2, "showIdentifyDialog"

    const-string/jumbo v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v5, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 869
    return-object v5

    .line 871
    :cond_0
    const/4 v0, 0x0

    .line 872
    .local v0, "comName":Landroid/content/ComponentName;
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 873
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterActivityLifeCallback()V

    move-object v2, p1

    .line 874
    nop

    nop

    sput-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;

    move-object v2, p1

    .line 875
    nop

    nop

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    .line 876
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->registerActivityLifeCallback()V

    move-object v2, p1

    .line 877
    nop

    nop

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 882
    .end local v0    # "comName":Landroid/content/ComponentName;
    :goto_0
    new-instance v2, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    sget v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mSecurityLevel:I

    sget-object v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mIdentifyDialog:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    .line 884
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mIdentifyDialog:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    invoke-virtual {v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, v0, p3, p4}, Lcom/samsung/android/fingerprint/IFingerprintManager;->showIdentifyDialog(Landroid/os/IBinder;Landroid/content/ComponentName;Ljava/lang/String;Z)I

    move-result v2

    if-eqz v2, :cond_2

    .line 885
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterActivityLifeCallback()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    return-object v5

    .line 879
    .restart local v0    # "comName":Landroid/content/ComponentName;
    :cond_1
    sput-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    .line 880
    sput-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;

    goto :goto_0

    .line 888
    .end local v0    # "comName":Landroid/content/ComponentName;
    :catch_0
    move-exception v1

    .line 889
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterActivityLifeCallback()V

    .line 890
    const-string/jumbo v2, "showIdentifyDialog"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 891
    return-object v5

    .line 893
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mIdentifyDialog:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    return-object v2
.end method

.method public startEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;)Z
    .locals 5
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1332
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->getSensorType()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1333
    invoke-virtual {p0, p1, p2, p3, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->startEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 1335
    :cond_0
    if-nez p1, :cond_1

    .line 1336
    const-string/jumbo v0, "FPMS_FingerprintManager"

    const-string/jumbo v1, "ActivityContext is null!! startEnrollActivity need activityContext"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    return v2

    .line 1339
    :cond_1
    if-nez p2, :cond_2

    .line 1340
    const-string/jumbo v0, "FPMS_FingerprintManager"

    const-string/jumbo v1, "Listener is null!! startEnrollActivity need EnrollFinishListener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    return v2

    .line 1343
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 1344
    :cond_3
    const-string/jumbo v0, "FPMS_FingerprintManager"

    const-string/jumbo v1, "Id parameter is needed. Please give a correct id."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    return v2

    .line 1347
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollBegin()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1348
    const-string/jumbo v0, "FPMS_FingerprintManager"

    const-string/jumbo v1, "startEnrollActivity: notifyEnrollBegin failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    return v2

    .line 1351
    :cond_5
    const-string/jumbo v0, "FPMS_FingerprintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startEnrollActivity: ID ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    invoke-virtual {p0, p1, p2, p3, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->startSettingEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;I)V

    .line 1353
    return v4
.end method

.method public startEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "index"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1359
    const/4 v0, 0x0

    .line 1360
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez p1, :cond_0

    .line 1361
    const-string/jumbo v1, "FPMS_FingerprintManager"

    const-string/jumbo v2, "ActivityContext is null!! startEnrollActivity need activityContext"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    return v3

    .line 1364
    :cond_0
    if-nez p2, :cond_1

    .line 1365
    const-string/jumbo v1, "FPMS_FingerprintManager"

    const-string/jumbo v2, "Listener is null!! startEnrollActivity need EnrollFinishListener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    return v3

    .line 1368
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 1369
    :cond_2
    const-string/jumbo v1, "FPMS_FingerprintManager"

    const-string/jumbo v2, "Id parameter is needed. Please give a correct id."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    return v3

    .line 1372
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollBegin()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1373
    const-string/jumbo v1, "FPMS_FingerprintManager"

    const-string/jumbo v2, "startEnrollActivity: notifyEnrollBegin failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    return v3

    .line 1377
    :cond_4
    sput-object p1, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1378
    sput-object p2, Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    .line 1379
    sput-object p3, Lcom/samsung/android/fingerprint/FingerprintManager;->mStringId:Ljava/lang/String;

    .line 1380
    sput p4, Lcom/samsung/android/fingerprint/FingerprintManager;->mIndex:I

    .line 1382
    const-string/jumbo v1, "FPMS_FingerprintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startEnrollActivity: previousStage(mStringId)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1383
    const-string/jumbo v3, ", ownName="

    .line 1382
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1383
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    .line 1382
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1383
    const-string/jumbo v3, ", index="

    .line 1382
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1383
    sget v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mIndex:I

    .line 1382
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v1

    if-eqz v1, :cond_5

    .line 1386
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1387
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1388
    const-string/jumbo v1, "packageName"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    const-string/jumbo v1, "demandExtraEvent"

    invoke-virtual {v0, v1, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1390
    const-string/jumbo v1, "ownName"

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/fingerprint/FingerprintManager$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/fingerprint/FingerprintManager$4;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->identifyWithDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I

    .line 1436
    return v4

    .line 1439
    .local v0, "bundle":Landroid/os/Bundle;
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/fingerprint/FingerprintManager;->startSettingEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;I)V

    .line 1440
    return v4
.end method

.method public startSettingEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;I)V
    .locals 6
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "index"    # I

    .prologue
    .line 1304
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1305
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1306
    .local v2, "intent":Landroid/content/Intent;
    sget-object v4, Lcom/samsung/android/fingerprint/FingerprintManager;->START_ENROLL_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1307
    const-string/jumbo v4, "previousStage"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1308
    sget-object v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1309
    const-string/jumbo v4, "ownName"

    sget-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1311
    :cond_0
    const-string/jumbo v4, "index"

    invoke-virtual {v2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1312
    const-string/jumbo v4, "packageName"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1314
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_1

    .line 1315
    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1319
    :goto_0
    new-instance v1, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;

    invoke-direct {v1, p0, p2, p3}, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;)V

    .line 1320
    .local v1, "enrollFinishBroadcastReceiver":Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.samsung.android.fingerprint.action.ENROLL_FINISHED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1321
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1303
    .end local v1    # "enrollFinishBroadcastReceiver":Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :goto_1
    return-void

    .line 1317
    :cond_1
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1322
    :catch_0
    move-exception v0

    .line 1323
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "FPMS_FingerprintManager"

    const-string/jumbo v5, "startSettingEnrollActivity: exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public unregisterClient(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 533
    sget-boolean v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsAndroidFingerprintSupported:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mSpassProcessSdkClientToken:Landroid/os/IBinder;

    if-ne v1, p1, :cond_0

    .line 534
    iput-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mSpassProcessSdkClientToken:Landroid/os/IBinder;

    .line 535
    return v2

    .line 537
    :cond_0
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 538
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_1

    .line 539
    const-string/jumbo v1, "unregisterClient"

    const-string/jumbo v2, "FingerprintService is not running!"

    invoke-direct {p0, v1, v3, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 540
    return v4

    .line 544
    :cond_1
    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->unregisterClient(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 545
    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mFpClient:Lcom/samsung/android/fingerprint/IFingerprintClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    return v2

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "unregisterClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 551
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return v4
.end method

.method public verifyPassword(Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1690
    sget-boolean v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsAndroidFingerprintSupported:Z

    if-nez v1, :cond_1

    .line 1691
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1692
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_0

    .line 1693
    const-string/jumbo v1, "verifyPassword"

    const-string/jumbo v2, "FingerprintService is not running!"

    invoke-direct {p0, v1, v4, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1694
    return v3

    .line 1697
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-interface {v1, p1, p2, v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->verifyPassword(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1698
    :catch_0
    move-exception v0

    .line 1699
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "verifyPassword"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1702
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return v3
.end method

.method public verifyPassword(Ljava/lang/String;)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1709
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/fingerprint/FingerprintManager;->verifyPassword(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public verifySensorState(IIIII)I
    .locals 8
    .param p1, "cmd"    # I
    .param p2, "sId"    # I
    .param p3, "opt"    # I
    .param p4, "logOpt"    # I
    .param p5, "uId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v7, -0x1

    .line 1648
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1650
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v0, :cond_0

    .line 1651
    const-string/jumbo v0, "verifySensorState"

    const-string/jumbo v1, "FingerprintService is not running!"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1652
    return v7

    .line 1656
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/fingerprint/IFingerprintManager;->verifySensorState(IIIII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 1657
    :catch_0
    move-exception v6

    .line 1658
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "verifySensorState"

    invoke-direct {p0, v0, v6}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1660
    return v7
.end method
