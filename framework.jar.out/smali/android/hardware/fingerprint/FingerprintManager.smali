.class public Landroid/hardware/fingerprint/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/FingerprintManager$1;,
        Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;,
        Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;,
        Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$EnumerateCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$MyHandler;,
        Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;,
        Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;,
        Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;
    }
.end annotation


# static fields
.field public static final CLIENTSPEC_KEY_ALLOW_INDEXES:Ljava/lang/String; = "request_template_index_list"

.field public static final CLIENTSPEC_KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final CLIENT_KEY_PRIVILEGED_ATTR:Ljava/lang/String; = "privileged_attr"

.field private static final DEBUG:Z

.field public static final FINGERPRINT_ACQUIRED_CAPTURE_COMPLETED:I = 0x2713

.field public static final FINGERPRINT_ACQUIRED_CAPTURE_FAILED:I = 0x2716

.field public static final FINGERPRINT_ACQUIRED_CAPTURE_FINGER_LEAVE:I = 0x2714

.field public static final FINGERPRINT_ACQUIRED_CAPTURE_FINGER_LEAVE_TIMEOUT:I = 0x2717

.field public static final FINGERPRINT_ACQUIRED_CAPTURE_READY:I = 0x2711

.field public static final FINGERPRINT_ACQUIRED_CAPTURE_STARTED:I = 0x2712

.field public static final FINGERPRINT_ACQUIRED_CAPTURE_SUCCESS:I = 0x2715

.field public static final FINGERPRINT_ACQUIRED_DUPLICATED_SCANNED_IMAGE:I = 0x3ea

.field public static final FINGERPRINT_ACQUIRED_FACTORY_TEST_SNSR_TEST_SCRIPT_END:I = 0x2719

.field public static final FINGERPRINT_ACQUIRED_FACTORY_TEST_SNSR_TEST_SCRIPT_START:I = 0x2718

.field public static final FINGERPRINT_ACQUIRED_GOOD:I = 0x0

.field public static final FINGERPRINT_ACQUIRED_IMAGER_DIRTY:I = 0x3

.field public static final FINGERPRINT_ACQUIRED_INSUFFICIENT:I = 0x2

.field public static final FINGERPRINT_ACQUIRED_NAVIGATION_SWIPE_DOWN:I = 0x4e22

.field public static final FINGERPRINT_ACQUIRED_NAVIGATION_SWIPE_UP:I = 0x4e21

.field public static final FINGERPRINT_ACQUIRED_PARTIAL:I = 0x1

.field public static final FINGERPRINT_ACQUIRED_TOO_FAST:I = 0x5

.field public static final FINGERPRINT_ACQUIRED_TOO_SLOW:I = 0x4

.field public static final FINGERPRINT_ACQUIRED_VENDOR:I = 0x6

.field public static final FINGERPRINT_ACQUIRED_VENDOR_BASE:I = 0x3e8

.field public static final FINGERPRINT_ACQUIRED_WET_FINGER:I = 0x3e9

.field public static final FINGERPRINT_ERROR_CANCELED:I = 0x5

.field public static final FINGERPRINT_ERROR_DEVICE_NEED_RECAL:I = 0x3e9

.field public static final FINGERPRINT_ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final FINGERPRINT_ERROR_IDENTIFY_FAILURE_BROKEN_DATABASE:I = 0x3ec

.field public static final FINGERPRINT_ERROR_IDENTIFY_FAILURE_SENSOR_CHANGED:I = 0x3ed

.field public static final FINGERPRINT_ERROR_IDENTIFY_FAILURE_SERVICE_FAILURE:I = 0x3eb

.field public static final FINGERPRINT_ERROR_IDENTIFY_FAILURE_SYSTEM_FAILURE:I = 0x3ea

.field public static final FINGERPRINT_ERROR_LOCKOUT:I = 0x7

.field public static final FINGERPRINT_ERROR_LOCKOUT_PERMANENT:I = 0x9

.field public static final FINGERPRINT_ERROR_NEED_TO_RETRY:I = 0x1388

.field public static final FINGERPRINT_ERROR_NO_SPACE:I = 0x4

.field public static final FINGERPRINT_ERROR_TIMEOUT:I = 0x3

