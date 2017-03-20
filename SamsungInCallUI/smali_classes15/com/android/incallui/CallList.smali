.class public Lcom/android/incallui/CallList;
.super Ljava/lang/Object;
.source "CallList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallList$CallUpdateListener;,
        Lcom/android/incallui/CallList$Listener;
    }
.end annotation


# static fields
.field private static final BLOCK_QUERY_TIMEOUT_MS:J = 0x3e8L

.field private static final DISCONNECTED_CALL_LONG_TIMEOUT_MS:I = 0x1388

.field private static final DISCONNECTED_CALL_MEDIUM_TIMEOUT_MS:I = 0x7d0

.field private static final DISCONNECTED_CALL_SAMSUNG_TIMEOUT_MS:I = 0xdac

.field private static final DISCONNECTED_CALL_SHORT_TIMEOUT_MS:I = 0xc8

.field private static final EVENT_DISCONNECTED_TIMEOUT:I = 0x1

.field private static final EVENT_NOTIFY_GENERIC_LISTENERS:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "CallList"

.field private static mPreviousCallType:I

.field private static mPreviousNumber:Ljava/lang/String;

.field private static mPreviousState:I

.field private static sInstance:Lcom/android/incallui/CallList;


# instance fields
.field private final SecNotUpdatingCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isUnansweredCall:Z

.field private final mCallById:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/incallui/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallByTelecomCall:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/telecom/Call;",
            "Lcom/android/incallui/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallTextReponsesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCallUpdateListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/CallList$CallUpdateListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCallVzwConfById:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/incallui/Call;",
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
            "Lcom/android/incallui/CallList$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mOutgoingCallPlusFlag:Z

