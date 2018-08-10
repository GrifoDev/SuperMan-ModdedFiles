.class public Lcom/samsung/android/biometrics/SemBiometricsManager;
.super Ljava/lang/Object;
.source "SemBiometricsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/biometrics/SemBiometricsManager$1;,
        Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;,
        Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationResult;,
        Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;,
        Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;,
        Lcom/samsung/android/biometrics/SemBiometricsManager$OnAuthenticationCancelListener;,
        Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;
    }
.end annotation


# static fields
.field public static final ACQUIRED_GOOD:I = 0x0

.field public static final ACQUIRED_HOLD_PHONE_CLOSER:I = 0x6

.field public static final ACQUIRED_HOLD_PHONE_FARTHER_AWAY:I = 0x7

.field public static final ACQUIRED_LIGHT_REFLECTION:I = 0x1

.field public static final ACQUIRED_LOW_LUMINANCE:I = 0x9

.field public static final ACQUIRED_MOVE_DOWN:I = 0x3

.field public static final ACQUIRED_MOVE_LEFT:I = 0x4

.field public static final ACQUIRED_MOVE_RIGHT:I = 0x5

.field public static final ACQUIRED_MOVE_UP:I = 0x2

.field public static final ACQUIRED_OPEN_EYES_FULLY:I = 0x8

.field private static final DEBUG:Z

.field public static final ERROR_CANCELED:I = 0x5

.field public static final ERROR_FACE_CAMERA_FAILURE:I = 0x6

.field public static final ERROR_FACE_CAMERA_UNAVAILABLE:I = 0x7

.field public static final ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final ERROR_IRIS_CAMERA_FAILURE:I = 0x8

.field public static final ERROR_IRIS_CAMERA_UNAVAILABLE:I = 0x9

.field public static final ERROR_NO_SPACE:I = 0x4

.field public static final ERROR_TEMPLATE_CORRUPTED:I = 0xa

.field public static final ERROR_TIMEOUT:I = 0x3

.field public static final ERROR_UNABLE_TO_PROCESS:I = 0x2

.field private static final MSG_ACQUIRED:I = 0x64

.field private static final MSG_AUTHENTICATION_FAILED:I = 0x66

.field private static final MSG_AUTHENTICATION_SUCCEEDED:I = 0x65

.field private static final MSG_ERROR:I = 0x67

.field private static final TAG:Ljava/lang/String; = "SemBiometricsManager"

.field public static final TYPE_HIGH_SECURITY:I = 0xf

.field public static final TYPE_NORMAL_SECURITY:I = 0x5

.field private static mSemIBManager:Lcom/samsung/android/biometrics/SemBiometricsManager;


# instance fields
.field private mAuthenticationCallback:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

.field private mContext:Landroid/content/Context;

.field private mCryptoObject:Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;

.field private mHandler:Landroid/os/Handler;

.field private mService:Lcom/samsung/android/biometrics/IBiometricsService;

.field private mServiceDeathRecipient:Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;

