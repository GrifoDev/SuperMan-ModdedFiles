.class public Lcom/samsung/android/sdk/ssf/message/network/ChannelRequestQueue;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mWaitingRequestList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/network/ChannelRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequestQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequestQueue;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequestQueue;->mWaitingRequestList:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public add(Lcom/samsung/android/sdk/ssf/message/network/ChannelRequest;)Z
    .locals 10

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string v0, "add. Invalid newRequest."

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequestQueue;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequestQueue;->mWaitingRequestList:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequestQueue;->mWaitingRequestList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequest;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequest;->getReqChannelMsg()Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequest;->getReqChannelMsg()Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getReqId()J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getReqId()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getType()Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    move-result-object v0

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getType()Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    move-result-object v4

    if-ne v0, v4, :cond_1

    monitor-exit v2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequestQueue;->mWaitingRequestList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public poll()Lcom/samsung/android/sdk/ssf/message/network/ChannelRequest;
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequestQueue;->mWaitingRequestList:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequestQueue;->mWaitingRequestList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequest;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;)Lcom/samsung/android/sdk/ssf/message/network/ChannelRequest;
    .locals 7

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequestQueue;->mWaitingRequestList:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequestQueue;->mWaitingRequestList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequest;->getReqChannelMsg()Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getReqId()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequest;->getReplyChannelMsgType()Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    move-result-object v3

    if-ne v3, p3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequestQueue;->mWaitingRequestList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public size()I
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequestQueue;->mWaitingRequestList:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequestQueue;->mWaitingRequestList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public timeout(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;)Lcom/samsung/android/sdk/ssf/message/network/ChannelRequest;
    .locals 7

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequestQueue;->mWaitingRequestList:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequestQueue;->mWaitingRequestList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequest;->getReqChannelMsg()Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getReqId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getType()Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    move-result-object v3

    if-ne v3, p3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequestQueue;->mWaitingRequestList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