.field public static final FINGERPRINT_ERROR_UNABLE_TO_PROCESS:I = 0x2

.field public static final FINGERPRINT_ERROR_UNABLE_TO_REMOVE:I = 0x6

.field public static final FINGERPRINT_ERROR_VENDOR:I = 0x8

.field public static final FINGERPRINT_ERROR_VENDOR_BASE:I = 0x3e8

.field public static final FINGERPRINT_REQUEST_ENROLL_SESSION:I = 0x3ea

.field public static final FINGERPRINT_REQUEST_ENUMERATE:I = 0xb

.field public static final FINGERPRINT_REQUEST_GET_FP_IDS:I = 0x3eb

.field public static final FINGERPRINT_REQUEST_GET_MAX_TEMPLATE_NUMBER:I = 0x3ec

.field public static final FINGERPRINT_REQUEST_GET_SENSOR_INFO:I = 0x5

.field public static final FINGERPRINT_REQUEST_GET_SENSOR_STATUS:I = 0x6

.field public static final FINGERPRINT_REQUEST_GET_TOUCH_CNT:I = 0x3ef

.field public static final FINGERPRINT_REQUEST_GET_UNIQUE_ID:I = 0x7

.field public static final FINGERPRINT_REQUEST_GET_USERIDS:I = 0xc

.field public static final FINGERPRINT_REQUEST_GET_VERSION:I = 0x4

.field public static final FINGERPRINT_REQUEST_HAS_FEATURE:I = 0x3ee

.field public static final FINGERPRINT_REQUEST_LOCKOUT:I = 0x3e9

.field public static final FINGERPRINT_REQUEST_NAVIGATION_LCD_ONOFF:I = 0x11

.field public static final FINGERPRINT_REQUEST_NAVIGATION_MODE_END:I = 0x10

.field public static final FINGERPRINT_REQUEST_NAVIGATION_MODE_START:I = 0xf

.field public static final FINGERPRINT_REQUEST_PAUSE:I = 0x0

.field public static final FINGERPRINT_REQUEST_PROCESS_FIDO:I = 0x9

.field public static final FINGERPRINT_REQUEST_REMOVE_FINGER:I = 0x3e8

.field public static final FINGERPRINT_REQUEST_RESUME:I = 0x1

.field public static final FINGERPRINT_REQUEST_SENSOR_TEST_NORMALSCAN:I = 0x3

.field public static final FINGERPRINT_REQUEST_SESSION_OPEN:I = 0x2

.field public static final FINGERPRINT_REQUEST_SET_ACTIVE_GROUP:I = 0x8

.field public static final FINGERPRINT_REQUEST_START_FPMS:I = 0x3ed

.field public static final FINGERPRINT_REQUEST_UPDATE_SID:I = 0xa

.field private static final MSG_ACQUIRED:I = 0x65

.field private static final MSG_AUTHENTICATION_FAILED:I = 0x67

.field private static final MSG_AUTHENTICATION_SUCCEEDED:I = 0x66

.field private static final MSG_ENROLL_RESULT:I = 0x64

.field private static final MSG_ENUMERATED:I = 0x6a

.field private static final MSG_ERROR:I = 0x68

.field private static final MSG_REMOVED:I = 0x69

.field public static final PRIVILEGED_ATTR_EXCLUSIVE_IDENTIFY:I = 0x4

.field public static final PRIVILEGED_ATTR_EXTRA_EVENT:I = 0x10

.field public static final PRIVILEGED_ATTR_FINGER_DETECTION:I = 0x8

.field public static final PRIVILEGED_ATTR_NO_LOCKOUT:I = 0x2

.field public static final PRIVILEGED_ATTR_NO_VIBRATION:I = 0x1

.field public static final PRIVILEGED_TYPE_KEYGUARD:I = -0x80000000

.field public static final PRIVILEGED_TYPE_TEST:I = 0x8000000

.field public static final SEM_FEATURE_NAVIGATION:I = 0x1

.field public static final SEM_FEATURE_SWIPE_ENROLL:I = 0x2

.field public static final SEM_FINGERPRINT_ACQUIRED_DUPLICATED_IMAGE:I = 0x3ea

.field public static final SEM_FINGERPRINT_ACQUIRED_WET_FINGER:I = 0x3e9