.field private mServiceReceiver:Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/biometrics/SemBiometricsManager;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/biometrics/SemBiometricsManager;)Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mAuthenticationCallback:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/biometrics/SemBiometricsManager;)Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mCryptoObject:Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/biometrics/SemBiometricsManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/biometrics/SemBiometricsManager;)Lcom/samsung/android/biometrics/IBiometricsService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/biometrics/SemBiometricsManager;)Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mServiceDeathRecipient:Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/biometrics/SemBiometricsManager;Lcom/samsung/android/biometrics/IBiometricsService;)Lcom/samsung/android/biometrics/IBiometricsService;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/biometrics/SemBiometricsManager;Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/SemBiometricsManager;->cancelAuthentication(Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/biometrics/SemBiometricsManager;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mSemIBManager:Lcom/samsung/android/biometrics/SemBiometricsManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mToken:Landroid/os/IBinder;

    new-instance v0, Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;-><init>(Lcom/samsung/android/biometrics/SemBiometricsManager;Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mServiceDeathRecipient:Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;

    new-instance v0, Lcom/samsung/android/biometrics/SemBiometricsManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/SemBiometricsManager$1;-><init>(Lcom/samsung/android/biometrics/SemBiometricsManager;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mServiceReceiver:Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;

    iput-object p1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;-><init>(Lcom/samsung/android/biometrics/SemBiometricsManager;Landroid/content/Context;Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->ensureServiceConnected()Z

    return-void
.end method

.method private cancelAuthentication(Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    iget-object v2, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/biometrics/IBiometricsService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemBiometricsManager"

    const-string/jumbo v2, "Remote exception while canceling authentication"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized ensureServiceConnected()Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/biometrics/IBiometricsService;->isHardwareDetected(JLjava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->startBiometricsService()V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->waitForService()V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    :try_start_3
    instance-of v1, v0, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/biometrics/SemBiometricsManager;
    .locals 2

    const-class v0, Lcom/samsung/android/biometrics/SemBiometricsManager;

    monitor-enter v0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1
.end method

.method private startBiometricsService()V
    .locals 5

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.biometrics.service"

    const-string/jumbo v4, "com.samsung.android.biometrics.service.BiometricsService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SemBiometricsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Starting service failed: "

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

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    new-instance v0, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;-><init>(Lcom/samsung/android/biometrics/SemBiometricsManager;Landroid/os/Looper;Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mHandler:Landroid/os/Handler;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;-><init>(Lcom/samsung/android/biometrics/SemBiometricsManager;Landroid/os/Looper;Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private waitForService()V
    .locals 4

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x14

    if-gt v0, v2, :cond_1

    const-string/jumbo v2, "samsung.intelligentbiometricsservice"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/biometrics/IBiometricsService;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    iget-object v2, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SemBiometricsManager"

    const-string/jumbo v3, "Service connected!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public authenticate(ILcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/biometrics/SemBiometricsManager;->authenticate(ILcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;Landroid/os/CancellationSignal;Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V

    return-void
.end method

.method public authenticate(ILcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;Landroid/os/CancellationSignal;Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V
    .locals 13

    if-nez p4, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Must supply an authentication callback"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->useHandler(Landroid/os/Handler;)V

    if-eqz p3, :cond_2

    invoke-virtual/range {p3 .. p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "SemBiometricsManager"

    const-string/jumbo v4, "authentication already canceled"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v3, Lcom/samsung/android/biometrics/SemBiometricsManager$OnAuthenticationCancelListener;

    invoke-direct {v3, p0, p2}, Lcom/samsung/android/biometrics/SemBiometricsManager$OnAuthenticationCancelListener;-><init>(Lcom/samsung/android/biometrics/SemBiometricsManager;Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->ensureServiceConnected()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/samsung/android/biometrics/SemBiometricsManager$2;

    move-object/from16 v0, p4

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/biometrics/SemBiometricsManager$2;-><init>(Lcom/samsung/android/biometrics/SemBiometricsManager;Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    if-eqz v3, :cond_4

    :try_start_0
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mAuthenticationCallback:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    iput-object p2, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mCryptoObject:Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->getOpId()J

    move-result-wide v6

    :goto_0
    if-eqz p2, :cond_6

    iget-object v3, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mCryptoObject:Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->getFidoRequestData()[B

    move-result-object v12

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    iget-object v5, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mToken:Landroid/os/IBinder;

    iget-object v9, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mServiceReceiver:Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;

    iget-object v4, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v10

    move v4, p1

    move/from16 v8, p6

    move-object/from16 v11, p7

    invoke-interface/range {v3 .. v12}, Lcom/samsung/android/biometrics/IBiometricsService;->authenticate(ILandroid/os/IBinder;JILcom/samsung/android/biometrics/IBiometricsServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;[B)V

    iget-object v3, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mServiceDeathRecipient:Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;->link()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    return-void

    :cond_5
    const-wide/16 v6, 0x0

    goto :goto_0

    :cond_6
    const/4 v12, 0x0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v3, "SemBiometricsManager"

    const-string/jumbo v4, "exception while authenticating"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/samsung/android/biometrics/SemBiometricsManager$3;

    move-object/from16 v0, p4

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/biometrics/SemBiometricsManager$3;-><init>(Lcom/samsung/android/biometrics/SemBiometricsManager;Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method public getAuthenticatorId()J
    .locals 6

    const-wide/16 v4, 0x0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return-wide v4

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    iget-object v2, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/biometrics/IBiometricsService;->getAuthenticatorId(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemBiometricsManager"

    const-string/jumbo v2, "Remote exception in getAuthenticatorId()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-wide v4

    :cond_1
    const-string/jumbo v1, "SemBiometricsManager"

    const-string/jumbo v2, "getAuthenticatorId(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestSessionClose()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    invoke-interface {v1}, Lcom/samsung/android/biometrics/IBiometricsService;->requestSessionClose()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemBiometricsManager"

    const-string/jumbo v2, "Remote exception in requestSessionClose()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "SemBiometricsManager"

    const-string/jumbo v2, "requestSessionClose(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestSessionOpen()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    invoke-interface {v1}, Lcom/samsung/android/biometrics/IBiometricsService;->requestSessionOpen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemBiometricsManager"

    const-string/jumbo v2, "Remote exception in requestSessionOpen()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "SemBiometricsManager"

    const-string/jumbo v2, "requestSessionOpen(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
