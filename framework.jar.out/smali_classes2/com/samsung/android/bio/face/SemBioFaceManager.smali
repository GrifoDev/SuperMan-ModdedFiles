.class public Lcom/samsung/android/bio/face/SemBioFaceManager;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bio/face/SemBioFaceManager$1;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$LockoutResetCallback;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$OnAuthenticationCancelListener;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$OnEnrollCancelListener;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$RequestCallback;
    }
.end annotation


# static fields
.field public static final CLIENTSPEC_KEY_ALLOW_INDEXES:Ljava/lang/String; = "request_template_index_list"

.field public static final CLIENT_KEY_PRIVILEGED_ATTR:Ljava/lang/String; = "privileged_attr"

.field public static final FACE_ACQUIRED_CAPTURE_COMPLETED:I = 0x2713

.field public static final FACE_ACQUIRED_CAPTURE_FACE_LEAVE:I = 0x2714

.field public static final FACE_ACQUIRED_CAPTURE_FACE_LEAVE_TIMEOUT:I = 0x2717

.field public static final FACE_ACQUIRED_CAPTURE_FAILED:I = 0x2716

.field public static final FACE_ACQUIRED_CAPTURE_READY:I = 0x2711

.field public static final FACE_ACQUIRED_CAPTURE_STARTED:I = 0x2712

.field public static final FACE_ACQUIRED_CAPTURE_SUCCESS:I = 0x2715

.field public static final FACE_ACQUIRED_CHANGE_YOUR_POSITION:I = 0xc

.field public static final FACE_ACQUIRED_DUPLICATED_SCANNED_IMAGE:I = 0x3ea

.field public static final FACE_ACQUIRED_FACE_NOT_PRESENT:I = 0xa

.field public static final FACE_ACQUIRED_GOOD:I = 0x0

.field public static final FACE_ACQUIRED_INSUFFICIENT:I = 0x2

.field public static final FACE_ACQUIRED_MOVE_CLOSER:I = 0x3

.field public static final FACE_ACQUIRED_MOVE_DOWN:I = 0x8

.field public static final FACE_ACQUIRED_MOVE_FARTHER:I = 0x4

.field public static final FACE_ACQUIRED_MOVE_LEFT:I = 0x5

.field public static final FACE_ACQUIRED_MOVE_RIGHT:I = 0x6

.field public static final FACE_ACQUIRED_MOVE_SOMEWHERE_DARKER:I = 0xb

.field public static final FACE_ACQUIRED_MOVE_UP:I = 0x7

.field public static final FACE_ACQUIRED_OPEN_FACES_WIDER:I = 0x9

.field public static final FACE_ACQUIRED_PARTIAL:I = 0x1

.field public static final FACE_ACQUIRED_VENDOR_BASE:I = 0x3e8

.field public static final FACE_ACQUIRED_VENDOR_EVENT_BASE:I = 0x2710

.field public static final FACE_ERROR_AUTH_VIEW_SIZE:I = 0xa

.field public static final FACE_ERROR_AUTH_WINDOW_TOKEN:I = 0xb

.field public static final FACE_ERROR_CANCELED:I = 0x4

.field public static final FACE_ERROR_DEVICE_NEED_RECAL:I = 0x3e9

.field public static final FACE_ERROR_EVICTED:I = 0xd

.field public static final FACE_ERROR_FACE_SAFETY_TIMEOUT:I = 0x9

.field public static final FACE_ERROR_HW_UNAVAILABLE:I = 0x0

.field public static final FACE_ERROR_IDENTIFY_FAILURE_BROKEN_DATABASE:I = 0x3ec

.field public static final FACE_ERROR_IDENTIFY_FAILURE_SENSOR_CHANGED:I = 0x3ed

.field public static final FACE_ERROR_IDENTIFY_FAILURE_SERVICE_FAILURE:I = 0x3eb

.field public static final FACE_ERROR_IDENTIFY_FAILURE_SYSTEM_FAILURE:I = 0x3ea

.field public static final FACE_ERROR_LOCKOUT:I = 0x6

.field public static final FACE_ERROR_NEED_TO_RETRY:I = 0x1388

.field public static final FACE_ERROR_NO_SPACE:I = 0x3

.field public static final FACE_ERROR_OPEN_FRONT_CAMERA_FAIL:I = 0x8

.field public static final FACE_ERROR_PROXIMITY_TIMEOUT:I = 0xc

.field public static final FACE_ERROR_START_FRONT_CAMERA_PREVIEW_FAIL:I = 0x7

.field public static final FACE_ERROR_TIMEOUT:I = 0x2

.field public static final FACE_ERROR_UNABLE_TO_PROCESS:I = 0x1

.field public static final FACE_ERROR_UNABLE_TO_REMOVE:I = 0x5

.field public static final FACE_ERROR_VENDOR_BASE:I = 0x3e8

.field public static final FACE_INVISIBLE_PREVIEW:I = 0x4

.field public static final FACE_ONE_FACE:I = 0x9c40

.field public static final FACE_REQUEST_ENROLL_SESSION:I = 0x3ea

.field public static final FACE_REQUEST_ENUMERATE:I = 0xb

.field public static final FACE_REQUEST_FACTORY_TEST_ALWAYS_LED_ON:I = 0x7d1

.field public static final FACE_REQUEST_FACTORY_TEST_CAMERA_VERSION:I = 0x7d4

.field public static final FACE_REQUEST_FACTORY_TEST_CAPTURE:I = 0x7d2

.field public static final FACE_REQUEST_FACTORY_TEST_FULL_PREVIEW:I = 0x7d0

.field public static final FACE_REQUEST_FACTORY_TEST_PREVIEW_MODE:I = 0x7d3

.field public static final FACE_REQUEST_GET_UNIQUE_ID:I = 0x7

.field public static final FACE_REQUEST_GET_USERIDS:I = 0xc

.field public static final FACE_REQUEST_GET_VERSION:I = 0x4

.field public static final FACE_REQUEST_LOCKOUT:I = 0x3e9

.field public static final FACE_REQUEST_PAUSE:I = 0x0

.field public static final FACE_REQUEST_PROCESS_FIDO:I = 0x9

.field public static final FACE_REQUEST_REMOVE_FACE:I = 0x3e8

.field public static final FACE_REQUEST_RESUME:I = 0x1