.field public static final SEM_FINGERPRINT_ERROR_CALIBRATION:I = 0x3e9

.field public static final SEM_FINGERPRINT_ERROR_INVALID_HW:I = 0x3ed

.field public static final SEM_FINGERPRINT_ERROR_NEED_TO_RETRY:I = 0x1388

.field public static final SEM_FINGERPRINT_ERROR_SERVICE_FAILURE:I = 0x3eb

.field public static final SEM_FINGERPRINT_ERROR_SYSTEM_FAILURE:I = 0x3ea

.field public static final SEM_FINGERPRINT_ERROR_TEMPLATE_CORRUPTED:I = 0x3ec

.field public static final SEM_FINGERPRINT_EVENT_CAPTURE_COMPLETED:I = 0x2713

.field public static final SEM_FINGERPRINT_EVENT_CAPTURE_FAILED:I = 0x2716

.field public static final SEM_FINGERPRINT_EVENT_CAPTURE_READY:I = 0x2711

.field public static final SEM_FINGERPRINT_EVENT_CAPTURE_STARTED:I = 0x2712

.field public static final SEM_FINGERPRINT_EVENT_CAPTURE_SUCCESS:I = 0x2715

.field public static final SEM_FINGERPRINT_EVENT_FACTORY_SNSR_SCRIPT_END:I = 0x2719

.field public static final SEM_FINGERPRINT_EVENT_FACTORY_SNSR_SCRIPT_START:I = 0x2718

.field public static final SEM_FINGERPRINT_EVENT_FINGER_LEAVE:I = 0x2714

.field public static final SEM_FINGERPRINT_EVENT_FINGER_LEAVE_TIMEOUT:I = 0x2717

.field public static final SEM_FINGERPRINT_EVENT_GESTURE_DTAP:I = 0x4e23

.field public static final SEM_FINGERPRINT_EVENT_GESTURE_LPRESS:I = 0x4e24

.field public static final SEM_FINGERPRINT_EVENT_GESTURE_SWIPE_DOWN:I = 0x4e22

.field public static final SEM_FINGERPRINT_EVENT_GESTURE_SWIPE_UP:I = 0x4e21

.field public static final SEM_FINGERPRINT_EVENT_VENDOR_BASE:I = 0x2710

.field public static final SEM_SENSOR_POSITION_DISPLAY:I = 0x2

.field public static final SEM_SENSOR_POSITION_HOME_KEY:I = 0x1

.field public static final SEM_SENSOR_POSITION_REAR:I = 0x3

.field public static final SENSOR_STATUS_ERROR:I = 0x186ca

.field public static final SENSOR_STATUS_OK:I = 0x186c8

.field public static final SENSOR_STATUS_WORKING:I = 0x186c9

.field private static final TAG:Ljava/lang/String; = "FingerprintManager"


# instance fields
.field private mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private mContext:Landroid/content/Context;

.field private mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

.field private mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

.field private mEnumerateCallback:Landroid/hardware/fingerprint/FingerprintManager$EnumerateCallback;

.field private mHandler:Landroid/os/Handler;

.field private mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field private mRemovalFingerprint:Landroid/hardware/fingerprint/Fingerprint;

.field private mSemRequestCallback:Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;

.field private mService:Landroid/hardware/fingerprint/IFingerprintService;

.field private mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Landroid/hardware/fingerprint/FingerprintManager;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    return-object v0
.end method