.field private final mPendingDisconnectCalls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/Call;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/android/incallui/CallList;

    invoke-direct {v0}, Lcom/android/incallui/CallList;-><init>()V

    sput-object v0, Lcom/android/incallui/CallList;->sInstance:Lcom/android/incallui/CallList;

    .line 95
    const/4 v0, 0x2

    sput v0, Lcom/android/incallui/CallList;->mPreviousState:I

    .line 96
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/CallList;->mPreviousNumber:Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/CallList;->mPreviousCallType:I

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v0, 0x0

    const v1, 0x3f666666    # 0.9f

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v0, p0, Lcom/android/incallui/CallList;->isUnansweredCall:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/incallui/CallList;->mOutgoingCallPlusFlag:Z

    .line 69
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/CallList;->mCallVzwConfById:Ljava/util/concurrent/ConcurrentHashMap;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/CallList;->mCallByTelecomCall:Ljava/util/HashMap;

    .line 76
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallList;->mCallTextReponsesMap:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    .line 85
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallList;->mPendingDisconnectCalls:Ljava/util/Set;

    .line 93
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallList;->SecNotUpdatingCalls:Ljava/util/List;

    .line 1077
    new-instance v0, Lcom/android/incallui/CallList$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/CallList$1;-><init>(Lcom/android/incallui/CallList;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallList;
    .param p1, "x1"    # Lcom/android/incallui/Call;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->finishDisconnectedCall(Lcom/android/incallui/Call;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/CallList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallList;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/incallui/CallList;->notifyGenericListeners()V

    return-void
.end method

.method private addCallToVzwConfCallList(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 878
    const-string v0, "vzw_volte_ui_conf"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 888
    :goto_0
    return-void

    .line 881
    :cond_0
    const-string v0, "CallList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VZW_VOLTE_UI_CONF addCallToVzwConfCallList call:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    invoke-static {p1}, Lcom/android/incallui/CallList;->isChildCallOfConference(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 884
    const-string v0, "CallList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VZW_VOLTE_UI_CONF addOrRemoveCallToVzwConfCallList put call:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallVzwConfById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/CallList;->dumpVzwConfCallList()V

    goto :goto_0
.end method

.method private dumpCallList()V
    .locals 4

    .prologue
    .line 1160
    const-string v1, "CallList"

    const-string v2, "dumpCallList : "

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

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

    check-cast v0, Lcom/android/incallui/Call;

    .line 1162
    .local v0, "call":Lcom/android/incallui/Call;
    const-string v2, "CallList"

    invoke-virtual {v0}, Lcom/android/incallui/Call;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1165
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_0
    const-string v1, "vzw_volte_ui_conf"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1166
    invoke-direct {p0}, Lcom/android/incallui/CallList;->dumpVzwConfCallList()V

    .line 1168
    :cond_1
    return-void
.end method

.method private dumpVzwConfCallList()V
    .locals 4

    .prologue
    .line 1172
    const-string v1, "CallList"

    const-string v2, "dumpCallList mCallVzwConfById CallList -  - [ start ]"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    const-string v1, "vzw_volte_ui_conf"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1174
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallVzwConfById:Ljava/util/concurrent/ConcurrentHashMap;

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

    check-cast v0, Lcom/android/incallui/Call;

    .line 1175
    .local v0, "call":Lcom/android/incallui/Call;
    const-string v2, "CallList"

    invoke-virtual {v0}, Lcom/android/incallui/Call;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1178
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_0
    const-string v1, "CallList"

    const-string v2, "dumpCallList mCallVzwConfById CallList -  - [ end ]"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    return-void
.end method

.method private finishDisconnectedCall(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 822
    iget-object v0, p0, Lcom/android/incallui/CallList;->mPendingDisconnectCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/android/incallui/CallList;->mPendingDisconnectCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 825
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->setState(I)V

    .line 826
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/incallui/Call;)Z

    .line 827
    invoke-direct {p0}, Lcom/android/incallui/CallList;->notifyGenericListeners()V

    .line 828
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->removeNotUpdatingCall(Ljava/lang/String;)V

    .line 829
    return-void
.end method

.method private finishDisconnectedCallNotNotify(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/incallui/CallList;->mPendingDisconnectCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/android/incallui/CallList;->mPendingDisconnectCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 835
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->setState(I)V

    .line 836
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/incallui/Call;)Z

    .line 837
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->removeNotUpdatingCall(Ljava/lang/String;)V

    .line 838
    return-void
.end method

.method public static getInstance()Lcom/android/incallui/CallList;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/android/incallui/CallList;->sInstance:Lcom/android/incallui/CallList;

    return-object v0
.end method

.method private isCallDead(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 760
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    .line 761
    .local v0, "state":I
    const/4 v1, 0x2

    if-eq v1, v0, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isChildCallOfConference(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v0, 0x0

    .line 981
    const-string v1, "vzw_volte_ui_conf"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 987
    :cond_0
    :goto_0
    return v0

    .line 984
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getParentId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getPreviousParentId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 985
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private needToUpdate(Lcom/android/incallui/Call;)Z
    .locals 6
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v3, 0x1

    .line 248
    const/4 v2, 0x1

    .line 249
    .local v2, "update":Z
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    .line 250
    .local v0, "currentState":I
    const/16 v4, 0xd

    if-eq v0, v4, :cond_0

    const/4 v4, 0x6

    if-ne v0, v4, :cond_8

    :cond_0
    move v1, v3

    .line 251
    .local v1, "skipState":Z
    :goto_0
    if-eqz v1, :cond_1

    sget v4, Lcom/android/incallui/CallList;->mPreviousState:I

    if-ne v4, v0, :cond_1

    .line 252
    const/4 v2, 0x0

    .line 254
    :cond_1
    sget-object v4, Lcom/android/incallui/CallList;->mPreviousNumber:Ljava/lang/String;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/incallui/CallList;->mPreviousNumber:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 255
    const/4 v2, 0x1

    .line 258
    :cond_2
    sget v4, Lcom/android/incallui/CallList;->mPreviousCallType:I

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 259
    const/4 v2, 0x1

    .line 262
    :cond_3
    const-string v4, "feature_chn"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 263
    const/4 v2, 0x1

    .line 265
    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->isLocked()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 266
    const-string v4, "CallList"

    const-string v5, "needToUpdate: Skip update during UI Locked"

    invoke-static {v4, v5, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 267
    const/4 v2, 0x0

    .line 269
    :cond_5
    const/4 v3, 0x4

    if-eq v0, v3, :cond_6

    const/4 v3, 0x5

    if-ne v0, v3, :cond_7

    .line 270
    :cond_6
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/CallList;->getTextResponses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v4

    if-eq v3, v4, :cond_7

    .line 271
    const/4 v2, 0x1

    .line 273
    :cond_7
    const-string v3, "CallList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needToUpdate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return v2

    .line 250
    .end local v1    # "skipState":Z
    :cond_8
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyGenericListeners()V
    .locals 3

    .prologue
    .line 644
    iget-object v1, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallList$Listener;

    .line 645
    .local v0, "listener":Lcom/android/incallui/CallList$Listener;
    invoke-interface {v0, p0}, Lcom/android/incallui/CallList$Listener;->onCallListChange(Lcom/android/incallui/CallList;)V

    goto :goto_0

    .line 647
    .end local v0    # "listener":Lcom/android/incallui/CallList$Listener;
    :cond_0
    return-void
.end method

.method private notifyListenersOfDisconnect(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 650
    iget-object v1, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallList$Listener;

    .line 651
    .local v0, "listener":Lcom/android/incallui/CallList$Listener;
    invoke-interface {v0, p1}, Lcom/android/incallui/CallList$Listener;->onDisconnect(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 653
    .end local v0    # "listener":Lcom/android/incallui/CallList$Listener;
    :cond_0
    return-void
.end method

.method private onUpdateCall(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 627
    const-string v0, "CallList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    const-string v0, "CallList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdate - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->clearNotUpdatingCall()V

    .line 635
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallList;->updateCallTextMap(Lcom/android/incallui/Call;Ljava/util/List;)V

    .line 636
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallList;->notifyCallUpdateListeners(Lcom/android/incallui/Call;)V

    .line 637
    return-void
.end method

.method private removeCallFromVzwConfCallList(Lcom/android/incallui/Call;)V
    .locals 7
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 923
    const-string v3, "vzw_volte_ui_conf"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 945
    :goto_0
    return-void

    .line 926
    :cond_0
    const-string v3, "CallList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VZW_VOLTE_UI_CONF removeCallFromVzwConfCallList call:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    iget-object v3, p0, Lcom/android/incallui/CallList;->mCallVzwConfById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/Call;

    .line 928
    .local v2, "vzwConfCall":Lcom/android/incallui/Call;
    const/4 v1, 0x0

    .line 929
    .local v1, "ref":Z
    iget-object v4, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 930
    .local v0, "aliveCall":Lcom/android/incallui/Call;
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPreviousParentId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 931
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPreviousParentId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getPreviousParentId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 932
    const/4 v1, 0x1

    goto :goto_2

    .line 935
    .end local v0    # "aliveCall":Lcom/android/incallui/Call;
    :cond_3
    if-nez v1, :cond_1

    .line 936
    if-eqz v2, :cond_1

    .line 937
    iget-object v4, p0, Lcom/android/incallui/CallList;->mCallVzwConfById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 941
    .end local v1    # "ref":Z
    .end local v2    # "vzwConfCall":Lcom/android/incallui/Call;
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getCallCounts()I

    move-result v3

    if-nez v3, :cond_5

    .line 942
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->clearVzwConfCallList()V

    .line 944
    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/CallList;->dumpVzwConfCallList()V

    goto :goto_0
.end method

.method private removeDuplicatedCallFromVzwConfCallList(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 906
    const-string v1, "vzw_volte_ui_conf"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 907
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->hasConferenceCall()Z

    move-result v1

    if-nez v1, :cond_1

    .line 920
    :cond_0
    :goto_0
    return-void

    .line 911
    :cond_1
    const-string v1, "CallList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VZW_VOLTE_UI_CONF removeDuplicatedCallFromVzwConfCallList call:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallVzwConfById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 914
    .local v0, "vzwConfCall":Lcom/android/incallui/Call;
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_2

    .line 915
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 916
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 917
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallVzwConfById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 919
    .end local v0    # "vzwConfCall":Lcom/android/incallui/Call;
    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/CallList;->dumpVzwConfCallList()V

    goto :goto_0
.end method

.method private updateCallInMap(Lcom/android/incallui/Call;)Z
    .locals 6
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 661
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    const/4 v1, 0x0

    .line 664
    .local v1, "updated":Z
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 666
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 671
    iget-object v2, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 672
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallList;->getDelayForDisconnect(Lcom/android/incallui/Call;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 673
    iget-object v2, p0, Lcom/android/incallui/CallList;->mPendingDisconnectCalls:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 675
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallByTelecomCall:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    const/4 v1, 0x1

    .line 699
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return v1

    .line 679
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->isCallDead(Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 680
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallByTelecomCall:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    const-string v2, "vzw_volte_ui_conf"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 683
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->removeDuplicatedCallFromVzwConfCallList(Lcom/android/incallui/Call;)V

    .line 684
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->updateParentsIdForVzwConfCallList(Lcom/android/incallui/Call;)V

    .line 686
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 687
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 688
    const-string v2, "vzw_volte_ui_conf"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 689
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->addCallToVzwConfCallList(Lcom/android/incallui/Call;)V

    .line 691
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallByTelecomCall:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    const/4 v1, 0x1

    .line 694
    const-string v2, "vzw_volte_ui_conf"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 695
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->removeCallFromVzwConfCallList(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method private updateCallTextMap(Lcom/android/incallui/Call;Ljava/util/List;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/incallui/Call;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 748
    .local p2, "textResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->isCallDead(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 751
    if-eqz p2, :cond_0

    .line 752
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallTextReponsesMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 754
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallTextReponsesMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private updateParentsIdForVzwConfCallList(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 891
    const-string v1, "vzw_volte_ui_conf"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 903
    :cond_0
    return-void

    .line 894
    :cond_1
    const-string v1, "CallList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VZW_VOLTE_UI_CONF updateParentsIdForVzwConfCallList call:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 897
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallVzwConfById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 898
    .local v0, "vzwConfCall":Lcom/android/incallui/Call;
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPreviousParentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 899
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/incallui/Call;->setPreviousParentId(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/incallui/CallList$CallUpdateListener;

    .prologue
    .line 293
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 294
    .local v0, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/CallList$CallUpdateListener;>;"
    if-nez v0, :cond_0

    .line 295
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local v0    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/CallList$CallUpdateListener;>;"
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 296
    .restart local v0    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/CallList$CallUpdateListener;>;"
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    return-void
.end method

.method public addListener(Lcom/android/incallui/CallList$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/CallList$Listener;

    .prologue
    .line 315
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v0, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-interface {p1, p0}, Lcom/android/incallui/CallList$Listener;->onCallListChange(Lcom/android/incallui/CallList;)V

    .line 321
    return-void
.end method

.method public addNotUpdatingCall(Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/android/incallui/CallList;->SecNotUpdatingCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/android/incallui/CallList;->SecNotUpdatingCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1016
    :cond_0
    return-void
.end method

.method public clearDisconnectedTimeoutEvent()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 703
    const/4 v1, 0x0

    .line 704
    .local v1, "finished":Z
    iget-object v2, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 705
    const-string v2, "CallList"

    const-string v3, "clearDisconnectedTimeoutEvent"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget-object v2, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 707
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 708
    .local v0, "call":Lcom/android/incallui/Call;
    :goto_0
    if-eqz v0, :cond_0

    .line 709
    const-string v2, "CallList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearDisconnectedTimeoutEvent - id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 710
    const/4 v1, 0x1

    .line 712
    invoke-direct {p0, v0}, Lcom/android/incallui/CallList;->finishDisconnectedCallNotNotify(Lcom/android/incallui/Call;)V

    .line 713
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    goto :goto_0

    .line 716
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_0
    return v1
.end method

.method public clearNotUpdatingCall()V
    .locals 3

    .prologue
    .line 1039
    const-string v0, "CallList"

    const-string v1, "clearNotUpdatingCall"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1040
    iget-object v0, p0, Lcom/android/incallui/CallList;->SecNotUpdatingCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1041
    return-void
.end method

.method public clearOnDisconnect()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    .line 594
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

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

    check-cast v0, Lcom/android/incallui/Call;

    .line 595
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    .line 596
    .local v1, "state":I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    if-eqz v1, :cond_0

    if-eq v1, v5, :cond_0

    .line 600
    invoke-virtual {v0, v5}, Lcom/android/incallui/Call;->setState(I)V

    .line 601
    new-instance v3, Landroid/telecom/DisconnectCause;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/incallui/Call;->setDisconnectCause(Landroid/telecom/DisconnectCause;)V

    .line 602
    invoke-direct {p0, v0}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/incallui/Call;)Z

    goto :goto_0

    .line 605
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "state":I
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/CallList;->notifyGenericListeners()V

    .line 606
    return-void
.end method

.method public clearVzwConfCallList()V
    .locals 2

    .prologue
    .line 973
    const-string v0, "vzw_volte_ui_conf"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 978
    :goto_0
    return-void

    .line 976
    :cond_0
    const-string v0, "CallList"

    const-string v1, "VZW_VOLTE_UI_CONF clearVzwConfCallList"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallVzwConfById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_0
.end method

.method public delayToNotify()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 841
    iget-object v0, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xdac

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 845
    return-void
.end method

.method public emptyNotUpdatingCall()Z
    .locals 1

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/android/incallui/CallList;->SecNotUpdatingCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActiveCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method public getActiveOrBackgroundCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 427
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 430
    :cond_0
    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 401
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method public getBgCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;
    .locals 2
    .param p1, "ignore"    # Lcom/android/incallui/Call;

    .prologue
    .line 1264
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getSecondBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1265
    .local v0, "retval":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    move-object v1, v0

    .line 1270
    .end local v0    # "retval":Lcom/android/incallui/Call;
    .local v1, "retval":Lcom/android/incallui/Call;
    :goto_0
    return-object v1

    .line 1268
    .end local v1    # "retval":Lcom/android/incallui/Call;
    .restart local v0    # "retval":Lcom/android/incallui/Call;
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    move-object v1, v0

    .line 1270
    .end local v0    # "retval":Lcom/android/incallui/Call;
    .restart local v1    # "retval":Lcom/android/incallui/Call;
    goto :goto_0
.end method

.method public getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 495
    if-nez p1, :cond_0

    .line 496
    const/4 v0, 0x0

    .line 498
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    goto :goto_0
.end method

.method public getCallBySessionId(I)Lcom/android/incallui/Call;
    .locals 6
    .param p1, "sessionId"    # I

    .prologue
    .line 1361
    if-lez p1, :cond_1

    .line 1362
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 1363
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v2

    .line 1364
    .local v2, "time":J
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xb

    if-eq v4, v5, :cond_0

    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getSessionId(Lcom/android/incallui/Call;)I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 1369
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v2    # "time":J
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallByTelecomCall(Landroid/telecom/Call;)Lcom/android/incallui/Call;
    .locals 1
    .param p1, "telecomCall"    # Landroid/telecom/Call;

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallByTelecomCall:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    return-object v0
.end method

.method public getCallCounts()I
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public getCallFromTelecomCallId(Ljava/lang/String;)Lcom/android/incallui/Call;
    .locals 5
    .param p1, "telecomCallId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 1373
    if-nez p1, :cond_0

    move-object v0, v1

    .line 1391
    :goto_0
    return-object v0

    .line 1377
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 1378
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getTelecomCallId(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1379
    const-string v1, "CallList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTelecomCallId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getTelecomCallId(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1384
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 1385
    .restart local v0    # "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getConnectionCallId(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1386
    const-string v1, "CallList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConnectionCallId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getConnectionCallId(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_4
    move-object v0, v1

    .line 1391
    goto :goto_0
.end method

.method public getCallWithState(II)Lcom/android/incallui/Call;
    .locals 5
    .param p1, "state"    # I
    .param p2, "positionToFind"    # I

    .prologue
    .line 571
    const/4 v2, 0x0

    .line 572
    .local v2, "retval":Lcom/android/incallui/Call;
    const/4 v1, 0x0

    .line 573
    .local v1, "position":I
    iget-object v3, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

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

    check-cast v0, Lcom/android/incallui/Call;

    .line 574
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 575
    if-lt v1, p2, :cond_2

    .line 576
    move-object v2, v0

    .line 584
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_1
    return-object v2

    .line 579
    .restart local v0    # "call":Lcom/android/incallui/Call;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCdmaEarliestCall()Lcom/android/incallui/Call;
    .locals 9

    .prologue
    .line 527
    const/4 v1, 0x0

    .line 528
    .local v1, "retval":Lcom/android/incallui/Call;
    const-wide v2, 0x7fffffffffffffffL

    .line 529
    .local v2, "earliestTime":J
    iget-object v6, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 530
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v4

    .line 531
    .local v4, "time":J
    cmp-long v7, v4, v2

    if-gez v7, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 532
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/16 v8, 0x9

    if-eq v7, v8, :cond_0

    .line 533
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/16 v8, 0xa

    if-eq v7, v8, :cond_0

    .line 534
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/16 v8, 0xb

    if-eq v7, v8, :cond_0

    .line 535
    move-object v1, v0

    .line 536
    move-wide v2, v4

    goto :goto_0

    .line 539
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v4    # "time":J
    :cond_1
    return-object v1
.end method

.method public getCdmaEarliestCallForTime()Lcom/android/incallui/Call;
    .locals 9

    .prologue
    .line 543
    const/4 v1, 0x0

    .line 544
    .local v1, "retval":Lcom/android/incallui/Call;
    const-wide v2, 0x7fffffffffffffffL

    .line 545
    .local v2, "earliestTime":J
    iget-object v6, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 546
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v4

    .line 547
    .local v4, "time":J
    cmp-long v7, v4, v2

    if-gez v7, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 548
    move-object v1, v0

    .line 549
    move-wide v2, v4

    goto :goto_0

    .line 552
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v4    # "time":J
    :cond_1
    return-object v1
.end method

.method public getCdmaLatestCallFromId()Lcom/android/incallui/Call;
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 507
    const/4 v4, 0x0

    .line 508
    .local v4, "retval":Lcom/android/incallui/Call;
    const/4 v1, -0x1

    .line 509
    .local v1, "callId":I
    const/4 v3, 0x0

    .line 511
    .local v3, "latestId":I
    iget-object v6, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 512
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    .line 513
    .local v2, "latestCallId":Ljava/lang/String;
    const-string v7, "_"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 514
    .local v5, "splitStr":[Ljava/lang/String;
    array-length v7, v5

    if-le v7, v9, :cond_1

    .line 515
    aget-object v7, v5, v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 517
    :cond_1
    if-le v3, v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 518
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/16 v8, 0xb

    if-eq v7, v8, :cond_0

    .line 519
    move-object v4, v0

    .line 520
    move v1, v3

    goto :goto_0

    .line 523
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v2    # "latestCallId":Ljava/lang/String;
    .end local v5    # "splitStr":[Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method public getChildCallIdsForVzw()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 849
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 850
    .local v0, "childCallIdsForVzw":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallVzwConfById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/Call;

    .line 851
    .local v1, "currentCall":Lcom/android/incallui/Call;
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 853
    .end local v1    # "currentCall":Lcom/android/incallui/Call;
    :cond_0
    return-object v0
.end method

.method public getConferencedCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 783
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method public getConnectingOrConnectedCallCount()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1064
    const/4 v1, 0x0

    .line 1065
    .local v1, "count":I
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

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

    check-cast v0, Lcom/android/incallui/Call;

    .line 1066
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v3

    if-ne v3, v5, :cond_0

    .line 1067
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1070
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_1
    const-string v2, "CallList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectingOrConnectedCallCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1071
    return v1
.end method

.method public getDelayForDisconnect(Lcom/android/incallui/Call;)I
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 720
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 722
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallList;->getDelayForDisconnectInSecUi(Lcom/android/incallui/Call;)I

    move-result v0

    return v0

    .line 720
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDelayForDisconnectInSecUi(Lcom/android/incallui/Call;)I
    .locals 6
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v5, 0x1

    .line 1212
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-static {v2, p1, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1213
    const-string v2, "CallList"

    const-string v3, "getDelayForDisconnect: alive call is exist"

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1214
    const/4 v1, 0x0

    .line 1234
    :goto_0
    return v1

    .line 1216
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    .line 1218
    .local v0, "cause":I
    packed-switch v0, :pswitch_data_0

    .line 1230
    const/16 v1, 0xdac

    .line 1233
    .local v1, "delay":I
    :goto_1
    const-string v2, "CallList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDelayForDisconnect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1221
    .end local v1    # "delay":I
    :pswitch_0
    const/16 v2, 0xdac

    invoke-static {p1, v2}, Lcom/android/incallui/util/InCallUtils;->getDelayTimeForDisconnect(Lcom/android/incallui/Call;I)I

    move-result v1

    .line 1222
    .restart local v1    # "delay":I
    goto :goto_1

    .line 1227
    .end local v1    # "delay":I
    :pswitch_1
    const/4 v1, 0x0

    .line 1228
    .restart local v1    # "delay":I
    goto :goto_1

    .line 1218
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getDisconnectedCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 414
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method public getDisconnectedChildCallIdsForVzw()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 857
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 858
    .local v1, "disconnectedChildCallIdsForVzw":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

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

    check-cast v0, Lcom/android/incallui/Call;

    .line 859
    .local v0, "currentCall":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPreviousParentId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 860
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 863
    .end local v0    # "currentCall":Lcom/android/incallui/Call;
    :cond_1
    return-object v1
.end method

.method public getDisconnectingCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 418
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method public getDisconnectingOrDisconnectedCall()Lcom/android/incallui/Call;
    .locals 2

    .prologue
    .line 1238
    const/4 v0, 0x0

    .line 1240
    .local v0, "retval":Lcom/android/incallui/Call;
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1241
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 1245
    .end local v0    # "retval":Lcom/android/incallui/Call;
    .local v1, "retval":Lcom/android/incallui/Call;
    :goto_0
    return-object v1

    .line 1244
    .end local v1    # "retval":Lcom/android/incallui/Call;
    .restart local v0    # "retval":Lcom/android/incallui/Call;
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    move-object v1, v0

    .line 1245
    .end local v0    # "retval":Lcom/android/incallui/Call;
    .restart local v1    # "retval":Lcom/android/incallui/Call;
    goto :goto_0
.end method

.method public getFirstCall()Lcom/android/incallui/Call;
    .locals 2

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 444
    .local v0, "result":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 445
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 447
    :cond_0
    if-nez v0, :cond_1

    .line 448
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 450
    :cond_1
    if-nez v0, :cond_2

    .line 451
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    .line 453
    :cond_2
    if-nez v0, :cond_3

    .line 454
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 456
    :cond_3
    if-nez v0, :cond_4

    .line 457
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 459
    :cond_4
    return-object v0
.end method

.method public getFirstCallState()I
    .locals 3

    .prologue
    .line 1322
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1323
    .local v0, "firstCall":Lcom/android/incallui/Call;
    const/4 v1, 0x0

    .line 1324
    .local v1, "state":I
    if-eqz v0, :cond_0

    .line 1325
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    .line 1327
    :cond_0
    return v1
.end method

.method public getFirstCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;
    .locals 2
    .param p1, "ignore"    # Lcom/android/incallui/Call;

    .prologue
    .line 1395
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1396
    .local v0, "foreground":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    move-object v1, v0

    .line 1427
    :goto_0
    return-object v1

    .line 1399
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1400
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    move-object v1, v0

    .line 1401
    goto :goto_0

    .line 1403
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1404
    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    move-object v1, v0

    .line 1405
    goto :goto_0

    .line 1407
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1408
    if-eqz v0, :cond_3

    if-eq v0, p1, :cond_3

    move-object v1, v0

    .line 1409
    goto :goto_0

    .line 1411
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1412
    if-eqz v0, :cond_4

    if-eq v0, p1, :cond_4

    move-object v1, v0

    .line 1413
    goto :goto_0

    .line 1415
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getSecondBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1416
    if-eqz v0, :cond_5

    if-eq v0, p1, :cond_5

    move-object v1, v0

    .line 1417
    goto :goto_0

    .line 1419
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1420
    if-eqz v0, :cond_6

    if-eq v0, p1, :cond_6

    move-object v1, v0

    .line 1421
    goto :goto_0

    .line 1423
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1424
    if-eqz v0, :cond_7

    if-eq v0, p1, :cond_7

    move-object v1, v0

    .line 1425
    goto :goto_0

    .line 1427
    :cond_7
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFirstCallWithState(I)Lcom/android/incallui/Call;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 563
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/CallList;->getCallWithState(II)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method public getIncomingCall()Lcom/android/incallui/Call;
    .locals 2

    .prologue
    .line 434
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    .line 435
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 436
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    .line 439
    :cond_0
    return-object v0
.end method

.method public getIncomingOrActive()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 336
    .local v0, "retval":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 339
    :cond_0
    return-object v0
.end method

.method public getLiveCallCounts()I
    .locals 5

    .prologue
    .line 1053
    const/4 v1, 0x0

    .line 1054
    .local v1, "count":I
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

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

    check-cast v0, Lcom/android/incallui/Call;

    .line 1055
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    .line 1056
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1059
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_1
    const-string v2, "CallList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLiveCallCounts count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1060
    return v1
.end method

.method public getNumberOfConferencedCall()I
    .locals 5

    .prologue
    .line 787
    const/4 v1, 0x0

    .line 788
    .local v1, "retval":I
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

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

    check-cast v0, Lcom/android/incallui/Call;

    .line 789
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_0

    .line 790
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 793
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_1
    return v1
.end method

.method public getOutgoingCall()Lcom/android/incallui/Call;
    .locals 2

    .prologue
    .line 362
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    .line 363
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 364
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    .line 366
    :cond_0
    return-object v0
.end method

.method public getOutgoingCallPlusFlag()Z
    .locals 1

    .prologue
    .line 1187
    iget-boolean v0, p0, Lcom/android/incallui/CallList;->mOutgoingCallPlusFlag:Z

    return v0
.end method

.method public getOutgoingOrActive()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 344
    .local v0, "retval":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 347
    :cond_0
    return-object v0
.end method

.method public getPendingOutgoingCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 358
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method public getSecondActiveCall()Lcom/android/incallui/Call;
    .locals 2

    .prologue
    .line 374
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/CallList;->getCallWithState(II)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method public getSecondBackgroundCall()Lcom/android/incallui/Call;
    .locals 2

    .prologue
    .line 422
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/CallList;->getCallWithState(II)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method public getTextResponses(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallTextReponsesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getVideoUpgradeRequestCall()Lcom/android/incallui/Call;
    .locals 4

    .prologue
    .line 485
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 486
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 491
    .end local v0    # "call":Lcom/android/incallui/Call;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVzwConfCallById(Ljava/lang/String;)Lcom/android/incallui/Call;
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 871
    if-nez p1, :cond_0

    .line 872
    const/4 v0, 0x0

    .line 874
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallVzwConfById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    goto :goto_0
.end method

.method public getVzwConfCallCounts()I
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallVzwConfById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public getWaitingForAccountCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 354
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method public hasActiveCall()Z
    .locals 4

    .prologue
    .line 378
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 379
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 380
    const/4 v1, 0x1

    .line 383
    .end local v0    # "call":Lcom/android/incallui/Call;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasAllLiveCall()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1449
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/incallui/CallList;->getFirstCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1450
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 1453
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hasConferenceCall()Z
    .locals 3

    .prologue
    .line 774
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 775
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 776
    const/4 v1, 0x1

    .line 779
    .end local v0    # "call":Lcom/android/incallui/Call;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasHoldCall()Z
    .locals 4

    .prologue
    .line 405
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 406
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 407
    const/4 v1, 0x1

    .line 410
    .end local v0    # "call":Lcom/android/incallui/Call;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasImsConferenceParticipant()Z
    .locals 4

    .prologue
    .line 797
    const/4 v1, 0x0

    .line 798
    .local v1, "secCall":Lcom/android/incallui/SecCall;
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 799
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsConfParticipant(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 800
    const/4 v2, 0x1

    .line 803
    .end local v0    # "call":Lcom/android/incallui/Call;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasIncomingCall()Z
    .locals 3

    .prologue
    .line 1274
    const/4 v0, 0x0

    .line 1275
    .local v0, "hasCall":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 1276
    .local v1, "incomingCall":Lcom/android/incallui/Call;
    if-eqz v1, :cond_0

    .line 1277
    const/4 v0, 0x1

    .line 1279
    :cond_0
    return v0
.end method

.method public hasLiveCall()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 463
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 464
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 467
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hasLiveCallToDisplay()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1259
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOutgoingCall()Z
    .locals 4

    .prologue
    .line 765
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 766
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 767
    :cond_1
    const/4 v1, 0x1

    .line 770
    .end local v0    # "call":Lcom/android/incallui/Call;
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasTwoActiveCall()Z
    .locals 5

    .prologue
    .line 387
    const/4 v1, 0x0

    .line 388
    .local v1, "count":I
    invoke-direct {p0}, Lcom/android/incallui/CallList;->dumpCallList()V

    .line 389
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 390
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 391
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 392
    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    .line 393
    const/4 v2, 0x1

    .line 397
    .end local v0    # "call":Lcom/android/incallui/Call;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isActiveAllCalls()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 807
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getCallCounts()I

    move-result v3

    if-le v3, v2, :cond_1

    .line 808
    iget-object v3, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 809
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 815
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 813
    goto :goto_0
.end method

.method public isAlive(Lcom/android/incallui/Call;)Z
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x0

    .line 1203
    if-nez p1, :cond_1

    .line 1207
    :cond_0
    :goto_0
    return v1

    .line 1206
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    .line 1207
    .local v0, "state":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isCallDisconnectingOrDisconnected(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1283
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChildCallHasSameParentCall(Lcom/android/incallui/Call;)Z
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 961
    const/4 v0, 0x0

    .line 962
    .local v0, "ref":Z
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallVzwConfById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/Call;

    .line 963
    .local v1, "vzwConfCall":Lcom/android/incallui/Call;
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getPreviousParentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getPreviousParentId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 964
    const/4 v0, 0x1

    .line 968
    .end local v1    # "vzwConfCall":Lcom/android/incallui/Call;
    :cond_1
    const-string v2, "CallList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VZW_VOLTE_UI_CONF isChildCallHasSameParentCall call.getPreviousParentId():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getPreviousParentId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    return v0
.end method

.method public isConferenceCall()Z
    .locals 4

    .prologue
    .line 1309
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1310
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->isConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public isConferenceCall(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1314
    const/4 v0, 0x0

    .line 1315
    .local v0, "isConfCall":Z
    if-eqz p1, :cond_1

    .line 1316
    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isVolteGroupCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 1318
    :cond_1
    :goto_0
    return v0

    .line 1316
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIncomingMissedCall()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 1346
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1347
    .local v0, "disconnectedCall":Lcom/android/incallui/Call;
    const/4 v2, 0x2

    .line 1348
    .local v2, "mDisconnectCause":I
    const/4 v1, 0x0

    .line 1350
    .local v1, "isMissedCall":Z
    if-eqz v0, :cond_0

    .line 1351
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v2

    .line 1354
    :cond_0
    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    move v1, v3

    .line 1356
    :goto_0
    const-string v4, "CallList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isIncomingMissedCall : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1357
    return v1

    .line 1354
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIncomingRejectedCall()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 1331
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1332
    .local v0, "disconnectedCall":Lcom/android/incallui/Call;
    const/4 v2, 0x2

    .line 1333
    .local v2, "mDisconnectCause":I
    const/4 v1, 0x0

    .line 1335
    .local v1, "isRejectedCall":Z
    if-eqz v0, :cond_0

    .line 1336
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v2

    .line 1339
    :cond_0
    const/4 v4, 0x6

    if-ne v2, v4, :cond_1

    move v1, v3

    .line 1341
    :goto_0
    const-string v4, "CallList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isIncomingRejectedCall : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1342
    return v1

    .line 1339
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLiveCall(Lcom/android/incallui/Call;)Z
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v0, 0x0

    .line 1249
    if-nez p1, :cond_1

    .line 1255
    :cond_0
    :goto_0
    return v0

    .line 1250
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    .line 1251
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 1252
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 1255
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isMultipartyCall()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1296
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v6

    if-eqz v6, :cond_0

    move v0, v4

    .line 1297
    .local v0, "hasActiveCall":Z
    :goto_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v6

    if-eqz v6, :cond_1

    move v1, v4

    .line 1298
    .local v1, "hasBgCall":Z
    :goto_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getSecondBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v6

    if-eqz v6, :cond_2

    move v2, v4

    .line 1299
    .local v2, "hasSecondBgCall":Z
    :goto_2
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isCdmaMultipartyCall()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1305
    :goto_3
    return v5

    .end local v0    # "hasActiveCall":Z
    .end local v1    # "hasBgCall":Z
    .end local v2    # "hasSecondBgCall":Z
    :cond_0
    move v0, v5

    .line 1296
    goto :goto_0

    .restart local v0    # "hasActiveCall":Z
    :cond_1
    move v1, v5

    .line 1297
    goto :goto_1

    .restart local v1    # "hasBgCall":Z
    :cond_2
    move v2, v5

    .line 1298
    goto :goto_2

    .line 1303
    .restart local v2    # "hasSecondBgCall":Z
    :cond_3
    if-eqz v0, :cond_4

    if-nez v1, :cond_6

    :cond_4
    if-eqz v1, :cond_5

    if-nez v2, :cond_6

    :cond_5
    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    :cond_6
    move v3, v4

    .line 1304
    .local v3, "isMultipartyCall":Z
    :goto_4
    const-string v4, "CallList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isMultipartyCall: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v3

    .line 1305
    goto :goto_3

    .end local v3    # "isMultipartyCall":Z
    :cond_7
    move v3, v5

    .line 1303
    goto :goto_4
.end method

.method public isNotUpdatingCall(Ljava/lang/String;)Z
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/android/incallui/CallList;->SecNotUpdatingCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOffhook()Z
    .locals 2

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 472
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 473
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 475
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOnlyExistDisconnectConferenceCall()Z
    .locals 4

    .prologue
    .line 1287
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v2

    .line 1288
    .local v2, "fgCall":Lcom/android/incallui/Call;
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1289
    .local v0, "activeCall":Lcom/android/incallui/Call;
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 1291
    .local v1, "bgCall":Lcom/android/incallui/Call;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/incallui/CallList;->isCallDisconnectingOrDisconnected(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isUnansweredCall()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/android/incallui/CallList;->isUnansweredCall:Z

    return v0
.end method

.method public notifyCallUpdateListeners(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 278
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 279
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/CallList$CallUpdateListener;>;"
    if-eqz v1, :cond_0

    .line 280
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallList$CallUpdateListener;

    .line 281
    .local v0, "listener":Lcom/android/incallui/CallList$CallUpdateListener;
    invoke-interface {v0, p1}, Lcom/android/incallui/CallList$CallUpdateListener;->onCallChanged(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 284
    .end local v0    # "listener":Lcom/android/incallui/CallList$CallUpdateListener;
    :cond_0
    return-void
.end method

.method public notifyCallsOfDeviceRotation(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 997
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 1006
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/VideoUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1007
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telecom/InCallService$VideoCall;->setDeviceOrientation(I)V

    goto :goto_0

    .line 1010
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_1
    return-void
.end method

.method public onCallAdded(Landroid/telecom/Call;)V
    .locals 4
    .param p1, "telecomCall"    # Landroid/telecom/Call;

    .prologue
    .line 107
    const-string v1, "onCallAdded"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 108
    new-instance v0, Lcom/android/incallui/Call;

    invoke-direct {v0, p1}, Lcom/android/incallui/Call;-><init>(Landroid/telecom/Call;)V

    .line 109
    .local v0, "call":Lcom/android/incallui/Call;
    const-string v1, "CallList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallAdded: callState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 112
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/CallList;->onIncoming(Lcom/android/incallui/Call;Ljava/util/List;)V

    .line 119
    :goto_0
    invoke-virtual {v0}, Lcom/android/incallui/Call;->logCallInitiationType()V

    .line 120
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 121
    return-void

    .line 114
    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 115
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/incallui/util/SystemServiceUtils;->boostCPU(Landroid/content/Context;)V

    .line 117
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public onCallRemoved(Landroid/telecom/Call;)V
    .locals 3
    .param p1, "telecomCall"    # Landroid/telecom/Call;

    .prologue
    .line 124
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallByTelecomCall:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallByTelecomCall:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 127
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-direct {p0, v0}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing call not previously disconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/CallList;->updateCallTextMap(Lcom/android/incallui/Call;Ljava/util/List;)V

    .line 132
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_1
    return-void
.end method

.method public onChildNumberChange(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 234
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 235
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/CallList$CallUpdateListener;>;"
    if-eqz v1, :cond_0

    .line 236
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallList$CallUpdateListener;

    .line 237
    .local v0, "listener":Lcom/android/incallui/CallList$CallUpdateListener;
    invoke-interface {v0}, Lcom/android/incallui/CallList$CallUpdateListener;->onChildNumberChange()V

    goto :goto_0

    .line 240
    .end local v0    # "listener":Lcom/android/incallui/CallList$CallUpdateListener;
    :cond_0
    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 144
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const-string v0, "CallList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    sput v0, Lcom/android/incallui/CallList;->mPreviousState:I

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallList;->notifyCallUpdateListeners(Lcom/android/incallui/Call;)V

    .line 150
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->notifyListenersOfDisconnect(Lcom/android/incallui/Call;)V

    .line 152
    :cond_0
    const-string v0, "ims_callplus"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ims_crane"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getOutgoingCallPlusFlag()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/CallList;->isUnansweredCall:Z

    .line 159
    :cond_2
    :goto_0
    return-void

    .line 157
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallList;->isUnansweredCall:Z

    goto :goto_0
.end method

.method public onErrorDialogDismissed()V
    .locals 3

    .prologue
    .line 613
    iget-object v2, p0, Lcom/android/incallui/CallList;->mPendingDisconnectCalls:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 614
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/incallui/Call;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 615
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 616
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 617
    invoke-direct {p0, v0}, Lcom/android/incallui/CallList;->finishDisconnectedCall(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 619
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_0
    return-void
.end method

.method public onIncoming(Lcom/android/incallui/Call;Ljava/util/List;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/incallui/Call;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p2, "textMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const-string v1, "CallList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onIncoming - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/CallList;->updateCallTextMap(Lcom/android/incallui/Call;Ljava/util/List;)V

    .line 170
    iget-object v1, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallList$Listener;

    .line 171
    .local v0, "listener":Lcom/android/incallui/CallList$Listener;
    invoke-interface {v0, p1}, Lcom/android/incallui/CallList$Listener;->onIncomingCall(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 173
    .end local v0    # "listener":Lcom/android/incallui/CallList$Listener;
    :cond_1
    return-void
.end method

.method public onLastForwardedNumberChange(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 219
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 220
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/CallList$CallUpdateListener;>;"
    if-eqz v1, :cond_0

    .line 221
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallList$CallUpdateListener;

    .line 222
    .local v0, "listener":Lcom/android/incallui/CallList$CallUpdateListener;
    invoke-interface {v0}, Lcom/android/incallui/CallList$CallUpdateListener;->onLastForwardedNumberChange()V

    goto :goto_0

    .line 225
    .end local v0    # "listener":Lcom/android/incallui/CallList$CallUpdateListener;
    :cond_0
    return-void
.end method

.method public onSessionModificationStateChange(Lcom/android/incallui/Call;I)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "sessionModificationState"    # I

    .prologue
    .line 203
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 204
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/CallList$CallUpdateListener;>;"
    if-eqz v1, :cond_0

    .line 205
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallList$CallUpdateListener;

    .line 206
    .local v0, "listener":Lcom/android/incallui/CallList$CallUpdateListener;
    invoke-interface {v0, p2}, Lcom/android/incallui/CallList$CallUpdateListener;->onSessionModificationStateChange(I)V

    goto :goto_0

    .line 209
    .end local v0    # "listener":Lcom/android/incallui/CallList$CallUpdateListener;
    :cond_0
    return-void
.end method

.method public onUpdate(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 186
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->needToUpdate(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->onUpdateCall(Lcom/android/incallui/Call;)V

    .line 189
    invoke-direct {p0}, Lcom/android/incallui/CallList;->notifyGenericListeners()V

    .line 190
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    sput v0, Lcom/android/incallui/CallList;->mPreviousState:I

    .line 191
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/CallList;->mPreviousNumber:Ljava/lang/String;

    .line 192
    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v0

    sput v0, Lcom/android/incallui/CallList;->mPreviousCallType:I

    .line 194
    :cond_0
    return-void
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 176
    const-string v1, "CallList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpgradeToVideo call="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallList$Listener;

    .line 178
    .local v0, "listener":Lcom/android/incallui/CallList$Listener;
    invoke-interface {v0, p1}, Lcom/android/incallui/CallList$Listener;->onUpgradeToVideo(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 180
    .end local v0    # "listener":Lcom/android/incallui/CallList$Listener;
    :cond_0
    return-void
.end method

.method public removeCallFromVzwConfCallListByCallId(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 948
    const-string v1, "vzw_volte_ui_conf"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 958
    :goto_0
    return-void

    .line 951
    :cond_0
    const-string v1, "CallList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VZW_VOLTE_UI_CONF removeCallFromVzwConfCallListByCallId callId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallVzwConfById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 953
    .local v0, "vzwConfCall":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 954
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallVzwConfById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 957
    .end local v0    # "vzwConfCall":Lcom/android/incallui/Call;
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/CallList;->dumpVzwConfCallList()V

    goto :goto_0
.end method

.method public removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/incallui/CallList$CallUpdateListener;

    .prologue
    .line 308
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 309
    .local v0, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/CallList$CallUpdateListener;>;"
    if-eqz v0, :cond_0

    .line 310
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 312
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/incallui/CallList$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/CallList$Listener;

    .prologue
    .line 324
    if-eqz p1, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 327
    :cond_0
    return-void
.end method

.method public removeNotUpdatingCall(Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/incallui/CallList;->SecNotUpdatingCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/android/incallui/CallList;->SecNotUpdatingCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1032
    :cond_0
    return-void
.end method

.method public setOutgoingCallPlusFlag(Z)V
    .locals 0
    .param p1, "mOutgoingCallPlusFlag"    # Z

    .prologue
    .line 1198
    iput-boolean p1, p0, Lcom/android/incallui/CallList;->mOutgoingCallPlusFlag:Z

    .line 1199
    return-void
.end method

.method public updateNotUpdatingCalls(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1019
    if-nez p1, :cond_1

    .line 1026
    :cond_0
    return-void

    .line 1020
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1022
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v0

    .line 1023
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1024
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/incallui/CallList;->addNotUpdatingCall(Ljava/lang/String;)V

    .line 1023
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public updateVideoSeeeion()V
    .locals 5

    .prologue
    .line 1431
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/incallui/CallList;->getFirstCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v1

    .line 1432
    .local v1, "foreground":Lcom/android/incallui/Call;
    if-eqz v1, :cond_4

    .line 1433
    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1434
    invoke-virtual {v1}, Lcom/android/incallui/Call;->onForeground()V

    .line 1435
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 1436
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v1, v0}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1437
    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_2

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->isCallDisconnectingOrDisconnected(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1438
    :cond_2
    invoke-virtual {v0}, Lcom/android/incallui/Call;->onBackground()V

    goto :goto_0

    .line 1443
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_3
    invoke-virtual {v1}, Lcom/android/incallui/Call;->onBackground()V

    .line 1446
    :cond_4
    return-void
.end method