.field public static final FACE_REQUEST_SENSOR_TEST_NORMALSCAN:I = 0x3

.field public static final FACE_REQUEST_SESSION_OPEN:I = 0x2

.field public static final FACE_REQUEST_SET_ACTIVE_GROUP:I = 0x8

.field public static final FACE_REQUEST_UPDATE_SID:I = 0xa

.field public static final FACE_TWO_FACES:I = 0x9c41

.field public static final FACE_VISIBLE_PREVIEW:I = 0x5

.field private static final MANAGE_FACE:Ljava/lang/String; = "com.samsung.android.bio.face.permission.MANAGE_FACE"

.field private static final MSG_ACQUIRED:I = 0x65

.field private static final MSG_AUTHENTICATION_FAILED:I = 0x67

.field private static final MSG_AUTHENTICATION_SUCCEEDED:I = 0x66

.field private static final MSG_AUTHENTICATION_SUCCEEDED_FIDO_RESULT_DATA:I = 0x6b

.field private static final MSG_ENROLL_RESULT:I = 0x64

.field private static final MSG_ERROR:I = 0x68

.field private static final MSG_REMOVED:I = 0x69

.field public static final PRIVILEGED_ATTR_EXCLUSIVE_IDENTIFY:I = 0x4

.field public static final PRIVILEGED_ATTR_FACE_DETECTION:I = 0x8

.field public static final PRIVILEGED_ATTR_NO_LOCKOUT:I = 0x2

.field public static final PRIVILEGED_ATTR_NO_VIBRATION:I = 0x1

.field public static final PRIVILEGED_TYPE_KEYGUARD:I = -0x80000000

.field public static final SENSOR_STATUS_ERROR:I = 0x186ca

.field public static final SENSOR_STATUS_LED_OFF:I = 0x7531

.field public static final SENSOR_STATUS_LED_ON:I = 0x7530

.field public static final SENSOR_STATUS_OK:I = 0x186c8

.field public static final SENSOR_STATUS_SECURE_DISABLE:I = 0x4e21

.field public static final SENSOR_STATUS_SECURE_ENALBE:I = 0x4e20

.field public static final SENSOR_STATUS_WORKING:I = 0x186c9

.field private static final SYSTEM_FEATURE_FACE:Ljava/lang/String; = "com.samsung.android.bio.face"

.field private static final TAG:Ljava/lang/String; = "SemBioFaceManager"

.field private static final USE_FACE:Ljava/lang/String; = "com.samsung.android.bio.face.permission.USE_FACE"

.field private static mSemBioFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;


# instance fields
.field private mAuthBegin:J

.field private mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

.field private mContext:Landroid/content/Context;

.field private mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

.field private mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

.field private mGetterHandler:Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;

.field private mHandler:Landroid/os/Handler;

.field private mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

.field private mRemovalFace:Lcom/samsung/android/bio/face/Face;

.field private mRequestCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RequestCallback;

.field private mService:Lcom/samsung/android/bio/face/IFaceService;

.field private mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

.field private mToken:Landroid/os/IBinder;

