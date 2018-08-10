.class Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FingerCompat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$H;,
        Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FPMS_COMPAT"


# instance fields
.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

.field private mClientAttr:Landroid/os/Bundle;

.field private mCurrentToken:Landroid/os/IBinder;

.field private mEventHandler:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;

.field private mH:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$H;

.field mIsSpassSdk:Z

.field mIsSpassSdkCompatVer1_2_1:Z

.field private mService:Landroid/hardware/fingerprint/IFingerprintService;

.field final synthetic this$0:Lcom/samsung/android/fingerprint/FingerprintManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mCurrentToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;)Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$H;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mH:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$H;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;)Landroid/hardware/fingerprint/IFingerprintService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;Landroid/os/IBinder;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->cancel(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->hasAuthCommand()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;Landroid/os/IBinder;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->unregisterClient(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;Landroid/os/IBinder;I)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->authentication(Landroid/os/IBinder;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->runNormalScan(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->deliverEventToClient(Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->handleAuthenticationAcquired(II)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->handleAuthenticationError(II)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->handleAuthenticationFailed()V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mCurrentToken:Landroid/os/IBinder;

    iput-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    iput-boolean v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mIsSpassSdk:Z

    iput-boolean v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mIsSpassSdkCompatVer1_2_1:Z

    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$H;

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get2()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$H;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mH:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$H;

    const-string/jumbo v0, "fingerprint"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    return-void
.end method

.method private declared-synchronized authentication(Landroid/os/IBinder;I)I
    .locals 11

    const/4 v10, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FPMS_COMPAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "authentication : token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mCurrentToken:Landroid/os/IBinder;

    if-eq p1, v0, :cond_1

    const-string/jumbo v0, "FPMS_COMPAT"

    const-string/jumbo v1, "authentication : mismatch token"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x3

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "FPMS_COMPAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "authentication : id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mEventHandler:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mEventHandler:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;

    invoke-static {v0}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;->-get0(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;)Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_2

    const-string/jumbo v0, "FPMS_COMPAT"

    const-string/jumbo v1, "authentication : auth in progress... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, -0x2

    monitor-exit p0

    return v0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "FPMS_COMPAT"

    const-string/jumbo v1, "authentication : No enrolled fp "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, -0x5

    monitor-exit p0

    return v0

    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_4

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mCancellationSignal:Landroid/os/CancellationSignal;

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mCancellationSignal:Landroid/os/CancellationSignal;

    new-instance v1, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$1;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;)V

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mCurrentToken:Landroid/os/IBinder;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mEventHandler:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mCurrentToken:Landroid/os/IBinder;

    const-wide/16 v2, 0x0

    iget-object v5, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mEventHandler:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get2()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mClientAttr:Landroid/os/Bundle;

    const/4 v6, 0x0

    move v4, p2

    invoke-interface/range {v0 .. v8}, Landroid/hardware/fingerprint/IFingerprintService;->authenticate(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v10

    :catch_0
    move-exception v9

    :try_start_5
    const-string/jumbo v0, "FPMS_COMPAT"

    const-string/jumbo v1, "authentication : failure : "

    invoke-static {v0, v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mEventHandler:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mCancellationSignal:Landroid/os/CancellationSignal;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v0, -0x1

    monitor-exit p0

    return v0
.end method

.method private declared-synchronized cancel(Landroid/os/IBinder;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FPMS_COMPAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancel : token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", curToken = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mCurrentToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mCurrentToken:Landroid/os/IBinder;

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FPMS_COMPAT"

    const-string/jumbo v1, "cancel : cancel current auth..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mCancellationSignal:Landroid/os/CancellationSignal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "FPMS_COMPAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancel : token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    const-string/jumbo v0, "FPMS_COMPAT"

    const-string/jumbo v1, "cancel : already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method private deliverEventToClient(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get0()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "FPMS_COMPAT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deliverEventToClient : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->toString(Lcom/samsung/android/fingerprint/FingerprintEvent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    invoke-interface {v1, p1}, Lcom/samsung/android/fingerprint/IFingerprintClient;->onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget v1, p1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mEventHandler:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mEventHandler:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;->mIsDone:Z

    :cond_1
    iput-object v4, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mEventHandler:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;

    :cond_2
    return-void

    :cond_3
    :try_start_1
    const-string/jumbo v1, "FPMS_COMPAT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deliverEventToClient : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FPMS_COMPAT"

    const-string/jumbo v2, "deliverEventToClient : failed to call callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private handleAuthenticationAcquired(II)V
    .locals 8

    const/16 v7, 0xd

    const/16 v6, 0xc

    const/4 v5, 0x0

    const-string/jumbo v2, "FPMS_COMPAT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleAuthenticationAcquired : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct {v0, v7}, Lcom/samsung/android/fingerprint/FingerprintEvent;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne p1, v2, :cond_3

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "FPMS_COMPAT"

    const-string/jumbo v3, "handleAuthenticationAcquired : No handled vendor info"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    iput v7, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    const/4 v2, -0x1

    iput v2, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    iput v6, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    iget-object v2, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    const-string/jumbo v3, "imageQuality"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    const-string/jumbo v3, "imageQualityFeedback"

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get2()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityFeedbackString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->deliverEventToClient(Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    :cond_2
    return-void

    :pswitch_1
    const/16 v2, 0xb

    iput v2, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    iput v5, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    iput v5, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    goto :goto_0

    :pswitch_2
    iput v6, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    iput v5, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    iput v5, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    goto :goto_0

    :pswitch_3
    const/16 v2, 0xe

    iput v2, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    iput v5, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    const/16 v2, 0x15

    iput v2, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    goto :goto_0

    :pswitch_4
    const/16 v2, 0x10

    iput v2, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    goto :goto_0

    :cond_3
    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "FPMS_COMPAT"

    const-string/jumbo v3, "handleAuthenticationAcquired : No handled acquired info"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_0
    const/high16 v1, 0x60000000

    goto :goto_0

    :sswitch_1
    const/16 v1, 0x200

    goto :goto_0

    :sswitch_2
    const/16 v1, 0x10

    goto :goto_0

    :sswitch_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const/high16 v1, 0x1000000

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x3e9 -> :sswitch_4
    .end sparse-switch
.end method

.method private handleAuthenticationError(II)V
    .locals 8

    const/16 v7, 0x79

    const/16 v6, 0x33

    const/16 v5, 0x8

    const/4 v4, 0x7

    const-string/jumbo v1, "FPMS_COMPAT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleAuthenticationError : "

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

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintEvent;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;-><init>(I)V

    if-ne p1, v5, :cond_0

    sparse-switch p2, :sswitch_data_0

    iput v4, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    :goto_0
    if-nez v0, :cond_2

    return-void

    :sswitch_0
    const/16 v1, 0x7a

    iput v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    goto :goto_0

    :sswitch_1
    iput v7, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    goto :goto_0

    :sswitch_2
    const/16 v1, 0xe

    iput v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    goto :goto_0

    :sswitch_3
    const/16 v1, 0xf

    iput v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    goto :goto_0

    :sswitch_4
    const/16 v1, 0x6e

    iput v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    goto :goto_0

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iput v4, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    goto :goto_0

    :pswitch_1
    iput v4, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x4

    iput v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    goto :goto_0

    :pswitch_3
    iput v7, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    goto :goto_0

    :pswitch_4
    iput v6, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mIsSpassSdk:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iput v6, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    goto :goto_0

    :cond_1
    iput v5, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mIsSpassSdk:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mIsSpassSdkCompatVer1_2_1:Z

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    if-ne v1, v6, :cond_3

    iput v5, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    :cond_3
    iget v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    invoke-direct {p0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->isSupportedStatusBySpassSdk(I)Z

    move-result v1

    if-nez v1, :cond_4

    iput v4, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    :cond_4
    const/4 v1, -0x1

    iput v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    invoke-direct {p0, v0}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->deliverEventToClient(Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mH:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$H;

    new-instance v2, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$3;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$H;->post(Ljava/lang/Runnable;)Z

    return-void

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_4
        0x3eb -> :sswitch_1
        0x3ec -> :sswitch_0
        0x3ed -> :sswitch_2
        0x1388 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private handleAuthenticationFailed()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "FPMS_COMPAT"

    const-string/jumbo v2, "handleAuthenticationFailed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintEvent;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;-><init>(I)V

    const/4 v1, -0x1

    iput v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    const/16 v1, 0xb

    iput v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    iget-object v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    const-string/jumbo v2, "fingerIndex"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    const-string/jumbo v2, "imageQuality"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    const-string/jumbo v2, "imageQualityFeedback"

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get2()Landroid/content/Context;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityFeedbackString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->deliverEventToClient(Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    return-void
.end method

.method private declared-synchronized hasAuthCommand()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mEventHandler:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isSupportedStatusBySpassSdk(I)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x33 -> :sswitch_0
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method private declared-synchronized registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mCurrentToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FPMS_COMPAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerClient : client = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " already registered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    invoke-interface {p1}, Lcom/samsung/android/fingerprint/IFingerprintClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mCurrentToken:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mClientAttr:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mClientAttr:Landroid/os/Bundle;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mClientAttr:Landroid/os/Bundle;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mClientAttr:Landroid/os/Bundle;

    const-string/jumbo v1, "fpms_compat"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mClientAttr:Landroid/os/Bundle;

    const-string/jumbo v1, "sdk_version"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mIsSpassSdk:Z

    iget-boolean v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mIsSpassSdk:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mClientAttr:Landroid/os/Bundle;

    const-string/jumbo v1, "Pass-v1.2.1"

    invoke-static {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->-wrap0(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mIsSpassSdkCompatVer1_2_1:Z

    :cond_2
    const-string/jumbo v0, "FPMS_COMPAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerClient : Pass version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mClientAttr:Landroid/os/Bundle;

    const-string/jumbo v3, "sdk_version"

    const-string/jumbo v4, "Unknown"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get0()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "FPMS_COMPAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerClient : token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mCurrentToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", clientSpec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mClientAttr:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mCurrentToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_4
    :try_start_1
    const-string/jumbo v0, "FPMS_COMPAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerClient : token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mCurrentToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized runNormalScan(I)I
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "FPMS_COMPAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "runNormalScan : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get8()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    new-instance v5, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$2;

    invoke-direct {v5, p0}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$2;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catch_0
    move-exception v6

    :try_start_2
    const-string/jumbo v0, "FPMS_COMPAT"

    const-string/jumbo v1, "runNormalScan : failure : "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, -0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized unregisterClient(Landroid/os/IBinder;)Z
    .locals 4

    const/4 v3, 0x1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get0()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "FPMS_COMPAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterClient : token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", curToken = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mCurrentToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mCurrentToken:Landroid/os/IBinder;

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FPMS_COMPAT"

    const-string/jumbo v1, "unregisterClient : cancel current auth..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mCancellationSignal:Landroid/os/CancellationSignal;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mCurrentToken:Landroid/os/IBinder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mClientAttr:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mEventHandler:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mEventHandler:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;->mIsDone:Z

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mEventHandler:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v3

    :cond_2
    :try_start_1
    const-string/jumbo v0, "FPMS_COMPAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterClient : token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method


# virtual methods
.method public handleAuthenticationSucceeded(I)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "FPMS_COMPAT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleAuthenticationSucceeded : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintEvent;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;-><init>(I)V

    iput v4, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    iput v4, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    iget-object v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    const-string/jumbo v2, "fingerIndex"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->deliverEventToClient(Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->mH:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$H;

    new-instance v2, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$4;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
