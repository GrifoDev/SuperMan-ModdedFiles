.class public Lcom/android/incallui/remotecall/RemoteCallPresenter;
.super Ljava/lang/Object;
.source "RemoteCallPresenter.java"

# interfaces
.implements Lcom/android/incallui/remotecall/data/IRemoteCallManager$Listener;
.implements Lcom/android/incallui/remotecall/remotecall/RemoteCallList$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/remotecall/RemoteCallPresenter$RemoteCallListener;
    }
.end annotation


# static fields
.field private static final ADD_CALL_MODE_KEY:Ljava/lang/String; = "add_call_mode"

.field public static final CALL_STATE_ACTIVE:I = 0x1

.field public static final CALL_STATE_HOLD:I = 0x2

.field public static final CALL_STATE_INVALID:I = 0x0

.field static final LOG_TAG:Ljava/lang/String; = "RemoteCallPresenter"

.field public static final STATE_CONNECTED:I = 0x1

.field public static final STATE_CONNECTED_HOLD:I = 0x5

.field public static final STATE_DIALING:I = 0x4

.field public static final STATE_DISCONNECTED:I = 0x2

.field public static final STATE_REJECTED:I = 0x3

.field public static final STATE_RINGING:I

.field static sInstance:Lcom/android/incallui/remotecall/RemoteCallPresenter;


# instance fields
.field isSelfTestStart:Z

.field private mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field private final mRemoteCallListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/remotecall/RemoteCallPresenter$RemoteCallListener;",
            ">;"
        }
    .end annotation
.end field

.field mRemoteCallManager:Lcom/android/incallui/remotecall/data/IRemoteCallManager;

.field mRemoteCallStatusBarNotifier:Lcom/android/incallui/remotecall/RemoteCallStatusBarNotifier;

