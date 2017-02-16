.class public Lcom/android/incallui/remotecall/remotecall/RemoteCallList;
.super Ljava/lang/Object;
.source "RemoteCallList.java"


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

    .prologue
    .line 25
    new-instance v0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    invoke-direct {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;-><init>()V

    sput-object v0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->sInstance:Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mListeners:Ljava/util/Set;

    .line 354
    new-instance v0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList$2;-><init>(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mHandler:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/remotecall/remotecall/RemoteCallList;
    .param p1, "x1"    # Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->finishDisconnectedCall(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    return-void
.end method

.method private changeStatetoDisconnected(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    .prologue
    .line 214
    const-string v1, "RemoteCallList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeStatetoDisconnected call = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->setState(I)V

    .line 217
    iget-object v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 218
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xdac

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 219
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

    .prologue
    .line 206
    .local p1, "currentCallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 207
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    invoke-direct {p0, v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->changeStatetoDisconnected(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    goto :goto_0

    .line 211
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private clearListeners()V
    .locals 2

    .prologue
    .line 146
    const-string v0, "RemoteCallList"

    const-string v1, "clearListeners()..."

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mListeners:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 149
    :cond_0
    return-void
.end method

.method private dumpCallList()V
    .locals 5

    .prologue
    .line 165
    const-string v1, "RemoteCallList"

    const-string v2, "dumpCallList()..."

    invoke-static {v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    .line 167
    .local v0, "call":Lcom/android/incallui/remotecall/remotecall/RemoteCall;
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

    .line 168
    const-string v2, "RemoteCallList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    .end local v0    # "call":Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    :cond_0
    return-void
.end method

.method private finishDisconnectedCall(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    .prologue
    .line 231
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

    .line 232
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->setState(I)V

    .line 233
    invoke-virtual {p0, p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->onCallRemoved(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    .line 234
    return-void
.end method

.method private finishRemoteCall()V
    .locals 3

    .prologue
    .line 173
    const-string v0, "RemoteCallList"

    const-string v1, "finishRemoteCall..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 174
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->clearCallList()V

    .line 175
    invoke-direct {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->notifyRemoteCallEnded()V

    .line 176
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->clearDisconnectedTimeoutEvent()V

    .line 177
    invoke-direct {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->clearListeners()V

    .line 178
    return-void
.end method

.method private getCallCountWithState(I)I
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 72
    const/4 v1, 0x0

    .line 73
    .local v1, "count":I
    iget-object v2, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    .line 74
    .local v0, "call":Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getState()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "call":Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    :cond_1
    return v1
.end method

.method private getCallToDisplay(Lcom/android/incallui/remotecall/remotecall/RemoteCall;Z)Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    .locals 2
    .param p1, "ignore"    # Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    .param p2, "skipDisconnected"    # Z

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getActiveCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    .line 262
    .local v0, "retval":Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    move-object v1, v0

    .line 282
    :goto_0
    return-object v1

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getHoldCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    move-object v1, v0

    .line 269
    goto :goto_0

    .line 275
    :cond_1
    if-nez p2, :cond_2

    .line 276
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getDisconnectedCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    move-object v1, v0

    .line 278
    goto :goto_0

    .line 282
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCallWithState(II)Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    .locals 5
    .param p1, "state"    # I
    .param p2, "positionToFind"    # I

    .prologue
    .line 55
    const/4 v2, 0x0

    .line 56
    .local v2, "retval":Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    const/4 v1, 0x0

    .line 57
    .local v1, "position":I
    iget-object v3, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    .line 58
    .local v0, "call":Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getState()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 59
    if-lt v1, p2, :cond_2

    .line 60
    move-object v2, v0

    .line 68
    .end local v0    # "call":Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    :cond_1
    return-object v2

    .line 63
    .restart local v0    # "call":Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->sInstance:Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    return-object v0
.end method

.method private notifyListeners()V
    .locals 3

    .prologue
    .line 152
    iget-object v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList$Listener;

    .line 153
    .local v0, "listener":Lcom/android/incallui/remotecall/remotecall/RemoteCallList$Listener;
    invoke-interface {v0, p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList$Listener;->onCallListChange(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V

    goto :goto_0

    .line 155
    .end local v0    # "listener":Lcom/android/incallui/remotecall/remotecall/RemoteCallList$Listener;
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->dumpCallList()V

    .line 156
    return-void
.end method

.method private notifyRemoteCallEnded()V
    .locals 3

    .prologue
    .line 159
    iget-object v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList$Listener;

    .line 160
    .local v0, "listener":Lcom/android/incallui/remotecall/remotecall/RemoteCallList$Listener;
    invoke-interface {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList$Listener;->onCallEnded()V

    goto :goto_0

    .line 162
    .end local v0    # "listener":Lcom/android/incallui/remotecall/remotecall/RemoteCallList$Listener;
    :cond_0
    return-void
.end method

.method private onDisconnect()V
    .locals 3

    .prologue
    .line 222
    const-string v1, "RemoteCallList"

    const-string v2, "onDisconnect()..."

    invoke-static {v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    .line 225
    .local v0, "call":Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    invoke-direct {p0, v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->changeStatetoDisconnected(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    goto :goto_0

    .line 227
    .end local v0    # "call":Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->notifyListeners()V

    .line 228
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/incallui/remotecall/remotecall/RemoteCallList$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/incallui/remotecall/remotecall/RemoteCallList$Listener;

    .prologue
    .line 126
    const-string v0, "RemoteCallList"

    const-string v1, "addListener()..."

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->clearCallList()V

    .line 302
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->clearDisconnectedTimeoutEvent()V

    .line 303
    invoke-direct {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->clearListeners()V

    .line 304
    return-void
.end method

.method public clearCallList()V
    .locals 2

    .prologue
    .line 140
    const-string v0, "RemoteCallList"

    const-string v1, "clearCallList()..."

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 143
    :cond_0
    return-void
.end method

.method public clearDisconnectedTimeoutEvent()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 237
    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    const-string v0, "clearDisconnectedTimeoutEvent"

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 241
    :cond_0
    return-void
.end method

.method public getActiveCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getCallWithState(II)Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getFirstCallWithState(I)Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    return-object v0
.end method

.method public getCallById(Ljava/lang/String;)Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    return-object v0
.end method

.method public getCallCounts()I
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public getDisconnectedCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    .locals 2

    .prologue
    .line 51
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getCallWithState(II)Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    return-object v0
.end method

.method public getFirstCallWithState(I)Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getCallWithState(II)Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    return-object v0
.end method

.method public getHoldCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    .locals 2

    .prologue
    .line 43
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getCallWithState(II)Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    return-object v0
.end method

.method public getHoldCallCount()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getCallCountWithState(I)I

    move-result v0

    return v0
.end method

.method public getIncomingCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    .locals 2

    .prologue
    .line 324
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getFirstCallWithState(I)Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    .line 325
    .local v0, "call":Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    if-nez v0, :cond_0

    .line 326
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getFirstCallWithState(I)Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    .line 329
    :cond_0
    return-object v0
.end method

.method public getOutgoingCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    .locals 2

    .prologue
    .line 333
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getFirstCallWithState(I)Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    .line 334
    .local v0, "call":Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    if-nez v0, :cond_0

    .line 335
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getFirstCallWithState(I)Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    .line 337
    :cond_0
    return-object v0
.end method

.method public getPendingOutgoingCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    .locals 1

    .prologue
    .line 320
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getFirstCallWithState(I)Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    .locals 2

    .prologue
    .line 248
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getCallToDisplay(Lcom/android/incallui/remotecall/remotecall/RemoteCall;Z)Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    return-object v0
.end method

.method public getSecondBackgroundCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    .locals 2

    .prologue
    .line 316
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getCallWithState(II)Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    .locals 2

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getPrimaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getCallToDisplay(Lcom/android/incallui/remotecall/remotecall/RemoteCall;Z)Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    return-object v0
.end method

.method public hasLiveCallToDisplay()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 256
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

    .prologue
    .local p1, "remoteCallAdapterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;>;"
    const/4 v1, 0x1

    .line 286
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 287
    :cond_0
    const-string v2, "RemoteCallList"

    const-string v3, "remoteCallAdapterList == null or size == 0"

    invoke-static {v2, v3, v1}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 297
    :cond_1
    :goto_0
    return v1

    .line 291
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;

    .line 292
    .local v0, "adapter":Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;
    if-eqz v0, :cond_3

    .line 293
    const-string v2, "RemoteCallList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IRemoteCallAdapter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;->getDialogID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 294
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMultipartyCall()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 341
    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getActiveCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v6

    if-eqz v6, :cond_3

    move v0, v4

    .line 342
    .local v0, "hasActiveCall":Z
    :goto_0
    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getBackgroundCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v6

    if-eqz v6, :cond_4

    move v1, v4

    .line 343
    .local v1, "hasBgCall":Z
    :goto_1
    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getSecondBackgroundCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v6

    if-eqz v6, :cond_5

    move v2, v4

    .line 345
    .local v2, "hasSecondBgCall":Z
    :goto_2
    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    if-nez v2, :cond_2

    :cond_1
    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    :cond_2
    move v3, v4

    .line 346
    .local v3, "isMultipartyCall":Z
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMultipartyCall: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    return v3

    .end local v0    # "hasActiveCall":Z
    .end local v1    # "hasBgCall":Z
    .end local v2    # "hasSecondBgCall":Z
    .end local v3    # "isMultipartyCall":Z
    :cond_3
    move v0, v5

    .line 341
    goto :goto_0

    .restart local v0    # "hasActiveCall":Z
    :cond_4
    move v1, v5

    .line 342
    goto :goto_1

    .restart local v1    # "hasBgCall":Z
    :cond_5
    move v2, v5

    .line 343
    goto :goto_2

    .restart local v2    # "hasSecondBgCall":Z
    :cond_6
    move v3, v5

    .line 345
    goto :goto_3
.end method

.method public onCallAdded(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string v1, "RemoteCallList"

    const-string v2, "onCallAdded"

    invoke-static {v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isLive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getDialogID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 89
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/incallui/remotecall/remotecall/RemoteCallList$1;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList$1;-><init>(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->notifyListeners()V

    goto :goto_0
.end method

.method public onCallRemoved(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getDialogID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->onCallRemoved(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCallRemoved(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 107
    if-nez p1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 108
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

    .line 110
    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getCallCounts()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->finishRemoteCall()V

    goto :goto_0

    .line 113
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->notifyListeners()V

    goto :goto_0
.end method

.method public onCallUpdated(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    .prologue
    const/4 v3, 0x1

    .line 117
    if-nez p1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 118
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

    .line 119
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getState()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->clearDisconnectedTimeoutEvent()V

    .line 122
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

    .prologue
    .line 181
    .local p1, "remoteCallAdapterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;>;"
    const-string v3, "RemoteCallList"

    const-string v4, "receiveRemoteCallsDatafromIMS()..."

    invoke-static {v3, v4}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0, p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->isDisconnect(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    const-string v3, "RemoteCallList"

    const-string v4, "call is disconnected"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 185
    invoke-direct {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->onDisconnect()V

    .line 203
    :goto_0
    return-void

    .line 189
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v0, "currentCallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;

    .line 192
    .local v2, "remoteCallAdapter":Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;
    invoke-interface {v2}, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;->getDialogID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-interface {v2}, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;->getDialogID()Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "dialogID":Ljava/lang/String;
    const-string v3, "RemoteCallList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dialogID()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v3, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 197
    new-instance v3, Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    invoke-direct {v3, v2}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;-><init>(Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;)V

    goto :goto_1

    .line 199
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    invoke-virtual {v3, v2}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->checkUpdate(Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;)V

    goto :goto_1

    .line 202
    .end local v1    # "dialogID":Ljava/lang/String;
    .end local v2    # "remoteCallAdapter":Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->checkDisconnectedCall(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public removeListener(Lcom/android/incallui/remotecall/remotecall/RemoteCallList$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/incallui/remotecall/remotecall/RemoteCallList$Listener;

    .prologue
    .line 133
    const-string v0, "RemoteCallList"

    const-string v1, "removeListener()..."

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    if-eqz p1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 137
    :cond_0
    return-void
.end method
