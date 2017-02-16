.class public final Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;
.super Ljava/lang/Object;
.source "MultiEndCallManagerIms6.java"

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

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->sInstance:Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mDialogEvent:Lcom/sec/ims/DialogEvent;

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mListeners:Ljava/util/Set;

    .line 153
    new-instance v0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6$1;-><init>(Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;)V

    iput-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mImsDialogEventListener:Lcom/sec/ims/IDialogEventListener;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->msisdn:Ljava/lang/String;

    return-object p1
.end method

.method public static getInstance()Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->sInstance:Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;

    invoke-direct {v0}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;-><init>()V

    sput-object v0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->sInstance:Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;

    .line 83
    :cond_0
    sget-object v0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->sInstance:Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;

    return-object v0
.end method

.method private registerDialogEventListener()V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    iget-object v1, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mImsDialogEventListener:Lcom/sec/ims/IDialogEventListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->registerDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V

    .line 144
    iget-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    invoke-virtual {v0}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->getLastDialogEvent()Lcom/sec/ims/DialogEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mDialogEvent:Lcom/sec/ims/DialogEvent;

    .line 145
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

    .line 146
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/incallui/remotecall/data/IRemoteCallManager$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/remotecall/data/IRemoteCallManager$Listener;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 69
    const-string v0, "MultiEndCallManagerIms6"

    const-string v1, "clear()..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 70
    iput-object v3, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->unregisterDialogEventListener()V

    .line 73
    iget-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mListeners:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 76
    :cond_0
    iput-object v3, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mDialogEvent:Lcom/sec/ims/DialogEvent;

    .line 77
    return-void
.end method

.method public getDialogEvent()Lcom/sec/ims/DialogEvent;
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    invoke-virtual {v0}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->getLastDialogEvent()Lcom/sec/ims/DialogEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mDialogEvent:Lcom/sec/ims/DialogEvent;

    .line 118
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

    .line 120
    iget-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mDialogEvent:Lcom/sec/ims/DialogEvent;

    goto :goto_0
.end method

.method public getMSISDN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
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

    .prologue
    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;>;"
    iget-object v2, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mDialogEvent:Lcom/sec/ims/DialogEvent;

    if-nez v2, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->getDialogEvent()Lcom/sec/ims/DialogEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mDialogEvent:Lcom/sec/ims/DialogEvent;

    .line 104
    iget-object v2, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mDialogEvent:Lcom/sec/ims/DialogEvent;

    if-nez v2, :cond_1

    .line 111
    :cond_0
    return-object v1

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mDialogEvent:Lcom/sec/ims/DialogEvent;

    invoke-virtual {v2}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/Dialog;

    .line 108
    .local v0, "info":Lcom/sec/ims/Dialog;
    if-eqz v0, :cond_2

    .line 109
    new-instance v3, Lcom/android/incallui/remotecall/data/MultiEndDataIms6Wrapper;

    invoke-direct {v3, v0}, Lcom/android/incallui/remotecall/data/MultiEndDataIms6Wrapper;-><init>(Lcom/sec/ims/Dialog;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 61
    const-string v0, "MultiEndCallManagerIms6"

    const-string v1, "init()..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 62
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mContext:Landroid/content/Context;

    .line 63
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getIMSManagerWrapper()Lcom/android/incallui/service/ims/IMSManagerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    .line 65
    invoke-direct {p0}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->registerDialogEventListener()V

    .line 66
    return-void
.end method

.method public onNotifyRemoteCallStateChanged(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "remoteCallAdapterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;>;"
    const-string v2, "MultiEndCallManagerIms6"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotifyMultiStateChanged : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mDialogEvent:Lcom/sec/ims/DialogEvent;

    if-nez v1, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/remotecall/data/IRemoteCallManager$Listener;

    .line 138
    .local v0, "listener":Lcom/android/incallui/remotecall/data/IRemoteCallManager$Listener;
    invoke-interface {v0, p1}, Lcom/android/incallui/remotecall/data/IRemoteCallManager$Listener;->onNotifyRemoteCallStateChanged(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 136
    .end local v0    # "listener":Lcom/android/incallui/remotecall/data/IRemoteCallManager$Listener;
    :cond_0
    const-string v1, "not null"

    goto :goto_0

    .line 140
    :cond_1
    return-void
.end method

.method public removeListener(Lcom/android/incallui/remotecall/data/IRemoteCallManager$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/remotecall/data/IRemoteCallManager$Listener;

    .prologue
    .line 129
    if-eqz p1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 132
    :cond_0
    return-void
.end method

.method public requestCallPulling(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    .prologue
    .line 96
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getDialogID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->requestCallPulling(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public requestCallPulling(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "msisdn"    # Ljava/lang/String;
    .param p2, "dialogId"    # Ljava/lang/String;

    .prologue
    .line 87
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

    .line 89
    iget-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->transferCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method

.method public unregisterDialogEventListener()V
    .locals 2

    .prologue
    .line 149
    const-string v0, "ims service : unregisterDialogEventListener"

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    iget-object v1, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mImsDialogEventListener:Lcom/sec/ims/IDialogEventListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->unregisterDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V

    .line 151
    return-void
.end method
