.class public Lcom/android/incallui/remotecall/remotecall/RemoteCallList;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/remotecall/remotecall/RemoteCallList$Listener;
    }
.end annotation


# static fields
.field private static final DISCONNECTED_CALL_SAMSUNG_TIMEOUT_MS:I = 0xdac

.field private static final EVENT_DISCONNECTED_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RemoteCallList"

.field private static sInstance:Lcom/android/incallui/remotecall/remotecall/RemoteCallList;


# instance fields
.field private final mCallById:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/incallui/remotecall/remotecall/RemoteCall;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/remotecall/remotecall/RemoteCallList$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    invoke-direct {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;-><init>()V

    sput-object v0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->sInstance:Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mListeners:Ljava/util/Set;

    new-instance v0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList$2;-><init>(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->finishDisconnectedCall(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    return-void
.end method

.method private changeStatetoDisconnected(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 4

    const-string v0, "RemoteCallList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeStatetoDisconnected call = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->setState(I)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xdac

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private checkDisconnectedCall(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    invoke-direct {p0, v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->changeStatetoDisconnected(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private clearListeners()V
    .locals 2

    const-string v0, "RemoteCallList"

    const-string v1, "clearListeners()..."

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mListeners:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_0
    return-void
.end method

.method private dumpCallList()V
    .locals 5

    const-string v0, "RemoteCallList"

    const-string v1, "dumpCallList()..."

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    const-string v2, "RemoteCallList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dialogID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getDialogID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/remotecall/remotecall/RemoteCall$State;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "RemoteCallList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private finishDisconnectedCall(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 3

    const-string v0, "RemoteCallList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishDisconnectedCall call ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->setState(I)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->onCallRemoved(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    return-void
.end method

.method private finishRemoteCall()V
    .locals 3

    const-string v0, "RemoteCallList"

    const-string v1, "finishRemoteCall..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->clearCallList()V

    invoke-direct {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->notifyRemoteCallEnded()V

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->clearDisconnectedTimeoutEvent()V

    invoke-direct {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->clearListeners()V

    return-void
.end method

.method private getCallCountWithState(I)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getState()I

    move-result v0

    if-ne v0, p1, :cond_1

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private getCallToDisplay(Lcom/android/incallui/remotecall/remotecall/RemoteCall;Z)Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getActiveCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getHoldCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_0

    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getDisconnectedCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    if-eqz v0, :cond_3

    if-ne v0, p1, :cond_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCallWithState(II)Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getState()I

    move-result v4

    if-ne v4, p1, :cond_1

    if-lt v1, p2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method public static getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;
    .locals 1

    sget-object v0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->sInstance:Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    return-object v0
.end method

.method private notifyListeners()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList$Listener;

    invoke-interface {v0, p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList$Listener;->onCallListChange(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->dumpCallList()V

    return-void
.end method

.method private notifyRemoteCallEnded()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList$Listener;

    invoke-interface {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList$Listener;->onCallEnded()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onDisconnect()V
    .locals 2

    const-string v0, "RemoteCallList"

    const-string v1, "onDisconnect()..."

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    invoke-direct {p0, v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->changeStatetoDisconnected(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->notifyListeners()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/incallui/remotecall/remotecall/RemoteCallList$Listener;)V
    .locals 2

    const-string v0, "RemoteCallList"

    const-string v1, "addListener()..."

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->clearCallList()V

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->clearDisconnectedTimeoutEvent()V

    invoke-direct {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->clearListeners()V

    return-void
.end method

.method public clearCallList()V
    .locals 2

    const-string v0, "RemoteCallList"

    const-string v1, "clearCallList()..."

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_0
    return-void
.end method

.method public clearDisconnectedTimeoutEvent()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "clearDisconnectedTimeoutEvent"

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public getActiveCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getCallWithState(II)Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getFirstCallWithState(I)Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    return-object v0
.end method

.method public getCallById(Ljava/lang/String;)Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    return-object v0
.end method

.method public getCallCounts()I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public getDisconnectedCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    .locals 2

    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getCallWithState(II)Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    return-object v0
.end method

.method public getFirstCallWithState(I)Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getCallWithState(II)Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    return-object v0
.end method

.method public getHoldCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getCallWithState(II)Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    return-object v0
.end method

.method public getHoldCallCount()I
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getCallCountWithState(I)I

    move-result v0

    return v0
.end method

.method public getIncomingCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getFirstCallWithState(I)Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getFirstCallWithState(I)Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOutgoingCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getFirstCallWithState(I)Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getFirstCallWithState(I)Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPendingOutgoingCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    .locals 1

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getFirstCallWithState(I)Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getCallToDisplay(Lcom/android/incallui/remotecall/remotecall/RemoteCall;Z)Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    return-object v0
.end method

.method public getSecondBackgroundCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getCallWithState(II)Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getPrimaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getCallToDisplay(Lcom/android/incallui/remotecall/remotecall/RemoteCall;Z)Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    return-object v0
.end method

.method public hasConferenceCall()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getActiveCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getActiveCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getBackgroundCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getBackgroundCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getSecondBackgroundCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getSecondBackgroundCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v1

    :goto_2
    if-nez v0, :cond_0

    if-nez v3, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remotecall hasConferenceCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v4, v2

    goto :goto_2
.end method

.method public hasLiveCallToDisplay()Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getCallToDisplay(Lcom/android/incallui/remotecall/remotecall/RemoteCall;Z)Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisconnect(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "RemoteCallList"

    const-string v2, "remoteCallAdapterList == null or size == 0"

    invoke-static {v0, v2, v1}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;

    if-eqz v0, :cond_2

    const-string v2, "RemoteCallList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IRemoteCallAdapter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;->getDialogID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isMultipartyCall()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getActiveCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getBackgroundCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v3

    if-eqz v3, :cond_4

    move v3, v1

    :goto_1
    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getSecondBackgroundCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v4

    if-eqz v4, :cond_5

    move v4, v1

    :goto_2
    if-eqz v0, :cond_0

    if-nez v3, :cond_2

    :cond_0
    if-eqz v3, :cond_1

    if-nez v4, :cond_2

    :cond_1
    if-eqz v0, :cond_6

    if-eqz v4, :cond_6

    :cond_2
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMultipartyCall: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v3, v2

    goto :goto_1

    :cond_5
    move v4, v2

    goto :goto_2

    :cond_6
    move v1, v2

    goto :goto_3
.end method

.method public onCallAdded(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "RemoteCallList"

    const-string v1, "onCallAdded"

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isLive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getDialogID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/incallui/remotecall/remotecall/RemoteCallList$1;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList$1;-><init>(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->notifyListeners()V

    goto :goto_0
.end method

.method public onCallRemoved(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getDialogID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->onCallRemoved(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCallRemoved(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "RemoteCallList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallRemoved, key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getCallCounts()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->finishRemoteCall()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->notifyListeners()V

    goto :goto_0
.end method

.method public onCallUpdated(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 4

    const/4 v3, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "RemoteCallList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallUpdated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getState()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->clearDisconnectedTimeoutEvent()V

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->notifyListeners()V

    goto :goto_0
.end method

.method public receiveRemoteCallData(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;",
            ">;)V"
        }
    .end annotation

    const-string v0, "RemoteCallList"

    const-string v1, "receiveRemoteCallsDatafromIMS()..."

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->isDisconnect(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RemoteCallList"

    const-string v1, "call is disconnected"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->onDisconnect()V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;

    invoke-interface {v0}, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;->getDialogID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;->getDialogID()Ljava/lang/String;

    move-result-object v1

    const-string v4, "RemoteCallList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dialogID()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v1, Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    invoke-direct {v1, v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;-><init>(Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    invoke-virtual {v1, v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->checkUpdate(Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->checkDisconnectedCall(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public removeListener(Lcom/android/incallui/remotecall/remotecall/RemoteCallList$Listener;)V
    .locals 2

    const-string v0, "RemoteCallList"

    const-string v1, "removeListener()..."

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
