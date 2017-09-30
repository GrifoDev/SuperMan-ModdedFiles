.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TokenValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$IPushTokenRegChangedListener;,
        Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$ResultState;,
        Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$SppRegState;,
        Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$GcmRegState;
    }
.end annotation


# static fields
.field private static final EXTRA_GCM_REGISTER_RESULT:Ljava/lang/String; = "gcm_register_result"

.field private static final TAG:Ljava/lang/String; = "PushTokenClient"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEntryPath:Ljava/lang/String;

.field private mGcmRegState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

.field private mMessenger:Landroid/os/Messenger;

.field private mPushListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$IPushTokenRegChangedListener;

.field private mReqGCM:Z

.field private mReqSPP:Z

.field private mResultState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

.field private mSppRegReceiver:Landroid/content/BroadcastReceiver;

.field private mSppRegState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

.field private mStHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$GcmRegState;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$GcmRegState;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->mGcmRegState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$SppRegState;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$SppRegState;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->mSppRegState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$ResultState;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$ResultState;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->mResultState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->mMessenger:Landroid/os/Messenger;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/network/SppPushClient$SppRegReceiver;

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/network/SppPushClient$SppRegReceiver;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/network/SppPushClient$ISppRegChangedListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->mSppRegReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->mStHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->mReqGCM:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->mSppRegState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->mEntryPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->mReqSPP:Z

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->mResultState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->mSppRegReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->notifyPushTokenResult()V

    return-void
.end method

.method private notifyPushTokenResult()V
    .locals 2

    const-string v0, "notifyPushTokenResult "

    const-string v1, "PushTokenClient"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->mPushListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$IPushTokenRegChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->mPushListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$IPushTokenRegChangedListener;

    invoke-interface {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$IPushTokenRegChangedListener;->onPushRegCompleted()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Listener was null."

    const-string v1, "PushTokenClient"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static registerGcm(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$2;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public getPushToken(Landroid/content/Context;ZZLjava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$IPushTokenRegChangedListener;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->mPushListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$IPushTokenRegChangedListener;

    iput-boolean p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->mReqSPP:Z

    iput-boolean p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->mReqGCM:Z

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->mEntryPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request for push tokens: GCM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->mReqGCM:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SPP: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->mReqSPP:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " EntryPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->mEntryPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushTokenClient"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "PushTokenClient"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;-><init>(Landroid/os/Looper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->mStHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->mStHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->mGcmRegState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->setInitialState(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->mStHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->mStHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
