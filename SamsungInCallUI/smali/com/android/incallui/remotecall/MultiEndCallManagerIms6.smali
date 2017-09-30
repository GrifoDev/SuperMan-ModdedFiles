.class public final Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/remotecall/data/IRemoteCallManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiEndCallManagerIms6"

.field private static sInstance:Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;


# instance fields
.field private mContext:Landroid/content/Context;

.field mDialogEvent:Lcom/sec/ims/DialogEvent;

.field private mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

.field mImsDialogEventListener:Lcom/sec/ims/IDialogEventListener;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/remotecall/data/IRemoteCallManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private msisdn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->sInstance:Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mDialogEvent:Lcom/sec/ims/DialogEvent;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mListeners:Ljava/util/Set;

    new-instance v0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6$1;-><init>(Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;)V

    iput-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mImsDialogEventListener:Lcom/sec/ims/IDialogEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->msisdn:Ljava/lang/String;

    return-object p1
.end method

.method public static getInstance()Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;
    .locals 1

    sget-object v0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->sInstance:Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;

    invoke-direct {v0}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;-><init>()V

    sput-object v0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->sInstance:Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;

    :cond_0
    sget-object v0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->sInstance:Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;

    return-object v0
.end method

.method private registerDialogEventListener()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    iget-object v1, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mImsDialogEventListener:Lcom/sec/ims/IDialogEventListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->registerDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    invoke-virtual {v0}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->getLastDialogEvent()Lcom/sec/ims/DialogEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mDialogEvent:Lcom/sec/ims/DialogEvent;

    const-string v0, "MultiEndCallManagerIms6"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init mDialogEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mDialogEvent:Lcom/sec/ims/DialogEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/incallui/remotecall/data/IRemoteCallManager$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "MultiEndCallManagerIms6"

    const-string v1, "clear()..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v3, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->unregisterDialogEventListener()V

    iget-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mListeners:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_0
    iput-object v3, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mDialogEvent:Lcom/sec/ims/DialogEvent;

    return-void
.end method

.method public getDialogEvent()Lcom/sec/ims/DialogEvent;
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    invoke-virtual {v0}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->getLastDialogEvent()Lcom/sec/ims/DialogEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mDialogEvent:Lcom/sec/ims/DialogEvent;

    const-string v0, "MultiEndCallManagerIms6"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDialogEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mDialogEvent:Lcom/sec/ims/DialogEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mDialogEvent:Lcom/sec/ims/DialogEvent;

    goto :goto_0
.end method

.method public getMSISDN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteCallAdapterList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mDialogEvent:Lcom/sec/ims/DialogEvent;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->getDialogEvent()Lcom/sec/ims/DialogEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mDialogEvent:Lcom/sec/ims/DialogEvent;

    iget-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mDialogEvent:Lcom/sec/ims/DialogEvent;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mDialogEvent:Lcom/sec/ims/DialogEvent;

    invoke-virtual {v0}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/Dialog;

    if-eqz v0, :cond_1

    new-instance v3, Lcom/android/incallui/remotecall/data/MultiEndDataIms6Wrapper;

    invoke-direct {v3, v0}, Lcom/android/incallui/remotecall/data/MultiEndDataIms6Wrapper;-><init>(Lcom/sec/ims/Dialog;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public init()V
    .locals 3

    const-string v0, "MultiEndCallManagerIms6"

    const-string v1, "init()..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getIMSManagerWrapper()Lcom/android/incallui/service/ims/IMSManagerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    invoke-direct {p0}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->registerDialogEventListener()V

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

    const-string v1, "MultiEndCallManagerIms6"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotifyMultiStateChanged : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mDialogEvent:Lcom/sec/ims/DialogEvent;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/remotecall/data/IRemoteCallManager$Listener;

    invoke-interface {v0, p1}, Lcom/android/incallui/remotecall/data/IRemoteCallManager$Listener;->onNotifyRemoteCallStateChanged(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_0
    const-string v0, "not null"

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeListener(Lcom/android/incallui/remotecall/data/IRemoteCallManager$Listener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public requestCallPulling(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getDialogID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->requestCallPulling(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestCallPulling(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCallPulling for multiend msisdn : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dialogId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->transferCall(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public unregisterDialogEventListener()V
    .locals 2

    const-string v0, "ims service : unregisterDialogEventListener"

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    iget-object v1, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mImsDialogEventListener:Lcom/sec/ims/IDialogEventListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->unregisterDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V

    return-void
.end method