.field private mView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/Face;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalFace:Lcom/samsung/android/bio/face/Face;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$RequestCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRequestCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RequestCallback;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/bio/face/SemBioFaceManager;I)Ljava/lang/String;
    .locals 1
    .param p1, "acquireInfo"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getAcquiredString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/bio/face/SemBioFaceManager;I)Ljava/lang/String;
    .locals 1
    .param p1, "errMsg"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;)V
    .locals 0
    .param p1, "cryptoObject"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->cancelAuthentication(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/bio/face/SemBioFaceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->cancelEnrollment()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V
    .locals 1
    .param p1, "crypto"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I
    .param p7, "attr"    # Landroid/os/Bundle;
    .param p8, "faceView"    # Landroid/view/View;
    .param p9, "sessionId"    # J
    .param p11, "fidoRequestData"    # [B

    .prologue
    invoke-direct/range {p0 .. p11}, Lcom/samsung/android/bio/face/SemBioFaceManager;->checkAuthViewWindowToken(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/bio/face/SemBioFaceManager;[BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 0
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;
    .param p6, "attr"    # Landroid/os/Bundle;
    .param p7, "faceView"    # Landroid/view/View;

    .prologue
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/bio/face/SemBioFaceManager;->checkEnrollViewWindowToken([BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mSemBioFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1908
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    .line 438
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthBegin:J

    .line 439
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;

    invoke-direct {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mGetterHandler:Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;

    .line 1857
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$1;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    .line 1909
    const-string/jumbo v0, "SemBioFaceManager"

    const-string/jumbo v1, "SemBioFaceManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    .line 1912
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/content/Context;Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    .line 1914
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    .line 1908
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/bio/face/IFaceService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/bio/face/IFaceService;

    .prologue
    const/4 v2, 0x0

    .line 1713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    .line 438
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthBegin:J

    .line 439
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;

    invoke-direct {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mGetterHandler:Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;

    .line 1857
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$1;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    .line 1714
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    .line 1715
    iput-object p2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    .line 1716
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-nez v0, :cond_0

    .line 1717
    const-string/jumbo v0, "SemBioFaceManager"

    const-string/jumbo v1, "SemBioFaceManagerService was null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    :cond_0
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;

    invoke-direct {v0, p0, p1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/content/Context;Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    .line 1713
    return-void
.end method

.method private static byteArrayToHex([B)Ljava/lang/String;
    .locals 8
    .param p0, "byteArray"    # [B

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1972
    if-nez p0, :cond_0

    .line 1973
    return-object v2

    .line 1976
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1977
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v4, p0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-byte v0, p0, v2

    .line 1978
    .local v0, "b":B
    const-string/jumbo v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1977
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1980
    .end local v0    # "b":B
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static bytesToString([BI)Ljava/lang/String;
    .locals 6
    .param p0, "a"    # [B
    .param p1, "len"    # I

    .prologue
    const/4 v5, 0x0

    .line 1420
    array-length v2, p0

    if-gt p1, v2, :cond_0

    if-gez p1, :cond_1

    .line 1421
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 1423
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p1, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1424
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_2

    .line 1425
    const-string/jumbo v2, "%c"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1424
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1427
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private cancelAuthentication(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;)V
    .locals 4
    .param p1, "cryptoObject"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    .prologue
    .line 1746
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "cancelAuthentication"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1748
    return-void

    .line 1750
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    .line 1752
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/bio/face/IFaceService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1745
    :cond_1
    :goto_0
    return-void

    .line 1753
    :catch_0
    move-exception v0

    .line 1754
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception while canceling authentication"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private cancelEnrollment()V
    .locals 3

    .prologue
    .line 1732
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "cancelEnrollment"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1734
    return-void

    .line 1736
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    .line 1738
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/samsung/android/bio/face/IFaceService;->cancelEnrollment(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1731
    :cond_1
    :goto_0
    return-void

    .line 1739
    :catch_0
    move-exception v0

    .line 1740
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception while canceling enrollment"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkAuthViewWindowToken(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V
    .locals 21
    .param p1, "crypto"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I
    .param p7, "attr"    # Landroid/os/Bundle;
    .param p8, "faceView"    # Landroid/view/View;
    .param p9, "sessionId"    # J
    .param p11, "fidoRequestData"    # [B

    .prologue
    .line 863
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mGetterHandler:Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;

    if-nez v2, :cond_0

    .line 864
    new-instance v2, Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;

    invoke-direct {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mGetterHandler:Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;

    .line 866
    :cond_0
    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_2

    .line 867
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthBegin:J

    sub-long/2addr v2, v6

    const-wide/16 v6, 0xbb8

    cmp-long v2, v2, v6

    if-ltz v2, :cond_1

    .line 868
    const-string/jumbo v2, "SemBioFaceManager"

    const-string/jumbo v3, "checkAuthViewWindowToken is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mGetterHandler:Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;

    invoke-virtual {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;->removeAllGetterCallbacks()V

    .line 873
    return-void

    .line 875
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mGetterHandler:Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;

    new-instance v2, Lcom/samsung/android/bio/face/SemBioFaceManager$2;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-wide/from16 v12, p9

    move-object/from16 v14, p11

    invoke-direct/range {v2 .. v14}, Lcom/samsung/android/bio/face/SemBioFaceManager$2;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V

    invoke-virtual {v15, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;->postGetterCallback(Ljava/lang/Runnable;)V

    .line 880
    return-void

    .line 882
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mGetterHandler:Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;

    invoke-virtual {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;->removeAllGetterCallbacks()V

    .line 884
    :try_start_0
    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    .line 886
    .local v5, "mWindowToken":Landroid/os/IBinder;
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v20, v0

    .line 887
    .local v20, "position":[I
    move-object/from16 v0, p8

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 888
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    if-nez v2, :cond_3

    .line 889
    const-string/jumbo v2, "SemBioFaceManager"

    const-string/jumbo v3, "mToken null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getMinimumFaceViewSize()Landroid/util/Size;

    move-result-object v19

    .line 893
    .local v19, "mAuthViewSize":Landroid/util/Size;
    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-lt v2, v3, :cond_4

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 894
    :cond_4
    if-eqz p4, :cond_5

    .line 895
    const-string/jumbo v2, "SemBioFaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid faceView size. FaceView\'s proper size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", but app\'s size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    aget v6, v20, v2

    const/4 v2, 0x1

    aget v7, v20, v2

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getHeight()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    .line 901
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v10, p9

    move/from16 v12, p6

    move/from16 v14, p3

    move-object/from16 v16, p7

    move-object/from16 v17, p11

    .line 900
    invoke-interface/range {v3 .. v17}, Lcom/samsung/android/bio/face/IFaceService;->authenticate(Landroid/os/IBinder;Landroid/os/IBinder;IIIIJILcom/samsung/android/bio/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    .end local v5    # "mWindowToken":Landroid/os/IBinder;
    .end local v19    # "mAuthViewSize":Landroid/util/Size;
    .end local v20    # "position":[I
    :cond_6
    :goto_0
    return-void

    .line 902
    :catch_0
    move-exception v18

    .line 903
    .local v18, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemBioFaceManager"

    const-string/jumbo v3, "Remote exception while authenticating"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    if-eqz p4, :cond_6

    .line 907
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private checkEnrollViewWindowToken([BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 16
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;
    .param p6, "attr"    # Landroid/os/Bundle;
    .param p7, "faceView"    # Landroid/view/View;

    .prologue
    .line 1012
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mGetterHandler:Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;

    if-nez v1, :cond_0

    .line 1013
    new-instance v1, Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;

    invoke-direct {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mGetterHandler:Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;

    .line 1015
    :cond_0
    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1016
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mGetterHandler:Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;

    new-instance v1, Lcom/samsung/android/bio/face/SemBioFaceManager$3;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/bio/face/SemBioFaceManager$3;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;[BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V

    invoke-virtual {v10, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;->postGetterCallback(Ljava/lang/Runnable;)V

    .line 1021
    return-void

    .line 1023
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mGetterHandler:Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;

    invoke-virtual {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;->removeAllGetterCallbacks()V

    .line 1025
    :try_start_0
    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .line 1027
    .local v3, "mWindowToken":Landroid/os/IBinder;
    const/4 v1, 0x2

    new-array v15, v1, [I

    .line 1028
    .local v15, "position":[I
    move-object/from16 v0, p7

    invoke-virtual {v0, v15}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1029
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_2

    .line 1030
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "mToken null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    aget v4, v15, v4

    const/4 v5, 0x1

    aget v5, v15, v5

    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getHeight()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v8, p1

    move/from16 v9, p4

    move/from16 v11, p3

    move-object/from16 v13, p6

    invoke-interface/range {v1 .. v13}, Lcom/samsung/android/bio/face/IFaceService;->enroll(Landroid/os/IBinder;Landroid/os/IBinder;IIII[BILcom/samsung/android/bio/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    .end local v3    # "mWindowToken":Landroid/os/IBinder;
    .end local v15    # "position":[I
    :cond_3
    :goto_0
    return-void

    .line 1032
    :catch_0
    move-exception v14

    .line 1033
    .local v14, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception in enroll"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    if-eqz p5, :cond_3

    .line 1037
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private declared-synchronized ensureServiceConnected()Z
    .locals 5

    .prologue
    monitor-enter p0

    .line 1918
    :try_start_0
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "ensureServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1922
    :try_start_1
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "ensureServiceConnected 001"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/bio/face/IFaceService;->isHardwareDetected(JLjava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1931
    :cond_0
    :goto_0
    :try_start_2
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "ensureServiceConnected 010"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-nez v1, :cond_1

    .line 1933
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "ensureServiceConnected 020"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->startFaceService()V

    .line 1935
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->waitForService()V

    .line 1938
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    monitor-exit p0

    return v1

    .line 1924
    :catch_0
    move-exception v0

    .line 1925
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    instance-of v1, v0, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_0

    .line 1926
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1938
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getAcquiredString(I)Ljava/lang/String;
    .locals 8
    .param p1, "acquireInfo"    # I

    .prologue
    const/4 v7, 0x0

    .line 1813
    iget-object v4, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1814
    .local v2, "mPm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 1817
    .local v3, "mRes":Landroid/content/res/Resources;
    :try_start_0
    const-string/jumbo v4, "com.samsung.android.bio.face.service"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1823
    .end local v3    # "mRes":Landroid/content/res/Resources;
    :goto_0
    if-nez v3, :cond_0

    .line 1824
    const-string/jumbo v4, "SemBioFaceManager"

    const-string/jumbo v5, "mRes is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    return-object v7

    .line 1818
    .restart local v3    # "mRes":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 1819
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "SemBioFaceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAcquiredString, Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    const/4 v3, 0x0

    goto :goto_0

    .line 1829
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "mRes":Landroid/content/res/Resources;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1849
    :pswitch_0
    return-object v7

    .line 1831
    :pswitch_1
    :try_start_1
    const-string/jumbo v4, "face_acquired_move_closer"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.bio.face.service"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1833
    :pswitch_2
    const-string/jumbo v4, "face_acquired_move_farther"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.bio.face.service"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1835
    :pswitch_3
    const-string/jumbo v4, "face_acquired_open_wider"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.bio.face.service"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1837
    :pswitch_4
    const-string/jumbo v4, "face_acquired_move_somewhere_darker"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.bio.face.service"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1839
    :pswitch_5
    const-string/jumbo v4, "face_acquired_change_your_position"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.bio.face.service"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    return-object v4

    .line 1851
    :catch_1
    move-exception v0

    .line 1852
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v4, "SemBioFaceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAcquiredString, NotFoundException = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    return-object v7

    .line 1829
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getCurrentUserId()I
    .locals 3

    .prologue
    .line 1724
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1725
    :catch_0
    move-exception v0

    .line 1726
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Failed to get current user id\n"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    const/16 v1, -0x2710

    return v1
.end method

.method private getErrorString(I)Ljava/lang/String;
    .locals 9
    .param p1, "errMsg"    # I

    .prologue
    const/4 v8, 0x0

    .line 1759
    iget-object v4, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1760
    .local v2, "mPm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 1762
    .local v3, "mRes":Landroid/content/res/Resources;
    :try_start_0
    const-string/jumbo v4, "com.samsung.android.bio.face.service"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1767
    .end local v3    # "mRes":Landroid/content/res/Resources;
    :goto_0
    if-nez v3, :cond_0

    .line 1768
    const-string/jumbo v4, "SemBioFaceManager"

    const-string/jumbo v5, "mRes is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    return-object v8

    .line 1763
    .restart local v3    # "mRes":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 1764
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "SemBioFaceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getErrorString, Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    const/4 v3, 0x0

    goto :goto_0

    .line 1773
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "mRes":Landroid/content/res/Resources;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1803
    :pswitch_0
    :try_start_1
    const-string/jumbo v4, "face_error_unable_to_process"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.bio.face.service"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1775
    :pswitch_1
    const-string/jumbo v4, "face_error_unable_to_process"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.bio.face.service"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1777
    :pswitch_2
    const-string/jumbo v4, "face_error_sensor_no_response"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.bio.face.service"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1779
    :pswitch_3
    const-string/jumbo v4, "face_error_no_space"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.bio.face.service"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1781
    :pswitch_4
    const-string/jumbo v4, "face_error_timeout"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.bio.face.service"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1783
    :pswitch_5
    const-string/jumbo v4, "face_error_canceled"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.bio.face.service"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1785
    :pswitch_6
    const-string/jumbo v4, "face_error_lockout"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.bio.face.service"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1787
    :pswitch_7
    const-string/jumbo v4, "face_error_unable_to_remove"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.bio.face.service"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1789
    :pswitch_8
    const-string/jumbo v4, ""

    return-object v4

    .line 1791
    :pswitch_9
    const-string/jumbo v4, ""

    return-object v4

    .line 1793
    :pswitch_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "face_error_face_safety_timeout"

    const-string/jumbo v6, "string"

    const-string/jumbo v7, "com.samsung.android.bio.face.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1794
    const-string/jumbo v5, "\n\n"

    .line 1793
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1794
    const-string/jumbo v5, "face_error_face_safety_timeout_2nd"

    const-string/jumbo v6, "string"

    const-string/jumbo v7, "com.samsung.android.bio.face.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1793
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1796
    :pswitch_b
    const-string/jumbo v4, "face_error_auth_view_size"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.bio.face.service"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1798
    :pswitch_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "face_error_proximity_timeout"

    const-string/jumbo v6, "string"

    const-string/jumbo v7, "com.samsung.android.bio.face.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1799
    const-string/jumbo v5, "\n\n"

    .line 1798
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1799
    const-string/jumbo v5, "face_error_proximity_timeout_2nd"

    const-string/jumbo v6, "string"

    const-string/jumbo v7, "com.samsung.android.bio.face.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1798
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1801
    :pswitch_d
    const-string/jumbo v4, "face_error_evicted"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.bio.face.service"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    return-object v4

    .line 1805
    :catch_1
    move-exception v0

    .line 1806
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v4, "SemBioFaceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getErrorString, NotFoundException = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    return-object v8

    .line 1773
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static declared-synchronized getSemBioFaceManager(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const-class v1, Lcom/samsung/android/bio/face/SemBioFaceManager;

    monitor-enter v1

    .line 1895
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v2, "com.samsung.android.bio.face"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1896
    const-string/jumbo v0, "SemBioFaceManager"

    const-string/jumbo v2, "getSemBioFaceManager"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    sget-object v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mSemBioFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-nez v0, :cond_0

    .line 1898
    const-string/jumbo v0, "SemBioFaceManager"

    const-string/jumbo v2, "getSemBioFaceManager 001"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mSemBioFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 1901
    :cond_0
    sget-object v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mSemBioFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_1
    monitor-exit v1

    .line 1903
    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private requestGetUniqueID(ILjava/lang/String;)[B
    .locals 11
    .param p1, "faceId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 1368
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1369
    return-object v10

    .line 1371
    :cond_0
    const/16 v0, 0x100

    new-array v4, v0, [B

    .line 1372
    .local v4, "outBuf":[B
    const/4 v9, 0x0

    .line 1374
    .local v9, "size":I
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_1

    .line 1376
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    const/4 v2, 0x7

    move v5, p1

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/bio/face/IFaceService;->request(Landroid/os/IBinder;I[B[BIILcom/samsung/android/bio/face/IFaceServiceReceiver;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 1381
    :cond_1
    :goto_0
    if-gtz v9, :cond_2

    .line 1382
    return-object v10

    .line 1377
    :catch_0
    move-exception v8

    .line 1378
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "SemBioFaceManager"

    const-string/jumbo v1, "Remote exception in request()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1384
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_2
    invoke-static {v4, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method private startFaceService()V
    .locals 5

    .prologue
    .line 1943
    :try_start_0
    const-string/jumbo v2, "SemBioFaceManager"

    const-string/jumbo v3, "startFaceService 001"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1945
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.bio.face.service"

    const-string/jumbo v4, "com.samsung.android.bio.face.service.FaceService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1946
    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1947
    const-string/jumbo v2, "SemBioFaceManager"

    const-string/jumbo v3, "startFaceService 010"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1941
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1948
    :catch_0
    move-exception v0

    .line 1949
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SemBioFaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Starting startFaceService failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private useHandler(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    .line 794
    if-eqz p1, :cond_1

    .line 795
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Looper;Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    .line 793
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 797
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Looper;Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private waitForService()V
    .locals 5

    .prologue
    .line 1955
    const/4 v0, 0x1

    .local v0, "count":I
    :goto_0
    const/16 v2, 0x14

    if-gt v0, v2, :cond_1

    .line 1956
    const-string/jumbo v2, "SemBioFaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "waitForService count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    const-string/jumbo v2, "samsung.face"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/bio/face/IFaceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    .line 1959
    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v2, :cond_0

    .line 1960
    const-string/jumbo v2, "SemBioFaceManager"

    const-string/jumbo v3, "Service connected!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    return-void

    .line 1964
    :cond_0
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1955
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1966
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1953
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method


# virtual methods
.method public addLockoutResetCallback(Lcom/samsung/android/bio/face/SemBioFaceManager$LockoutResetCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$LockoutResetCallback;

    .prologue
    .line 1555
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1556
    return-void

    .line 1558
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v2, :cond_1

    .line 1560
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1561
    .local v1, "powerManager":Landroid/os/PowerManager;
    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    new-instance v3, Lcom/samsung/android/bio/face/SemBioFaceManager$4;

    invoke-direct {v3, p0, v1, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$4;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/PowerManager;Lcom/samsung/android/bio/face/SemBioFaceManager$LockoutResetCallback;)V

    invoke-interface {v2, v3}, Lcom/samsung/android/bio/face/IFaceService;->addLockoutResetCallback(Lcom/samsung/android/bio/face/IFaceServiceLockoutResetCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1554
    .end local v1    # "powerManager":Landroid/os/PowerManager;
    :goto_0
    return-void

    .line 1579
    :catch_0
    move-exception v0

    .line 1580
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemBioFaceManager"

    const-string/jumbo v3, "Remote exception in addLockoutResetCallback()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1583
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v2, "SemBioFaceManager"

    const-string/jumbo v3, "addLockoutResetCallback(): Service not connected!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V
    .locals 31
    .param p1, "crypto"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I
    .param p7, "attr"    # Landroid/os/Bundle;
    .param p8, "faceView"    # Landroid/view/View;

    .prologue
    .line 817
    if-nez p4, :cond_0

    .line 818
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Must supply an authentication callback"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 821
    :cond_0
    if-eqz p2, :cond_2

    .line 822
    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 823
    const-string/jumbo v3, "SemBioFaceManager"

    const-string/jumbo v4, "authentication already canceled"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    return-void

    .line 826
    :cond_1
    new-instance v3, Lcom/samsung/android/bio/face/SemBioFaceManager$OnAuthenticationCancelListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$OnAuthenticationCancelListener;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 830
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v3

    if-nez v3, :cond_3

    .line 831
    return-void

    .line 833
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v3, :cond_4

    .line 835
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->useHandler(Landroid/os/Handler;)V

    .line 836
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    .line 837
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    .line 838
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    .line 839
    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->getOpId()J

    move-result-wide v10

    .line 840
    .local v10, "sessionId":J
    :goto_0
    if-eqz p1, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    invoke-virtual {v3}, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->getFidoRequestData()[B

    move-result-object v17

    .line 841
    :goto_1
    if-nez p8, :cond_7

    .line 842
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v15

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v12, p6

    move/from16 v14, p3

    move-object/from16 v16, p7

    invoke-interface/range {v3 .. v17}, Lcom/samsung/android/bio/face/IFaceService;->authenticate(Landroid/os/IBinder;Landroid/os/IBinder;IIIIJILcom/samsung/android/bio/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;[B)V

    .line 816
    .end local v10    # "sessionId":J
    :cond_4
    :goto_2
    return-void

    .line 839
    :cond_5
    const-wide/16 v10, 0x0

    .restart local v10    # "sessionId":J
    goto :goto_0

    .line 840
    :cond_6
    const/16 v17, 0x0

    .local v17, "fidoRequestData":[B
    goto :goto_1

    .line 844
    .end local v17    # "fidoRequestData":[B
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthBegin:J

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, p2

    move/from16 v22, p3

    move-object/from16 v23, p4

    move-object/from16 v24, p5

    move/from16 v25, p6

    move-object/from16 v26, p7

    move-object/from16 v27, p8

    move-wide/from16 v28, v10

    move-object/from16 v30, v17

    .line 845
    invoke-direct/range {v19 .. v30}, Lcom/samsung/android/bio/face/SemBioFaceManager;->checkAuthViewWindowToken(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 847
    .end local v10    # "sessionId":J
    :catch_0
    move-exception v2

    .line 848
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SemBioFaceManager"

    const-string/jumbo v4, "Remote exception while authenticating"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;)V
    .locals 8
    .param p1, "crypto"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "faceView"    # Landroid/view/View;

    .prologue
    .line 786
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/bio/face/SemBioFaceManager;->authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;I)V

    .line 785
    return-void
.end method

.method public authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;I)V
    .locals 9
    .param p1, "crypto"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "faceView"    # Landroid/view/View;
    .param p7, "userId"    # I

    .prologue
    .line 808
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p7

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/bio/face/SemBioFaceManager;->authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V

    .line 807
    return-void
.end method

.method public enroll([BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 15
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;
    .param p6, "attr"    # Landroid/os/Bundle;
    .param p7, "faceView"    # Landroid/view/View;

    .prologue
    .line 967
    const/4 v1, -0x2

    move/from16 v0, p4

    if-ne v0, v1, :cond_0

    .line 968
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getCurrentUserId()I

    move-result p4

    .line 971
    :cond_0
    if-nez p5, :cond_1

    .line 972
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Must supply an enrollment callback"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 975
    :cond_1
    if-eqz p2, :cond_3

    .line 976
    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 977
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "enrollment already canceled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    return-void

    .line 980
    :cond_2
    new-instance v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnEnrollCancelListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager$OnEnrollCancelListener;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$OnEnrollCancelListener;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 984
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_4

    .line 985
    return-void

    .line 987
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_5

    .line 989
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    .line 990
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    .line 991
    if-nez p7, :cond_6

    .line 992
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    iget-object v10, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    iget-object v3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v8, p1

    move/from16 v9, p4

    move/from16 v11, p3

    move-object/from16 v13, p6

    invoke-interface/range {v1 .. v13}, Lcom/samsung/android/bio/face/IFaceService;->enroll(Landroid/os/IBinder;Landroid/os/IBinder;IIII[BILcom/samsung/android/bio/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 966
    :cond_5
    :goto_0
    return-void

    .line 994
    :cond_6
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/bio/face/SemBioFaceManager;->checkEnrollViewWindowToken([BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 996
    :catch_0
    move-exception v14

    .line 997
    .local v14, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception in enroll"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public enroll([BLandroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/view/View;)V
    .locals 8
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;
    .param p5, "faceView"    # Landroid/view/View;

    .prologue
    .line 961
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getCurrentUserId()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/bio/face/SemBioFaceManager;->enroll([BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V

    .line 960
    return-void
.end method

.method public getAuthenticatorId()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1514
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1515
    return-wide v4

    .line 1517
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    .line 1519
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/bio/face/IFaceService;->getAuthenticatorId(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 1520
    :catch_0
    move-exception v0

    .line 1521
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception in getAuthenticatorId()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-wide v4

    .line 1524
    :cond_1
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "getAuthenticatorId(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEnrolledFaceUniqueID()Landroid/util/SparseArray;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 1275
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1276
    return-object v7

    .line 1278
    :cond_0
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 1279
    .local v5, "localSparseArray":Landroid/util/SparseArray;
    const/4 v3, 0x0

    .line 1280
    .local v3, "faceList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/bio/face/Face;>;"
    const/4 v4, 0x1

    .line 1282
    .local v4, "index":I
    iget-object v6, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v6, :cond_1

    .line 1284
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/samsung/android/bio/face/IFaceService;->getEnrolledFaces(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1290
    .end local v3    # "faceList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/bio/face/Face;>;"
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    if-nez v6, :cond_4

    .line 1291
    :cond_2
    const/4 v5, 0x0

    .line 1298
    .end local v5    # "localSparseArray":Landroid/util/SparseArray;
    :cond_3
    return-object v5

    .line 1285
    .restart local v3    # "faceList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/bio/face/Face;>;"
    .restart local v5    # "localSparseArray":Landroid/util/SparseArray;
    :catch_0
    move-exception v0

    .line 1286
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "SemBioFaceManager"

    const-string/jumbo v7, "Remote exception in getEnrolledFaces"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1293
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "faceList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/bio/face/Face;>;"
    :cond_4
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "face$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/bio/face/Face;

    .line 1294
    .local v1, "face":Lcom/samsung/android/bio/face/Face;
    invoke-virtual {v1}, Lcom/samsung/android/bio/face/Face;->getFaceId()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/bio/face/SemBioFaceManager;->requestGetUniqueID(ILjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/bio/face/SemBioFaceManager;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1295
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public getEnrolledFaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/bio/face/Face;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1189
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnrolledFaces(I)Ljava/util/List;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/bio/face/Face;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1170
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1171
    return-object v3

    .line 1172
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    .line 1174
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/bio/face/IFaceService;->getEnrolledFaces(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1175
    :catch_0
    move-exception v0

    .line 1176
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception in getEnrolledFaces"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return-object v3
.end method

.method public getMinimumFaceViewSize()Landroid/util/Size;
    .locals 7

    .prologue
    const v6, 0x3fe38e39

    .line 1251
    const/4 v3, 0x0

    .line 1252
    .local v3, "width":I
    const/4 v1, 0x0

    .line 1253
    .local v1, "height":I
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1254
    .local v0, "displaymetrics":Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1256
    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1258
    .local v2, "roundDensity":I
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v4, v5, :cond_0

    .line 1259
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int v3, v4, v2

    .line 1260
    int-to-float v4, v3

    div-float/2addr v4, v6

    float-to-int v1, v4

    .line 1266
    :goto_0
    new-instance v4, Landroid/util/Size;

    mul-int v5, v3, v2

    mul-int v6, v1, v2

    invoke-direct {v4, v5, v6}, Landroid/util/Size;-><init>(II)V

    return-object v4

    .line 1262
    :cond_0
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int v3, v4, v2

    .line 1263
    int-to-float v4, v3

    div-float/2addr v4, v6

    float-to-int v1, v4

    goto :goto_0
.end method

.method public hasEnrolledFaces()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1199
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1200
    return v4

    .line 1201
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    .line 1203
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/bio/face/IFaceService;->hasEnrolledFaces(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1204
    :catch_0
    move-exception v0

    .line 1205
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception in getEnrolledFaces"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return v4
.end method

.method public hasEnrolledFaces(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1215
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_0

    .line 1216
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/bio/face/IFaceService;->hasEnrolledFaces(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1217
    :catch_0
    move-exception v0

    .line 1218
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemBioFaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remote exception in getEnrolledFaces, userId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isEnrollSession()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1329
    const/16 v1, 0x3ea

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->request(I[B[BILcom/samsung/android/bio/face/SemBioFaceManager$RequestCallback;)I

    move-result v6

    .line 1330
    .local v6, "ret":I
    if-lez v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public isHardwareDetected()Z
    .locals 5

    .prologue
    .line 1230
    iget-object v3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v3, :cond_0

    .line 1232
    const-wide/16 v0, 0x0

    .line 1233
    .local v0, "deviceId":J
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v4, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v1, v4}, Lcom/samsung/android/bio/face/IFaceService;->isHardwareDetected(JLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1234
    :catch_0
    move-exception v2

    .line 1235
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SemBioFaceManager"

    const-string/jumbo v4, "Remote exception in isFaceHardwareDetected()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    iget-object v3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.android.bio.face"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 1239
    .end local v0    # "deviceId":J
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v3, "SemBioFaceManager"

    const-string/jumbo v4, "isFaceHardwareDetected(): Service not connected!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    iget-object v3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.android.bio.face"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method public postEnroll()I
    .locals 4

    .prologue
    .line 1069
    const/4 v1, 0x0

    .line 1070
    .local v1, "result":I
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1071
    const/4 v2, 0x0

    return v2

    .line 1073
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v2, :cond_1

    .line 1075
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Lcom/samsung/android/bio/face/IFaceService;->postEnroll(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1079
    :cond_1
    :goto_0
    return v1

    .line 1076
    :catch_0
    move-exception v0

    .line 1077
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemBioFaceManager"

    const-string/jumbo v3, "Remote exception in post enroll"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public preEnroll()J
    .locals 6

    .prologue
    .line 1050
    const-wide/16 v2, 0x0

    .line 1051
    .local v2, "result":J
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1052
    const-wide/16 v4, 0x0

    return-wide v4

    .line 1054
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    .line 1056
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v4, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v4}, Lcom/samsung/android/bio/face/IFaceService;->preEnroll(Landroid/os/IBinder;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1060
    :cond_1
    :goto_0
    return-wide v2

    .line 1057
    :catch_0
    move-exception v0

    .line 1058
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v4, "Remote exception in enroll"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public remove(Lcom/samsung/android/bio/face/Face;ILcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V
    .locals 8
    .param p1, "face"    # Lcom/samsung/android/bio/face/Face;
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    .prologue
    const/4 v7, 0x1

    .line 1107
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1108
    return-void

    .line 1109
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_1

    .line 1111
    :try_start_0
    iput-object p3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    .line 1112
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalFace:Lcom/samsung/android/bio/face/Face;

    .line 1113
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Lcom/samsung/android/bio/face/Face;->getFaceId()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/bio/face/Face;->getGroupId()I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/bio/face/IFaceService;->remove(Landroid/os/IBinder;IIILcom/samsung/android/bio/face/IFaceServiceReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1106
    :cond_1
    :goto_0
    return-void

    .line 1114
    :catch_0
    move-exception v6

    .line 1115
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "SemBioFaceManager"

    const-string/jumbo v1, "Remote exception in remove"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    if-eqz p3, :cond_1

    .line 1117
    invoke-direct {p0, v7}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, v7, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;->onRemovalError(Lcom/samsung/android/bio/face/Face;ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public remove(Lcom/samsung/android/bio/face/Face;Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V
    .locals 8
    .param p1, "face"    # Lcom/samsung/android/bio/face/Face;
    .param p2, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    .prologue
    const/4 v7, 0x1

    .line 1124
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1125
    return-void

    .line 1126
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_1

    .line 1128
    :try_start_0
    iput-object p2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    .line 1129
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalFace:Lcom/samsung/android/bio/face/Face;

    .line 1130
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Lcom/samsung/android/bio/face/Face;->getFaceId()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/bio/face/Face;->getGroupId()I

    move-result v3

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getCurrentUserId()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/bio/face/IFaceService;->remove(Landroid/os/IBinder;IIILcom/samsung/android/bio/face/IFaceServiceReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1123
    :cond_1
    :goto_0
    return-void

    .line 1131
    :catch_0
    move-exception v6

    .line 1132
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "SemBioFaceManager"

    const-string/jumbo v1, "Remote exception in remove"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    if-eqz p2, :cond_1

    .line 1134
    invoke-direct {p0, v7}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v7, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;->onRemovalError(Lcom/samsung/android/bio/face/Face;ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public rename(IILjava/lang/String;)V
    .locals 3
    .param p1, "faceId"    # I
    .param p2, "userId"    # I
    .param p3, "newName"    # Ljava/lang/String;

    .prologue
    .line 1149
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1150
    return-void

    .line 1151
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    .line 1153
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/bio/face/IFaceService;->rename(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1147
    :goto_0
    return-void

    .line 1154
    :catch_0
    move-exception v0

    .line 1155
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception in rename()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1158
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "rename(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public request(I[B[BILcom/samsung/android/bio/face/SemBioFaceManager$RequestCallback;)I
    .locals 9
    .param p1, "cmd"    # I
    .param p2, "inputBuf"    # [B
    .param p3, "outputBuf"    # [B
    .param p4, "inParam"    # I
    .param p5, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$RequestCallback;

    .prologue
    const/4 v1, 0x0

    .line 1304
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1305
    return v1

    .line 1307
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_3

    .line 1309
    if-nez p2, :cond_1

    .line 1310
    const/4 v0, 0x0

    :try_start_0
    new-array p2, v0, [B

    .line 1312
    :cond_1
    if-nez p3, :cond_2

    .line 1313
    const/4 v0, 0x0

    new-array p3, v0, [B

    .line 1315
    :cond_2
    iput-object p5, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRequestCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RequestCallback;

    .line 1316
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getCurrentUserId()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/bio/face/IFaceService;->request(Landroid/os/IBinder;I[B[BIILcom/samsung/android/bio/face/IFaceServiceReceiver;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 1317
    :catch_0
    move-exception v8

    .line 1318
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "SemBioFaceManager"

    const-string/jumbo v1, "Remote exception in request()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, -0x2

    return v0

    .line 1321
    :cond_3
    const-string/jumbo v0, "SemBioFaceManager"

    const-string/jumbo v1, "request(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestCameraVersion()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1501
    const/16 v1, 0x7d4

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->request(I[B[BILcom/samsung/android/bio/face/SemBioFaceManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1502
    return v4

    .line 1504
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public requestCapture()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1493
    const/16 v1, 0x7d2

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->request(I[B[BILcom/samsung/android/bio/face/SemBioFaceManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1494
    return v4

    .line 1496
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public requestEnumerate()[I
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1455
    const/16 v0, 0xa

    new-array v3, v0, [B

    .line 1456
    .local v3, "outBuf":[B
    const/16 v1, 0xb

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->request(I[B[BILcom/samsung/android/bio/face/SemBioFaceManager$RequestCallback;)I

    move-result v8

    .line 1457
    .local v8, "size":I
    if-gtz v8, :cond_0

    .line 1458
    return-object v2

    .line 1460
    :cond_0
    new-array v7, v8, [I

    .line 1461
    .local v7, "result":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_1

    .line 1462
    aget-byte v0, v3, v6

    aput v0, v7, v6

    .line 1461
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1464
    :cond_1
    return-object v7
.end method

.method public requestFullPreview()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1477
    const/16 v1, 0x7d0

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->request(I[B[BILcom/samsung/android/bio/face/SemBioFaceManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1478
    return v4

    .line 1480
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public requestGetUserIDs()[Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1432
    const/16 v0, 0x100

    new-array v3, v0, [B

    .line 1433
    .local v3, "outBuf":[B
    const/16 v1, 0xc

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->request(I[B[BILcom/samsung/android/bio/face/SemBioFaceManager$RequestCallback;)I

    move-result v10

    .line 1434
    .local v10, "size":I
    if-gtz v10, :cond_0

    .line 1435
    return-object v2

    .line 1437
    :cond_0
    invoke-static {v3, v10}, Lcom/samsung/android/bio/face/SemBioFaceManager;->bytesToString([BI)Ljava/lang/String;

    move-result-object v11

    .line 1438
    .local v11, "src":Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 1439
    new-instance v12, Ljava/util/StringTokenizer;

    const-string/jumbo v0, ":"

    invoke-direct {v12, v11, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    .local v12, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v6

    .line 1441
    .local v6, "count":I
    new-array v9, v6, [Ljava/lang/String;

    .line 1442
    .local v9, "result":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1443
    .local v7, "i":I
    :goto_0
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1444
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "i":I
    .local v8, "i":I
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    move v7, v8

    .end local v8    # "i":I
    .restart local v7    # "i":I
    goto :goto_0

    .line 1446
    :cond_1
    return-object v9

    .line 1448
    .end local v6    # "count":I
    .end local v7    # "i":I
    .end local v9    # "result":[Ljava/lang/String;
    .end local v12    # "st":Ljava/util/StringTokenizer;
    :cond_2
    return-object v2
.end method

.method public requestGetVersion()[B
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1359
    const/16 v0, 0x100

    new-array v3, v0, [B

    .line 1360
    .local v3, "outBuf":[B
    const/4 v1, 0x4

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->request(I[B[BILcom/samsung/android/bio/face/SemBioFaceManager$RequestCallback;)I

    move-result v6

    .line 1361
    .local v6, "size":I
    if-gtz v6, :cond_0

    .line 1362
    return-object v2

    .line 1364
    :cond_0
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public requestLedOn()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1469
    const/16 v1, 0x7d1

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->request(I[B[BILcom/samsung/android/bio/face/SemBioFaceManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1470
    return v4

    .line 1472
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public requestPause()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, v2

    move v4, v1

    move-object v5, v2

    .line 1335
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->request(I[B[BILcom/samsung/android/bio/face/SemBioFaceManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1336
    return v1

    .line 1338
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public requestPreviewMode()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1485
    const/16 v1, 0x7d3

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->request(I[B[BILcom/samsung/android/bio/face/SemBioFaceManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1486
    return v4

    .line 1488
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public requestProcessFIDO([B)[B
    .locals 7
    .param p1, "inBuf"    # [B

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1403
    const/16 v0, 0x2800

    new-array v3, v0, [B

    .line 1404
    .local v3, "outBuf":[B
    const/16 v1, 0x9

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->request(I[B[BILcom/samsung/android/bio/face/SemBioFaceManager$RequestCallback;)I

    move-result v6

    .line 1405
    .local v6, "size":I
    if-gtz v6, :cond_0

    .line 1406
    return-object v5

    .line 1408
    :cond_0
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public requestResume()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    .line 1343
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->request(I[B[BILcom/samsung/android/bio/face/SemBioFaceManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1344
    return v4

    .line 1346
    :cond_0
    return v1
.end method

.method public requestSessionOpen()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1351
    const/4 v1, 0x2

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->request(I[B[BILcom/samsung/android/bio/face/SemBioFaceManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1352
    return v4

    .line 1354
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public requestSetActiveGroup(Ljava/lang/String;)Z
    .locals 10
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x8

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 1389
    if-nez p1, :cond_0

    .line 1390
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getCurrentUserId()I

    move-result v4

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->request(I[B[BILcom/samsung/android/bio/face/SemBioFaceManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_1

    .line 1391
    return v9

    .line 1394
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getCurrentUserId()I

    move-result v7

    move-object v3, p0

    move v4, v1

    move-object v6, v2

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/bio/face/SemBioFaceManager;->request(I[B[BILcom/samsung/android/bio/face/SemBioFaceManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_1

    .line 1395
    return v9

    .line 1398
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public requestUpdateSID([B)Z
    .locals 6
    .param p1, "sId"    # [B

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1413
    const/16 v1, 0xa

    move-object v0, p0

    move-object v2, p1

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->request(I[B[BILcom/samsung/android/bio/face/SemBioFaceManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1414
    return v4

    .line 1416
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public resetTimeout([B)V
    .locals 3
    .param p1, "token"    # [B

    .prologue
    .line 1537
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1538
    return-void

    .line 1540
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    .line 1542
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    invoke-interface {v1, p1}, Lcom/samsung/android/bio/face/IFaceService;->resetTimeout([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1536
    :goto_0
    return-void

    .line 1543
    :catch_0
    move-exception v0

    .line 1544
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception in resetTimeout()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1547
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "resetTimeout(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setActiveUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1090
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_0

    .line 1091
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    invoke-interface {v1, p1}, Lcom/samsung/android/bio/face/IFaceService;->setActiveUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    :cond_0
    :goto_0
    return-void

    .line 1092
    :catch_0
    move-exception v0

    .line 1093
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception in setActiveUser"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
