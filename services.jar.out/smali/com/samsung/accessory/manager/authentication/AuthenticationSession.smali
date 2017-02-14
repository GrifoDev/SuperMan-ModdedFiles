.class public Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
.super Ljava/lang/Thread;
.source "AuthenticationSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;,
        Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;,
        Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;
    }
.end annotation


# static fields
.field public static final EVENT_SESSION_COMPLETE:I = 0x3

.field public static final EVENT_SESSION_STARTED:I = 0x2

.field public static final EVENT_SESSION_STARTING:I = 0x1

.field public static final EVENT_SESSION_STOPPED:I = 0x4

.field public static final MSG_CONNECTIVITY_CONNECT:I = 0x7

.field public static final MSG_CONNECTIVITY_CONNECTED:I = 0x8

.field public static final MSG_CONNECTIVITY_DISCONNECTED:I = 0x9

.field public static final MSG_CONNECTIVITY_OFF:I = 0x4

.field public static final MSG_CONNECTIVITY_ON:I = 0x3

.field public static final MSG_CONNECTIVITY_READY:I = 0x2

.field public static final MSG_CONNECTIVITY_SET_CONNECTION:I = 0x1

.field public static final MSG_CONNECTIVITY_TURNING_OFF:I = 0x5

.field public static final MSG_SESSION_REQUEST_TEAR_DOWN:I = 0xd

.field public static final MSG_SESSION_START:I = 0xb

.field public static final MSG_SESSION_STOP:I = 0xc

.field public static final MSG_SESSION_TIMEOUT:I = 0xe

.field public static final SESSION_NONE:I = 0x7

.field public static final SESSION_STATE_ERROR:I = 0x6

.field public static final SESSION_STATE_READY:I = 0x1

.field public static final SESSION_STATE_STARTED:I = 0x3

.field public static final SESSION_STATE_STARTING:I = 0x2

.field public static final SESSION_STATE_STOPPED:I = 0x5

.field public static final SESSION_STATE_STOPPING:I = 0x4

.field private static final SESSION_TIMEOUT:I = 0x7530

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z = true

.field private static final WAITING_FOR_CONNECTIVITY_OFF:I = 0x3

.field private static final WAITING_FOR_CONNECTIVITY_OFF_WHILE_STOPPING:I = 0x2

.field private static final WAITING_FOR_CONNECTIVITY_ON:I = 0x4

.field private static final WAITING_FOR_CONNECTIVITY_ON_WHILE_SETUP:I = 0x5

.field private static final WAITING_RECEIVED_START_WHILE_STOPPING:I = 0x1


# instance fields
.field private mAuthResultCallback:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

.field protected mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

.field private mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mConnectivityStateCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

.field private mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInternalState:I

.field public mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

.field private mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

.field private mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

.field private mSessionThread:Ljava/lang/Thread;

.field private mState:I

.field private mStateLock:Ljava/lang/Object;

.field private mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile mTurnedOffWhileRunning:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mInternalState:I

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTurnedOffWhileRunning:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->connect()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleSetConnection()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleStartSession()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleStopSession(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleTearDown()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->replayAuthfail(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setState(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mInternalState:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mState:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mStateLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthResultCallback:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    iput-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTurnedOffWhileRunning:Z

    new-instance v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;-><init>(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectivityStateCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-direct {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-virtual {v0, p2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setRequestPackage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-virtual {v0, p3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setConnectivityType(I)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return-void
.end method

.method private connect()V
    .locals 2

    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "connect"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->connect()V

    return-void
.end method

.method public static createNewSession(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    .locals 1

    new-instance v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0
.end method

.method private disconnect()V
    .locals 2

    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->disconnect()V

    return-void
.end method

.method private handleSetConnection()V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleSetConnection"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mAuthenticator is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->replayAuthfail(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getSessionState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "session is stopped!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setConnection()V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectivityStateCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setStateChangedCallback(Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->enable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mInternalState:I

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "enable fail"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setState(I)V

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->replayAuthfail(I)V

    goto :goto_0
.end method

.method private handleStartSession()V
    .locals 5

    const/4 v4, 0x1

    sget-object v2, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "handleStartSession"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getSessionState()I

    move-result v2

    if-eq v2, v4, :cond_0

    sget-object v2, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "can\'t start session, state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x1e

    invoke-direct {p0, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->replayAuthfail(I)V

    return-void

    :cond_0
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setState(I)V

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    invoke-interface {v2, v4, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;->onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-nez v2, :cond_2

    new-instance v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getConnectivityType()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;-><init>(Landroid/content/Context;I)V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setAuthenticator(Landroid/content/Context;Lcom/samsung/accessory/manager/authentication/Authenticator;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    invoke-virtual {v2, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->sendEmptyMessage(I)Z

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleStopSession(Z)V
    .locals 10

    const/16 v9, 0xb

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    sget-object v2, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleStopSession, force? = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionThread:Ljava/lang/Thread;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "waiting for session thread to terminate"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/Authenticator;->onInterrupted()V

    :cond_0
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionThread:Ljava/lang/Thread;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Thread;->join(J)V

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Thread is still running.. force stop session!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v2, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "session thread is terminated"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    invoke-virtual {v2, v9}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    const/16 v3, 0x1f

    invoke-virtual {v2, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    :cond_3
    invoke-direct {p0, v8}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setState(I)V

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->isEnabledInternally()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->disable()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-nez p1, :cond_6

    sget-object v2, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "waiting for connectivity off"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    iput v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mInternalState:I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    invoke-virtual {v2, v9}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "session will be restarted.. "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mInternalState:I

    return-void

    :cond_5
    iget-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTurnedOffWhileRunning:Z

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->sendEmptyMessage(I)Z

    return-void

    :cond_7
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "waiting for connectivity on"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_6

    iput v8, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mInternalState:I

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private handleTearDown()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleTearDown"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->close()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    iput-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_1
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setState(I)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;->onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->removeMessages(I)V

    return-void
.end method

.method private replayAuthfail(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-virtual {v0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;->onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    :cond_0
    return-void
.end method

.method private setAuthenticator(Landroid/content/Context;Lcom/samsung/accessory/manager/authentication/Authenticator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Authenticator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    return-void
.end method

.method private setState(I)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Session state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private startAuthChall()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->onAuthenticationChallenge(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, " Current AuthenticationSession state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getSessionState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  internal state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mInternalState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mConnectAfterEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mTeardownRequested = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthResultCallback:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    return-object v0
.end method

.method public getAuthenticationResult()Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    return-object v0
.end method

.method public getConnectivityType()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivityType()I

    move-result v0

    return v0
.end method

.method public getSessionState()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public run()V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->startAuthChall()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->disconnect()V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setState(I)V

    iget-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTurnedOffWhileRunning:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mTurnedOffWhileRunning ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTurnedOffWhileRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    const/4 v2, 0x3

    invoke-interface {v1, v2, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;->onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setAuthenticationResultCallback(Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthResultCallback:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    return-void
.end method

.method public setSessionCallback(Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    return-void
.end method

.method public declared-synchronized startSession()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startSession"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Create handler thread"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "SAAuthentication Session Handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;-><init>(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const-wide/16 v2, 0x7530

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopSession()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopSession"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
