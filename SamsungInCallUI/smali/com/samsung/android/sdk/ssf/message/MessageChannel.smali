.class public Lcom/samsung/android/sdk/ssf/message/MessageChannel;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mChannelSocket:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

.field private mChatId:J

.field private mClient:Lcom/samsung/android/sdk/ssf/SsfClient;

.field private final messageServerProtocol:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSF "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/ssf/message/MessageChannel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/message/io/KeySet;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/account/AuthorizationListener;)V
    .locals 8

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChannelSocket:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageChannel, messageProxy: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/SsfClient;->getPrimaryMessageProxy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", secondary: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/SsfClient;->getSecondaryMessageProxy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/SsfClient;->getPrimaryMessageProxy()Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MessageChannel, IP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v3, v2, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/SsfClient;->getSecondaryMessageProxy()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/SsfClient;->getSecondaryMessageProxy()Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v4, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    move-object v4, v0

    :goto_1
    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    invoke-direct {v0, p3}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->messageServerProtocol:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/KeySet;->getChatid()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChatId:J

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    iget-object v5, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->messageServerProtocol:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;-><init>(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/message/io/KeySet;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/account/AuthorizationListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChannelSocket:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    return-void

    :catch_0
    move-exception v0

    move-object v3, v1

    :goto_2
    sget-object v2, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object v4, v1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final changeMessageRoomMsgLifeTime(JJIILandroid/os/Bundle;)V
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request ID is Invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message ID is Invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gez p5, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " New Message Life time is Invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->messageServerProtocol:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChannelSocket:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    const/4 v6, 0x0

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->sendChangeChatroomMetaRequest(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;JJLjava/lang/String;IILandroid/os/Bundle;)V

    return-void
.end method

.method public final changeMessageRoomOwner(JJJILandroid/os/Bundle;)V
    .locals 15

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->messageServerProtocol:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChannelSocket:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChatId:J

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move/from16 v12, p7

    move-object/from16 v13, p8

    invoke-virtual/range {v1 .. v13}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->sendChangeOwnerRequest(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Lcom/samsung/android/sdk/ssf/SsfClient;JJJJILandroid/os/Bundle;)V

    return-void
.end method

.method public final changeMessageRoomTitle(JJLjava/lang/String;ILandroid/os/Bundle;)V
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request ID is Invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message ID is Invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty Title has been given for Chat Room"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->messageServerProtocol:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChannelSocket:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    const/4 v7, -0x1

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->sendChangeChatroomMetaRequest(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;JJLjava/lang/String;IILandroid/os/Bundle;)V

    return-void
.end method

.method public final close()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChannelSocket:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChannelSocket:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->close()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final createMessageRoom(JLcom/samsung/android/sdk/ssf/message/io/User;ILandroid/os/Bundle;)V
    .locals 15

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->messageServerProtocol:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    iget-object v4, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChannelSocket:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    iget-object v5, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    iget-wide v6, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChatId:J

    sget-object v10, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;->SINGLE:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    const/4 v12, 0x0

    move-wide/from16 v8, p1

    move/from16 v13, p4

    move-object/from16 v14, p5

    invoke-virtual/range {v3 .. v14}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->sendCreateChatroomRequest(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Lcom/samsung/android/sdk/ssf/SsfClient;JJLcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;Ljava/util/ArrayList;Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method public final createMessageRoom(JLjava/util/ArrayList;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/User;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->messageServerProtocol:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChannelSocket:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChatId:J

    sget-object v8, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;->GROUP:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    move-wide v6, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    invoke-virtual/range {v1 .. v12}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->sendCreateChatroomRequest(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Lcom/samsung/android/sdk/ssf/SsfClient;JJLcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;Ljava/util/ArrayList;Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method public final createMonoGroup(JILandroid/os/Bundle;)V
    .locals 13

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->messageServerProtocol:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChannelSocket:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChatId:J

    sget-object v8, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;->MONO_GROUP:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide v6, p1

    move/from16 v11, p3

    move-object/from16 v12, p4

    invoke-virtual/range {v1 .. v12}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->sendCreateChatroomRequest(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Lcom/samsung/android/sdk/ssf/SsfClient;JJLcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;Ljava/util/ArrayList;Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method public final destroyMessageRoom(JJILandroid/os/Bundle;)V
    .locals 9

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request ID is Invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmp-long v0, p3, v2

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message ID is Invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->messageServerProtocol:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChannelSocket:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->sendDestroyChatroomRequest(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;JJILandroid/os/Bundle;)V

    return-void
.end method

.method public final enterMessageRoom(JJZILandroid/os/Bundle;)V
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request ID is Invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message ID is Invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->messageServerProtocol:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChannelSocket:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    const/4 v6, 0x0

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->sendAllowChatRequest(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;JJZZILandroid/os/Bundle;)V

    return-void
.end method

.method public final expelMessageRoomMember(JJLjava/util/ArrayList;ILandroid/os/Bundle;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->messageServerProtocol:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChannelSocket:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChatId:J

    move-wide v6, p1

    move-wide/from16 v8, p3

    move-object/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v1 .. v12}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->sendRemoveMemberRequest(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Lcom/samsung/android/sdk/ssf/SsfClient;JJJLjava/util/ArrayList;ILandroid/os/Bundle;)V

    return-void
.end method

.method public final getAllUnreadMessages(JII)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->messageServerProtocol:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChannelSocket:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->sendGetAllUnreadMessageRequest(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;JII)V

    return-void
.end method

.method public final inviteUsersToMessageRoom(JJLjava/util/ArrayList;ILandroid/os/Bundle;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/User;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->messageServerProtocol:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChannelSocket:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChatId:J

    move-wide v6, p1

    move-wide/from16 v8, p3

    move-object/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v1 .. v12}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->sendInviteRequest(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Lcom/samsung/android/sdk/ssf/SsfClient;JJJLjava/util/ArrayList;ILandroid/os/Bundle;)V

    return-void
.end method

.method public final isTyping(JJLjava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageRoomTypingStatus$TypingStatusContentType;IILandroid/os/Bundle;)V
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request ID is Invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message Room ID is Invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "typingState is Invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p6, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content type cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->messageServerProtocol:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChannelSocket:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->sendTypingState(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;JJLjava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageRoomTypingStatus$TypingStatusContentType;IILandroid/os/Bundle;)V

    return-void
.end method

.method public final joinMessageRoom(JJILandroid/os/Bundle;)V
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request ID is Invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message ID is Invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->messageServerProtocol:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChannelSocket:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->sendAllowChatRequest(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;JJZZILandroid/os/Bundle;)V

    return-void
.end method

.method public final leaveMessageRooms(JLjava/util/ArrayList;ILandroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/LeaveChatRoomData;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No User has been selected to leave Chat Room"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request ID is Invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->messageServerProtocol:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChannelSocket:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->sendEndChatRequest(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;JLjava/util/ArrayList;ILandroid/os/Bundle;)V

    return-void
.end method

.method public final readMessageUpto(JJJLcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;JJILandroid/os/Bundle;)V
    .locals 21

    const-wide/16 v2, 0x0

    cmp-long v2, p8, v2

    if-gtz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The DUID of the sender who sent the last message is Invalid."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->messageServerProtocol:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChannelSocket:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChatId:J

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    move-object/from16 v14, p7

    move-wide/from16 v15, p8

    move-wide/from16 v17, p10

    move/from16 v19, p12

    move-object/from16 v20, p13

    invoke-virtual/range {v3 .. v20}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->sendReadMessageRequest(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Lcom/samsung/android/sdk/ssf/SsfClient;JJJJLcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;JJILandroid/os/Bundle;)V

    return-void
.end method

.method public final readTimedMessage(JJJLcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;JILandroid/os/Bundle;)V
    .locals 15

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->messageServerProtocol:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChannelSocket:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChatId:J

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-wide/from16 v11, p8

    move/from16 v13, p10

    move-object/from16 v14, p11

    invoke-virtual/range {v0 .. v14}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->sendUnsealMessageRequest(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;JJJJLcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;JILandroid/os/Bundle;)V

    return-void
.end method

.method public final recallMessage(JJJIJLandroid/os/Bundle;)V
    .locals 13

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request ID is Invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message Room ID is Invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message ID is Invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->messageServerProtocol:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChannelSocket:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->sendRecallMessageRequest(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;JJJIJLandroid/os/Bundle;)V

    return-void
.end method

.method public final sendMessage(JJJLcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;ILandroid/os/Bundle;)V
    .locals 15

    const/4 v11, -0x1

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v1 .. v13}, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->sendTimedMessage(JJJLcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;IILandroid/os/Bundle;)V

    return-void
.end method

.method public final sendTimedMessage(JJJLcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;IILandroid/os/Bundle;)V
    .locals 17

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Request ID is Invalid."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-gtz v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Message Room ID is Invalid."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-gtz v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Message ID is Invalid."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-nez p7, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Message Type is Empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;->TEXT:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    move-object/from16 v0, p7

    if-eq v0, v2, :cond_4

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;->CUSTOM:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    move-object/from16 v0, p7

    if-ne v0, v2, :cond_5

    :cond_4
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Message Text is Empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;->MEDIA:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    move-object/from16 v0, p7

    if-ne v0, v2, :cond_6

    if-nez p9, :cond_6

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Message Media is Null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->messageServerProtocol:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChannelSocket:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move-object/from16 v15, p12

    invoke-virtual/range {v2 .. v15}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->sendChatRequest(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;JJJLcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;IILandroid/os/Bundle;)V

    return-void
.end method

.method public final shutDown()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChannelSocket:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChannelSocket:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->shutDown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final subscribeTypingStatus(JJILandroid/os/Bundle;)V
    .locals 9

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request ID is Invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmp-long v0, p3, v2

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message Room ID is Invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->messageServerProtocol:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChannelSocket:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->subscribeTypingStatus(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;JJILandroid/os/Bundle;)V

    return-void
.end method

.method public final unSubscribeTypingStatus(JJILandroid/os/Bundle;)V
    .locals 9

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request ID is Invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmp-long v0, p3, v2

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message Room ID is Invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->messageServerProtocol:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChannelSocket:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->unsubscribeTypingStatus(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;JJILandroid/os/Bundle;)V

    return-void
.end method

.method public final updateKey(Lcom/samsung/android/sdk/ssf/message/io/KeySet;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChannelSocket:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->mChannelSocket:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->updateKey(Lcom/samsung/android/sdk/ssf/message/io/KeySet;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