.field private selfTestNumber:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mRemoteCallManager:Lcom/android/incallui/remotecall/data/IRemoteCallManager;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mRemoteCallListeners:Ljava/util/List;

    iput-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->selfTestNumber:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->isSelfTestStart:Z

    new-instance v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;-><init>(Lcom/android/incallui/remotecall/RemoteCallPresenter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mHandler:Landroid/os/Handler;

    const-string v0, "RemoteCallPresenter"

    const-string v1, "RemoteCallPresenter created"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->selfTestNumber:Ljava/lang/String;

    return-object v0
.end method

.method private clear()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "RemoteCallPresenter"

    const-string v1, "clear()..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mRemoteCallManager:Lcom/android/incallui/remotecall/data/IRemoteCallManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mRemoteCallManager:Lcom/android/incallui/remotecall/data/IRemoteCallManager;

    invoke-interface {v0, p0}, Lcom/android/incallui/remotecall/data/IRemoteCallManager;->removeListener(Lcom/android/incallui/remotecall/data/IRemoteCallManager$Listener;)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mRemoteCallManager:Lcom/android/incallui/remotecall/data/IRemoteCallManager;

    invoke-interface {v0}, Lcom/android/incallui/remotecall/data/IRemoteCallManager;->clear()V

    iput-object v3, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mRemoteCallManager:Lcom/android/incallui/remotecall/data/IRemoteCallManager;

    :cond_0
    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->removeListener(Lcom/android/incallui/remotecall/remotecall/RemoteCallList$Listener;)V

    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->clear()V

    iput-object v3, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->clearListener()V

    return-void
.end method

.method private clearListener()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mRemoteCallListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mRemoteCallListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;
    .locals 2

    const-class v1, Lcom/android/incallui/remotecall/RemoteCallPresenter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->sInstance:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-direct {v0}, Lcom/android/incallui/remotecall/RemoteCallPresenter;-><init>()V

    sput-object v0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->sInstance:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    :cond_0
    sget-object v0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->sInstance:Lcom/android/incallui/remotecall/RemoteCallPresenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private startUI()V
    .locals 4

    const-string v1, "RemoteCallPresenter"

    const-string v2, "startUI()..."

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/remotecall/utils/RemoteCallUtils;->needToShowAsFullScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/incallui/remotecall/RemoteCallActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    new-instance v1, Lcom/android/incallui/remotecall/RemoteCallStatusBarNotifier;

    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/incallui/remotecall/RemoteCallStatusBarNotifier;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mRemoteCallStatusBarNotifier:Lcom/android/incallui/remotecall/RemoteCallStatusBarNotifier;

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mRemoteCallStatusBarNotifier:Lcom/android/incallui/remotecall/RemoteCallStatusBarNotifier;

    invoke-virtual {p0, v1}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->addListener(Lcom/android/incallui/remotecall/RemoteCallPresenter$RemoteCallListener;)V

    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallIntentService;->isTest()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mRemoteCallManager:Lcom/android/incallui/remotecall/data/IRemoteCallManager;

    invoke-interface {v1}, Lcom/android/incallui/remotecall/data/IRemoteCallManager;->getRemoteCallAdapterList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->onNotifyRemoteCallStateChanged(Ljava/util/ArrayList;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/incallui/remotecall/RemoteCallPopupService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/android/incallui/remotecall/RemoteCallPresenter$RemoteCallListener;)V
    .locals 3

    const-string v0, "RemoteCallPresenter"

    const-string v1, "addListener "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mRemoteCallListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getSelfTestNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->selfTestNumber:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 3

    const-string v0, "RemoteCallPresenter"

    const-string v1, "init()..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->getInstance()Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mRemoteCallManager:Lcom/android/incallui/remotecall/data/IRemoteCallManager;

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mRemoteCallManager:Lcom/android/incallui/remotecall/data/IRemoteCallManager;

    invoke-interface {v0, p0}, Lcom/android/incallui/remotecall/data/IRemoteCallManager;->addListener(Lcom/android/incallui/remotecall/data/IRemoteCallManager$Listener;)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mRemoteCallManager:Lcom/android/incallui/remotecall/data/IRemoteCallManager;

    invoke-interface {v0}, Lcom/android/incallui/remotecall/data/IRemoteCallManager;->init()V

    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->addListener(Lcom/android/incallui/remotecall/remotecall/RemoteCallList$Listener;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mRemoteCallManager:Lcom/android/incallui/remotecall/data/IRemoteCallManager;

    invoke-interface {v0}, Lcom/android/incallui/remotecall/data/IRemoteCallManager;->getRemoteCallAdapterList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallIntentService;->isTest()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RemoteCallPresenter"

    const-string v1, "if there is empty data in ims manager when start remotecall, this means that call is already disconnected"

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RemoteCallPresenter"

    const-string v1, "don\'t need to show gui"

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->clear()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->startUI()V

    goto :goto_0
.end method

.method public isSelfTestStart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->isSelfTestStart:Z

    return v0
.end method

.method public launchDialer()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "add_call_mode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    const-string v2, "Sending the add Call intent"

    invoke-static {p0, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "Activity for adding calls isn\'t found."

    invoke-static {p0, v2, v0}, Lcom/android/incallui/remotecall/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onCallEnded()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mRemoteCallListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$RemoteCallListener;

    invoke-interface {v0}, Lcom/android/incallui/remotecall/RemoteCallPresenter$RemoteCallListener;->onRemoteCallEnded()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->clear()V

    return-void
.end method

.method public onCallListChange(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mRemoteCallListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$RemoteCallListener;

    invoke-interface {v0, p1}, Lcom/android/incallui/remotecall/RemoteCallPresenter$RemoteCallListener;->onRemoteCallStateChanged(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNotifyRemoteCallStateChanged(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    const-string v0, "RemoteCallPresenter"

    const-string v1, "onMultiEndStateChanged"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_0

    const-string v0, "RemoteCallPresenter"

    const-string v1, "onMultiEndStateChanged remoteCallAdapterManager == null"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->receiveRemoteCallData(Ljava/util/ArrayList;)V

    return-void
.end method

.method public removeListener(Lcom/android/incallui/remotecall/RemoteCallPresenter$RemoteCallListener;)V
    .locals 3

    const-string v0, "RemoteCallPresenter"

    const-string v1, "removeListener "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mRemoteCallListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public requestPulling()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "RemoteCallPresenter"

    const-string v4, "requestPulling"

    invoke-static {v3, v4, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getPrimaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v3, "RemoteCallPresenter"

    const-string v4, "requestPulling, RemoteCall is null"

    invoke-static {v3, v4, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isPullAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "RemoteCallPresenter"

    const-string v4, "requestPulling, isPullAvailable() is false"

    invoke-static {v3, v4, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mRemoteCallManager:Lcom/android/incallui/remotecall/data/IRemoteCallManager;

    invoke-interface {v1, v0}, Lcom/android/incallui/remotecall/data/IRemoteCallManager;->requestCallPulling(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    move v1, v2

    goto :goto_0
.end method

.method public setSelfTest(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->selfTestNumber:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->startSelfTest(I)V

    return-void
.end method

.method public startSelfTest(I)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->isSelfTestStart:Z

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    const-wide/16 v2, 0x2ee0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    const-wide/16 v2, 0x3e80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    const-wide/16 v2, 0x5dc0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
