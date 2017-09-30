.class public Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/internal/common/EnhancedFeatureInterface;


# static fields
.field private static final REFRESH_KEY_SET_CYCLE:J = 0x4d3f6400L

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;


# instance fields
.field private appId:Ljava/lang/String;

.field private enhancedChatChannel:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

.field private isInProgress:Z

.field private mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

.field private pushListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatPushListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->appId:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->registerFeature(ILcom/samsung/android/sdk/enhancedfeatures/internal/common/EnhancedFeatureInterface;)V

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->isInProgress:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->enhancedChatChannel:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->enhancedChatChannel:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->appId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatPushListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->pushListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatPushListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->convertMessageUsers(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private convertMessageUsers(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/User;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/User;

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/User;->getChatId()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/User;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v5, v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;-><init>(JLjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private generateNonCachedChatIds(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/MessageChatIdTable;->getMsisdnForChatid(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->getChatId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method private generateNonCachedMsisdn(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/MessageChatIdTable;->getChatidForMsisdn(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public static declared-synchronized getInstance(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;
    .locals 4

    const/4 v0, 0x0

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    const-string v2, "EnhancedFeatures instance null"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->isAnonymous()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "EnhancedChat is not available for anonymous type"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public addPushListener(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatPushListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->pushListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatPushListener;

    return-void
.end method

.method public getChatIdForMsisdn(JLjava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getChatIdForMsisdn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msisdns: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p3, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->generateNonCachedMsisdn(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cachedChatIdMsisdnList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newMsisndList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p4, p1, p2, v2, p5}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;->onSuccess(JLjava/util/ArrayList;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->appId:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$4;

    move-object v1, p0

    move-object v3, p4

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$4;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;Ljava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;J)V

    invoke-static {v6, v8, v7, v0, p5}, Lcom/samsung/android/sdk/ssf/message/MessageUser;->getDuid(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/sdk/ssf/SsfListener;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getEnhancedChatChannel(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/GetChatChannelListener;)V
    .locals 5

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeyManager;->getKeySet(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/KeySet;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$1;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/GetChatChannelListener;Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;)V

    if-nez v1, :cond_0

    const-string v1, "Invalid keySet."

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->appId:Ljava/lang/String;

    invoke-virtual {v1, v3, v0, v4, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/listener/KeyUpdateLister;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$2;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;Lcom/samsung/android/sdk/ssf/message/io/KeySet;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/GetChatChannelListener;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getMsisdnForChatId(JLjava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;Ljava/lang/Object;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMsisdnForChatId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", chatIdList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v9

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->generateNonCachedChatIds(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cachedChatIdMsisdnList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newChatIds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-interface {v0, p1, p2, v4, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;->onSuccess(JLjava/util/ArrayList;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v11, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->appId:Ljava/lang/String;

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$5;

    move-object v3, p0

    move-object/from16 v5, p4

    move-wide v6, p1

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$5;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;Ljava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;JLjava/lang/Object;)V

    move-object/from16 v0, p5

    invoke-static {v9, v11, v10, v2, v0}, Lcom/samsung/android/sdk/ssf/message/MessageUser;->getMsisdn(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/sdk/ssf/SsfListener;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getPublicKey(ILjava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/PublicKeyListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/PublicKeyListener;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getServiceId()I

    move-result v1

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$6;

    invoke-direct {v2, p0, p3, p1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$6;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/PublicKeyListener;I)V

    invoke-static {v0, v1, p2, v2, v3}, Lcom/samsung/android/sdk/ssf/message/MessageSecurity;->getPublicKey(Lcom/samsung/android/sdk/ssf/SsfClient;ILjava/util/ArrayList;Lcom/samsung/android/sdk/ssf/SsfListener;Ljava/lang/Object;)V

    return-void
.end method

.method public onDeregister()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "onDeregister..."

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeyManager;->removeKey()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->enhancedChatChannel:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->enhancedChatChannel:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->shutdown()Z

    iput-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->enhancedChatChannel:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    :cond_0
    sput-object v2, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/MessageChatIdTable;->clear()V

    return-void
.end method

.method public onPushReceive(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPushReceive. Data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->enhancedChatChannel:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->enhancedChatChannel:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->close()Z

    :cond_0
    const-string v0, "appData"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/PushEntry;->parse(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/PushEntry;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "onPushReceive. Invalid pushEntry."

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Push entry session id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/PushEntry;->chatroomID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->pushListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatPushListener;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$3;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$3;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/PushEntry;)V

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onRegister()V
    .locals 0

    return-void
.end method

.method public setConfig(Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->appId:Ljava/lang/String;

    return-void
.end method

.method public setPublicKey(ILcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/PublicKeySet;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/PublicKeyListener;)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/ssf/message/io/PublicKeySet;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/PublicKeySet;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/PublicKeySet;->getPublickey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/PublicKeySet;->getSignkey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/message/io/PublicKeySet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getServiceId()I

    move-result v2

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$7;

    invoke-direct {v3, p0, p3, p1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$7;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/PublicKeyListener;I)V

    invoke-static {v0, v2, v1, v3, v5}, Lcom/samsung/android/sdk/ssf/message/MessageSecurity;->setPublicKey(Lcom/samsung/android/sdk/ssf/SsfClient;ILcom/samsung/android/sdk/ssf/message/io/PublicKeySet;Lcom/samsung/android/sdk/ssf/SsfListener;Ljava/lang/Object;)V

    return-void
.end method