.method static synthetic -get2(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    return-object v0
.end method

.method static synthetic -get3(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    return-object v0
.end method

.method static synthetic -get4(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnumerateCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnumerateCallback:Landroid/hardware/fingerprint/FingerprintManager$EnumerateCallback;

    return-object v0
.end method

.method static synthetic -get5(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    return-object v0
.end method

.method static synthetic -get7(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/Fingerprint;
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-object v0
.end method

.method static synthetic -get8(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mSemRequestCallback:Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;

    return-object v0
.end method

.method static synthetic -set0(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
    .locals 0

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    return-object p1
.end method

.method static synthetic -set1(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
    .locals 0

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/hardware/fingerprint/FingerprintManager;II)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/hardware/fingerprint/FingerprintManager;II)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->cancelAuthentication(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->cancelEnrollment()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/hardware/fingerprint/FingerprintManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/fingerprint/IFingerprintService;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$1;

    invoke-direct {v0, p0}, Landroid/hardware/fingerprint/FingerprintManager$1;-><init>(Landroid/hardware/fingerprint/FingerprintManager;)V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FingerprintManager"

    const-string/jumbo v1, "FingerprintManagerService was null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;

    invoke-direct {v0, p0, p1, v2}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintManager$MyHandler;)V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private cancelAuthentication(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V
    .locals 4

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private cancelEnrollment()V
    .locals 3

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->cancelEnrollment(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private getAcquiredString(II)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->semGetAcquiredString(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    const-string/jumbo v1, "FingerprintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid acquired message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :pswitch_0
    return-object v4

    :pswitch_1
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v2, 0x104035f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_2
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v2, 0x104035e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_3
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v2, 0x104035d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_4
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v2, 0x1040361

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_5
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v2, 0x1040360

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_6
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getCurrentUserId()I
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private getErrorString(II)Ljava/lang/String;
    .locals 3

    const v1, 0x1040368

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "FingerprintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid error message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v1, 0x1040363

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v1, 0x1040366

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v1, 0x1040367

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_5
    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v1, 0x1040362

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0, v0, v0}, Landroid/hardware/fingerprint/FingerprintManager;->semGetErrorString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_6
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v1, 0x1040364

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_7
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v1, 0x1040365

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private semGetAcquiredString(II)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "FingerprintManager"

    const-string/jumbo v3, "semGetAcquiredString : fail to get resources"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    return-object v5

    :pswitch_0
    return-object v5

    :pswitch_1
    const-string/jumbo v2, "touch_image_quality_finger_offset_too_far_left"

    const-string/jumbo v3, "string"

    const-string/jumbo v4, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_2
    const-string/jumbo v2, "touch_image_quality_finger_offset_too_far_left"

    const-string/jumbo v3, "string"

    const-string/jumbo v4, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_3
    const-string/jumbo v2, "spass_something_on_sensor"

    const-string/jumbo v3, "string"

    const-string/jumbo v4, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_4
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v3, 0x1040361

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_5
    const-string/jumbo v2, "spass_status_too_fast"

    const-string/jumbo v3, "string"

    const-string/jumbo v4, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_6
    const/16 v2, 0x3e9

    if-ne p2, v2, :cond_1

    const-string/jumbo v2, "spass_image_quality_wet_finger"

    const-string/jumbo v3, "string"

    const-string/jumbo v4, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "semGetAcquiredString : Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private semGetErrorString(II)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "FingerprintManager"

    const-string/jumbo v3, "semGetErrorString : fail to get resources"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_0
    const-string/jumbo v2, "fingerprint_error_insecure_bimetrics"

    const-string/jumbo v3, "string"

    const-string/jumbo v4, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "semGetErrorString : Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method public static semGetSensorPosition()I
    .locals 2

    const-string/jumbo v0, "google_touch"

    const-string/jumbo v1, "touch_display"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const-string/jumbo v0, "google_touch"

    const-string/jumbo v1, "touch_rear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private useHandler(Landroid/os/Handler;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/Looper;Landroid/hardware/fingerprint/FingerprintManager$MyHandler;)V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/Looper;Landroid/hardware/fingerprint/FingerprintManager$MyHandler;)V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method


# virtual methods
.method public addLockoutResetCallback(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V
    .locals 4

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    new-instance v3, Landroid/hardware/fingerprint/FingerprintManager$5;

    invoke-direct {v3, p0, v1, p1}, Landroid/hardware/fingerprint/FingerprintManager$5;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/PowerManager;Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V

    invoke-interface {v2, v3}, Landroid/hardware/fingerprint/IFingerprintService;->addLockoutResetCallback(Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    const-string/jumbo v2, "FingerprintManager"

    const-string/jumbo v3, "addLockoutResetCallback(): Service not connected!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V
    .locals 7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V

    return-void
.end method

.method public authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V

    return-void
.end method

.method public authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V
    .locals 10

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must supply an authentication callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FingerprintManager"

    const-string/jumbo v1, "authentication already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;

    invoke-direct {v0, p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V

    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_2
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_3

    :try_start_0
    invoke-direct {p0, p5}, Landroid/hardware/fingerprint/FingerprintManager;->useHandler(Landroid/os/Handler;)V

    iput-object p4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getOpId()J

    move-result-wide v2

    :goto_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    move/from16 v4, p6

    move v6, p3

    move-object/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Landroid/hardware/fingerprint/IFingerprintService;->authenticate(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :cond_4
    const-wide/16 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v9

    const-string/jumbo v0, "FingerprintManager"

    const-string/jumbo v1, "Remote exception while authenticating: "

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p4, :cond_3

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$2;

    invoke-direct {v1, p0, p4}, Landroid/hardware/fingerprint/FingerprintManager$2;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public enroll([BLandroid/os/CancellationSignal;IILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->enroll([BLandroid/os/CancellationSignal;IILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;Landroid/os/Bundle;)V

    return-void
.end method

.method public enroll([BLandroid/os/CancellationSignal;IILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;Landroid/os/Bundle;)V
    .locals 9

    const/4 v1, 0x0

    const/4 v0, -0x2

    if-ne p4, v0, :cond_0

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result p4

    :cond_0
    if-nez p5, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must supply an enrollment callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "FingerprintManager"

    const-string/jumbo v1, "enrollment already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;

    invoke-direct {v0, p0, v1}, Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;)V

    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_3
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_4

    :try_start_0
    iput-object p5, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    move v3, p4

    move v5, p3

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Landroid/hardware/fingerprint/IFingerprintService;->enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v8

    const-string/jumbo v0, "FingerprintManager"

    const-string/jumbo v1, "Remote exception in enroll: "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p5, :cond_4

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$3;

    invoke-direct {v1, p0, p5}, Landroid/hardware/fingerprint/FingerprintManager$3;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public enumerate(ILandroid/hardware/fingerprint/FingerprintManager$EnumerateCallback;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    :try_start_0
    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnumerateCallback:Landroid/hardware/fingerprint/FingerprintManager$EnumerateCallback;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    invoke-interface {v1, v2, p1, v3}, Landroid/hardware/fingerprint/IFingerprintService;->enumerate(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FingerprintManager"

    const-string/jumbo v2, "Remote exception in enumerate: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v4, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v4, v1}, Landroid/hardware/fingerprint/FingerprintManager$EnumerateCallback;->onEnumerateError(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getAuthenticatorId()J
    .locals 4

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->getAuthenticatorId(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    const-string/jumbo v1, "FingerprintManager"

    const-string/jumbo v2, "getAuthenticatorId(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public getEnrolledFingerprints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnrolledFingerprints(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->getEnrolledFingerprints(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    return-object v2
.end method

.method public hasEnrolledFingerprints()Z
    .locals 4

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService;->hasEnrolledFingerprints(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public hasEnrolledFingerprints(I)Z
    .locals 3

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->hasEnrolledFingerprints(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isEnrollSession()Z
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v1, 0x3ea

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)I

    move-result v6

    if-lez v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public isHardwareDetected()Z
    .locals 5

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v3, :cond_0

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v1, v4}, Landroid/hardware/fingerprint/IFingerprintService;->isHardwareDetected(JLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_0
    const-string/jumbo v3, "FingerprintManager"

    const-string/jumbo v4, "isFingerprintHardwareDetected(): Service not connected!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3
.end method

.method public postEnroll()I
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Landroid/hardware/fingerprint/IFingerprintService;->postEnroll(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public preEnroll()J
    .locals 5

    const-wide/16 v2, 0x0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v4}, Landroid/hardware/fingerprint/IFingerprintService;->preEnroll(Landroid/os/IBinder;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :cond_0
    return-wide v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V
    .locals 7

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    :try_start_0
    iput-object p3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v3

    iget-object v5, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService;->remove(Landroid/os/IBinder;IIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v6

    const-string/jumbo v0, "FingerprintManager"

    const-string/jumbo v1, "Remote exception in remove: "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p3, :cond_0

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$4;

    invoke-direct {v1, p0, p3, p1}, Landroid/hardware/fingerprint/FingerprintManager$4;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;Landroid/hardware/fingerprint/Fingerprint;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public rename(IILjava/lang/String;)V
    .locals 3

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/fingerprint/IFingerprintService;->rename(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    const-string/jumbo v1, "FingerprintManager"

    const-string/jumbo v2, "rename(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)I
    .locals 9

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :try_start_0
    new-array p2, v0, [B

    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x0

    new-array p3, v0, [B

    :cond_1
    iput-object p5, p0, Landroid/hardware/fingerprint/FingerprintManager;->mSemRequestCallback:Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    iget-object v7, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v7}, Landroid/hardware/fingerprint/IFingerprintService;->request(Landroid/os/IBinder;I[B[BIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v8

    const-string/jumbo v0, "FingerprintManager"

    const-string/jumbo v1, "Remote exception in request(): "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, -0x2

    return v0

    :cond_2
    const-string/jumbo v0, "FingerprintManager"

    const-string/jumbo v1, "request(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestGetSensorInfo()[B
    .locals 7

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/16 v0, 0x100

    new-array v3, v0, [B

    const/4 v1, 0x5

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)I

    move-result v6

    if-gtz v6, :cond_0

    return-object v2

    :cond_0
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public requestGetSensorStatus()I
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)I

    move-result v0

    return v0
.end method

.method public requestGetUniqueID(ILjava/lang/String;)[B
    .locals 7

    const/4 v5, 0x0

    const/16 v0, 0x100

    new-array v3, v0, [B

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v1, 0x7

    move-object v0, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)I

    move-result v6

    if-gtz v6, :cond_0

    return-object v5

    :cond_0
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public requestGetVersion()[B
    .locals 7

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/16 v0, 0x100

    new-array v3, v0, [B

    const/4 v1, 0x4

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)I

    move-result v6

    if-gtz v6, :cond_0

    return-object v2

    :cond_0
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public requestPause()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, v2

    move v4, v1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public requestProcessFIDO([B)[B
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v0, 0x2800

    new-array v3, v0, [B

    const/16 v1, 0x9

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)I

    move-result v6

    if-gtz v6, :cond_0

    return-object v5

    :cond_0
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public requestResume()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    return v4

    :cond_0
    return v1
.end method

.method public requestSessionOpen()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x2

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    return v4

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public requestUpdateSID([B)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v1, 0xa

    move-object v0, p0

    move-object v2, p1

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    return v4

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public resetTimeout([B)V
    .locals 3

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v1, p1}, Landroid/hardware/fingerprint/IFingerprintService;->resetTimeout([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    const-string/jumbo v1, "FingerprintManager"

    const-string/jumbo v2, "resetTimeout(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public semGetEnrolledFingerprintName(II)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v5, :cond_1

    :try_start_0
    iget-object v5, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    const-string/jumbo v6, "com.samsung.android.sdk.pass"

    invoke-interface {v5, p1, v6}, Landroid/hardware/fingerprint/IFingerprintService;->getEnrolledFingerprints(ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    if-ne v5, p2, :cond_0

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    :catch_0
    move-exception v0

    const-string/jumbo v5, "FingerprintManager"

    const-string/jumbo v6, "semGetEnrolledFingerprintName : "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object v7

    :catch_1
    move-exception v4

    const-string/jumbo v5, "FingerprintManager"

    const-string/jumbo v6, "semGetEnrolledFingerprintName : "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public semGetMaxEnrollmentNumber()I
    .locals 6

    const/4 v2, 0x0

    const/16 v1, 0x3ec

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)I

    move-result v0

    return v0
.end method

.method public semGetTouchCount()I
    .locals 6

    const/4 v2, 0x0

    const/16 v1, 0x3ef

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)I

    move-result v0

    return v0
.end method

.method public semHasDisabledFingerprints()Z
    .locals 8

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/16 v0, 0xa

    new-array v3, v0, [B

    const/16 v1, 0x3eb

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)I

    move-result v6

    if-lez v6, :cond_0

    :goto_0
    return v4

    :cond_0
    move v4, v7

    goto :goto_0
.end method

.method public semHasFeature(I)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x3ee

    move-object v0, p0

    move-object v3, v2

    move v4, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)I

    move-result v6

    if-lez v6, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v7

    goto :goto_0
.end method

.method public setActiveUser(I)V
    .locals 2

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v1, p1}, Landroid/hardware/fingerprint/IFingerprintService;->setActiveUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
