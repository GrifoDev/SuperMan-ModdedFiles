.class public Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;
.super Ljava/lang/Object;


# static fields
.field static final UNREAD_MESSAGE_MAX_NUMBER:I = 0xa


# instance fields
.field private final DUPLICATED_USER_NUMBER:I

.field private final KEY_USER_LIST:Ljava/lang/String;

.field private final PROTOCOL_VERSION_0:I

.field private final TAG:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private final sInboxEntryComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;",
            ">;"
        }
    .end annotation
.end field

.field private senderChatid:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->PROTOCOL_VERSION_0:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->DUPLICATED_USER_NUMBER:I

    const-string v0, "key_user_list"

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->KEY_USER_LIST:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol$1;-><init>(Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->sInboxEntryComparator:Ljava/util/Comparator;

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->appId:Ljava/lang/String;

    return-void
.end method

.method private deliverAllowChatReply(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;Landroid/os/Bundle;)V
    .locals 19

    if-nez p2, :cond_0

    const-string v2, "deliverAllowChatReply. Invalid allowChatRequest."

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onError()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->getRequestId()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->getChatroomId()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->getNeedOrderedChatroomMemberList()Z

    move-result v14

    const/4 v3, 0x0

    const/16 v6, 0x2ee2

    if-nez p3, :cond_1

    const-string v2, "Invalid allowChatReply."

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deliverAllowChatReply. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v18, v6

    move-object v6, v3

    move/from16 v3, v18

    :goto_1
    new-instance v7, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;

    invoke-direct {v7, v3, v2}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;-><init>(ILjava/lang/String;)V

    if-eqz v14, :cond_10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onJoinMessageRoom. resultCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resultMsg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, p1

    move-wide v4, v10

    move-object/from16 v8, p4

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onJoinMessageRoom(JLcom/samsung/android/sdk/ssf/message/io/MessageRoom;Lcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->hasResult()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "allowChatReply has no result."

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deliverAllowChatReply. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v18, v6

    move-object v6, v3

    move/from16 v3, v18

    goto :goto_1

    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->getResult()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->getRequestId()J

    move-result-wide v8

    cmp-long v2, v10, v8

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allowChatReply is not for reqId: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deliverAllowChatReply. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v18, v6

    move-object v6, v3

    move/from16 v3, v18

    goto/16 :goto_1

    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->getChatroomId()J

    move-result-wide v8

    cmp-long v2, v4, v8

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allowChatReply is not for msgRoomId: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deliverAllowChatReply. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v18, v6

    move-object v6, v3

    move/from16 v3, v18

    goto/16 :goto_1

    :cond_4
    const/4 v2, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->getOrderedChatroomMemberListCount()I

    move-result v6

    if-lez v6, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->getOrderedChatroomMemberListList()Ljava/util/List;

    move-result-object v2

    :cond_5
    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getCode()I

    move-result v13

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getMsg()Ljava/lang/String;

    move-result-object v12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverAllowChatReply. reqId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", msgRoomId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", serverResultCode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v13, :pswitch_data_0

    move-object v2, v12

    move-object v6, v3

    move v3, v13

    goto/16 :goto_1

    :pswitch_0
    if-eqz v14, :cond_c

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    const-string v2, "Invalid memberStatusList."

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverAllowChatReply. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v3

    move v3, v13

    goto/16 :goto_1

    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->hasMsgTtl()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->getMsgTtl()I

    move-result v9

    :goto_2
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->hasTitle()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->getTitle()Ljava/lang/String;

    move-result-object v8

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deliverAllowChatReply. msgRoomTitle: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", msgTtl: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;->getUserId()J

    move-result-wide v16

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;->getAvailable()Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;->MEMBER:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    :goto_5
    new-instance v15, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;

    move-wide/from16 v0, v16

    invoke-direct {v15, v0, v1, v6, v2}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;-><init>(JLjava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;)V

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deliverAllowChatReply. member.duid: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->getChatId()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", member.status: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->getStatus()Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deliverAllowChatReply. member.msisdn: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->getMsisdn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    const/4 v9, -0x1

    goto/16 :goto_2

    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_a
    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;->DISABLED:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    goto :goto_5

    :cond_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_f

    sget-object v6, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;->GROUP:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    :goto_6
    new-instance v3, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom;

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom;-><init>(JLcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;Ljava/util/ArrayList;Ljava/lang/String;I)V

    :cond_c
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->getReadAckEntriesCount()I

    move-result v2

    if-lez v2, :cond_d

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->getReadAckEntriesList()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->parseReadAck(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverAllowChatReply. readAckList.size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5, v2}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onReceiveMessageRead(JLjava/util/ArrayList;)V

    :cond_d
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->getDeliveryAckEntriesCount()I

    move-result v2

    if-lez v2, :cond_e

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->getDeliveryAckEntriesList()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->parseDeliveryAck(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverAllowChatReply. deliveryAckList.size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5, v2}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onReceiveMessageDelivered(JLjava/util/ArrayList;)V

    :cond_e
    move-object v2, v12

    move-object v6, v3

    move v3, v13

    goto/16 :goto_1

    :cond_f
    sget-object v6, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;->SINGLE:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    goto/16 :goto_6

    :cond_10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onEnterMessageRoom. resultCode: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", resultMsg: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v9, p1

    move-wide v12, v4

    move-object v14, v7

    move-object/from16 v15, p4

    invoke-interface/range {v9 .. v15}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onEnterMessageRoom(JJLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method private deliverChangeChatroomMetaReply(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaRequest;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaReply;Landroid/os/Bundle;)V
    .locals 12

    if-nez p2, :cond_1

    const-string v0, "deliverChangeChatroomMetaReply. Invalid changeChatroomMetaRequest."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onError()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaRequest;->getRequestId()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaRequest;->getChatroomId()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaRequest;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaRequest;->getTitle()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaRequest;->hasMsgTtl()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaRequest;->getMsgTtl()I

    move-result v0

    move v8, v0

    :goto_2
    const/16 v1, 0x2ee2

    if-nez p3, :cond_4

    const-string v0, "Invalid changeChatroomMetaReply."

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deliverChangeChatroomMetaReply. "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v7, v9}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    new-instance v7, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;

    invoke-direct {v7, v1, v0}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;-><init>(ILjava/lang/String;)V

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onChangeMessageRoomTitle. resultCode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", resultMsg: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p1

    move-object/from16 v8, p4

    invoke-interface/range {v1 .. v8}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onChangeMessageRoomTitle(JJLjava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    move v8, v0

    goto :goto_2

    :cond_4
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaReply;->hasResult()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "changeChatroomMetaReply has no result."

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deliverChangeChatroomMetaReply. "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v7, v9}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaReply;->getResult()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v0

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaReply;->getRequestId()J

    move-result-wide v10

    cmp-long v7, v2, v10

    if-eqz v7, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changeChatroomMetaReply is not for reqId: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deliverChangeChatroomMetaReply. "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v7, v9}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaReply;->getChatroomId()J

    move-result-wide v10

    cmp-long v7, v4, v10

    if-eqz v7, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changeChatroomMetaReply is not for msgRoomId: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deliverChangeChatroomMetaReply. "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v7, v9}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getMsg()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deliverChangeChatroomMetaReply. reqId: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", msgRoomId: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", msgLifeTimeInSecs: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", serverResultCode: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v7, v9}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deliverChangeChatroomMetaReply. msgRoomTitle: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v7, v9}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    const/4 v6, -0x1

    if-le v8, v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onChangeMessageRoomMsgLifeTime. resultCode: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", resultMsg: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p1

    move v6, v8

    move-object/from16 v8, p4

    invoke-interface/range {v1 .. v8}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onChangeMessageRoomMsgLifeTime(JJILcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private deliverChangeOwnerReply(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeOwnerRequest;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeOwnerReply;Landroid/os/Bundle;)V
    .locals 12

    if-nez p2, :cond_0

    const-string v0, "deliverChangeOwnerReply. Invalid changeOwnerRequest."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onError()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeOwnerRequest;->getRequestId()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeOwnerRequest;->getChatroomId()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeOwnerRequest;->getNewOwner()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    const/16 v1, 0x2ee2

    if-nez p3, :cond_1

    const-string v0, "Invalid changeOwnerReply."

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deliverChangeOwnerReply. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onChangeMessageRoomOwner. resultCode: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", resultMsg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;

    invoke-direct {v10, v1, v0}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;-><init>(ILjava/lang/String;)V

    move-object v1, p1

    move-object/from16 v11, p4

    invoke-interface/range {v1 .. v11}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onChangeMessageRoomOwner(JJJJLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeOwnerReply;->hasResult()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "changeOwnerReply has no result."

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deliverChangeOwnerReply. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeOwnerReply;->getResult()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v0

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeOwnerReply;->getRequestId()J

    move-result-wide v10

    cmp-long v10, v2, v10

    if-eqz v10, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changeOwnerReply is not for reqId: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deliverChangeOwnerReply. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeOwnerReply;->getChatroomId()J

    move-result-wide v10

    cmp-long v10, v4, v10

    if-eqz v10, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changeOwnerReply is not for msgRoomId: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deliverChangeOwnerReply. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeOwnerReply;->getSentTime()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getMsg()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deliverChangeOwnerReply. reqId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", msgRoomId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", serverResultCode: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private deliverChatReply(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatRequest;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatReply;Landroid/os/Bundle;)V
    .locals 21

    if-nez p3, :cond_0

    const-string v2, "deliverChatReply. Invalid chatReply."

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onError()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatRequest;->getRequestId()J

    move-result-wide v12

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatRequest;->getChatroomId()J

    move-result-wide v14

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatRequest;->getChatMessageParamsCount()I

    move-result v2

    if-gtz v2, :cond_1

    const-string v2, "deliverChatReply. Invalid getChatMessageParams. Ignore the chatReply."

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onError()V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatRequest;->getChatMessageParams(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;->getMsgType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;->valueOf(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;)Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    move-result-object v20

    if-nez v20, :cond_2

    const-string v2, "deliverChatReply. Invalid message type. Ignore the chatReply."

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;->getChatMsg()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;->hasMsgTtl()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;->getMsgTtl()I

    move-result v17

    :goto_1
    const/16 v19, 0x0

    const/16 v10, 0x2ee2

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol$4;->$SwitchMap$com$samsung$android$sdk$ssf$message$io$MessageInfo$Type:[I

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    const-string v2, "deliverChatReply. Not supported msgType."

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v6, v3

    :goto_2
    :pswitch_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v7, :cond_5

    const-string v2, "Invalid textMsg and msgMedia."

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deliverChatReply. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v10

    move-object/from16 v8, v19

    :goto_3
    new-instance v9, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;

    invoke-direct {v9, v3, v2}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;-><init>(ILjava/lang/String;)V

    const/4 v4, -0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSendMessage. resultCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resultMsg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, p1

    move-wide v4, v12

    move-wide v6, v14

    move-object/from16 v10, p5

    invoke-interface/range {v3 .. v10}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onSendMessage(JJLcom/samsung/android/sdk/ssf/message/io/MessageInfo;Lcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_4
    const/16 v17, -0x1

    goto :goto_1

    :pswitch_1
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    :try_start_0
    const-class v4, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;

    invoke-virtual {v2, v6, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;

    move-object v8, v0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;->getMessage()Ljava/lang/String;

    move-result-object v9

    new-instance v2, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;->getType()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;->valueOf(I)Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

    move-result-object v3

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;->getFileContents()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;->getShopContentIds()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;->getLatitude()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;->getLongitude()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;-><init>(Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v2

    move-object v6, v9

    goto/16 :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lcom/google/gson/JsonSyntaxException;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deliverChatReply. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v3

    goto/16 :goto_2

    :cond_5
    if-nez p4, :cond_6

    const-string v2, "Invalid chatReply."

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deliverChatReply. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v10

    move-object/from16 v8, v19

    goto/16 :goto_3

    :cond_6
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatReply;->hasResult()Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "chatReply has no result."

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deliverChatReply. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v10

    move-object/from16 v8, v19

    goto/16 :goto_3

    :cond_7
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatReply;->getResult()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatReply;->getRequestId()J

    move-result-wide v4

    cmp-long v3, v12, v4

    if-eqz v3, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chatReply is not for reqId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deliverChatReply. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v10

    move-object/from16 v8, v19

    goto/16 :goto_3

    :cond_8
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatReply;->getChatroomId()J

    move-result-wide v4

    cmp-long v3, v14, v4

    if-eqz v3, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chatReply is not for msgRoomId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deliverChatReply. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v10

    move-object/from16 v8, v19

    goto/16 :goto_3

    :cond_9
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatReply;->getProcessedMessageEntriesCount()I

    move-result v3

    if-gtz v3, :cond_a

    const-string v2, "chatReply doesn\'t have processedMsgEntry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deliverChatReply. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v10

    move-object/from16 v8, v19

    goto/16 :goto_3

    :cond_a
    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatReply;->getProcessedMessageEntries(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->getMsgId()J

    move-result-wide v3

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->getSentTime()J

    move-result-wide v10

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getCode()I

    move-result v18

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getMsg()Ljava/lang/String;

    move-result-object v16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deliverChatReply. reqId: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", msgRoomId: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", msgId: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", msgType: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", msgLifeTimeInSecs: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", senderChatid: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->senderChatid:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", sentTime: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", serverResultCode: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3e8

    move/from16 v0, v18

    if-ne v0, v2, :cond_c

    new-instance v2, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->senderChatid:J

    move-object/from16 v5, v20

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;-><init>(JLcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;JJ)V

    move/from16 v3, v18

    move-object v8, v2

    move-object/from16 v2, v16

    goto/16 :goto_3

    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSendTimedMessage. resultCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resultMsg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v11, p1

    move-object/from16 v16, v8

    move-object/from16 v18, v9

    move-object/from16 v19, p5

    invoke-interface/range {v11 .. v19}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onSendTimedMessage(JJLcom/samsung/android/sdk/ssf/message/io/MessageInfo;ILcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v2, v16

    move/from16 v3, v18

    move-object/from16 v8, v19

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private deliverCreateChatroomReply(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomRequest;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomReply;Landroid/os/Bundle;)V
    .locals 29

    if-nez p2, :cond_0

    const-string v4, "deliverCreateChatroomReply. Invalid createChatroomRequest."

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onError()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomRequest;->getRequestId()J

    move-result-wide v20

    const/16 v17, 0x0

    const/16 v5, 0x2ee2

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-nez p4, :cond_1

    const-string v4, "Invalid clientData."

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverCreateChatroomReply. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v5

    move-object/from16 v8, v17

    move-object v5, v4

    move-object v4, v14

    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreateMessageRoom. resultCode: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", resultMsg: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v7, v9}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult;

    invoke-direct {v9, v6, v5, v13, v4}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult;-><init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v5, p1

    move-wide/from16 v6, v20

    move-object/from16 v10, p4

    invoke-interface/range {v5 .. v10}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onCreateMessageRoom(JLcom/samsung/android/sdk/ssf/message/io/MessageRoom;Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const-string v4, "key_user_list"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomRequest;->getChatType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    move-result-object v4

    sget-object v7, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->MONO_GROUP:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    if-eq v4, v7, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "Invalid invitedUserListString."

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverCreateChatroomReply. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v5

    move-object/from16 v8, v17

    move-object v5, v4

    move-object v4, v14

    goto :goto_1

    :cond_2
    const-string v4, "key_user_list"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomRequest;->getChatType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;->valueOf(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;)Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomRequest;->getChatroomTitle()Ljava/lang/String;

    move-result-object v10

    const/4 v4, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomRequest;->getReceiversCount()I

    move-result v7

    if-lez v7, :cond_1e

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomRequest;->getReceiversList()Ljava/util/List;

    move-result-object v7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v12, v4

    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomRequest;->getChatType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    move-result-object v4

    sget-object v7, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->MONO_GROUP:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    if-eq v4, v7, :cond_4

    if-eqz v12, :cond_3

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    const-string v4, "Invalid invitedUserSvcDuidList."

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverCreateChatroomReply. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v5

    move-object/from16 v8, v17

    move-object v5, v4

    move-object v4, v14

    goto/16 :goto_1

    :cond_4
    const/4 v4, 0x0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1d

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    :try_start_0
    new-instance v7, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol$2;-><init>(Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;)V

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    const-string v4, "Invalid invitedUserList."

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverCreateChatroomReply. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v5

    move-object/from16 v8, v17

    move-object v5, v4

    move-object v4, v14

    goto/16 :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Lcom/google/gson/JsonSyntaxException;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverCreateChatroomReply. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v5

    move-object/from16 v8, v17

    move-object v5, v4

    move-object v4, v14

    goto/16 :goto_1

    :cond_6
    move-object/from16 v18, v4

    :goto_3
    if-nez p3, :cond_7

    const-string v4, "Invalid createChatroomReply."

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverCreateChatroomReply. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v5

    move-object/from16 v8, v17

    move-object v5, v4

    move-object v4, v14

    goto/16 :goto_1

    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomReply;->hasResult()Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "createChatroomReply has no result."

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverCreateChatroomReply. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v5

    move-object/from16 v8, v17

    move-object v5, v4

    move-object v4, v14

    goto/16 :goto_1

    :cond_8
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomReply;->getResult()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v9

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomReply;->getRequestId()J

    move-result-wide v6

    cmp-long v4, v20, v6

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createChatroomReply is not for reqId: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverCreateChatroomReply. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v5

    move-object/from16 v8, v17

    move-object v5, v4

    move-object v4, v14

    goto/16 :goto_1

    :cond_9
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomReply;->getChatroomId()J

    move-result-wide v6

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomReply;->hasMsgTtl()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomReply;->getMsgTtl()I

    move-result v11

    :goto_4
    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getCode()I

    move-result v16

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getMsg()Ljava/lang/String;

    move-result-object v15

    const/4 v4, 0x0

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->hasWrongReceiverDetail()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getWrongReceiverDetail()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    move-result-object v4

    move-object v5, v4

    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deliverCreateChatroomReply. reqId: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ", msgRoomId: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ", msgRoomType: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ", msgRoomTitle: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ", msgTtl: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ", serverResultCode: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v4, v9}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_1b

    if-eqz v18, :cond_1b

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->getDisabledReceiversCount()I

    move-result v4

    if-lez v4, :cond_d

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->getDisabledReceiversList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_a
    :goto_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "deliverCreateChatroomReply. disabledUserChatId: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_b
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/ssf/message/io/User;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/message/io/User;->getChatId()J

    move-result-wide v26

    cmp-long v25, v26, v22

    if-nez v25, :cond_b

    new-instance v22, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/message/io/User;->getChatId()J

    move-result-wide v24

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/message/io/User;->getMsisdn()Ljava/lang/String;

    move-result-object v4

    sget-object v23, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;->DISABLED:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;-><init>(JLjava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;)V

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    const/4 v11, -0x1

    goto/16 :goto_4

    :cond_d
    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->getInvalidReceiversCount()I

    move-result v4

    if-lez v4, :cond_10

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->getInvalidReceiversList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_e
    :goto_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "deliverCreateChatroomReply. invalidUserChatId: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_f
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/ssf/message/io/User;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/message/io/User;->getChatId()J

    move-result-wide v26

    cmp-long v25, v26, v22

    if-nez v25, :cond_f

    new-instance v22, Lcom/samsung/android/sdk/ssf/message/io/User;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/message/io/User;->getChatId()J

    move-result-wide v24

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/message/io/User;->getMsisdn()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/sdk/ssf/message/io/User;-><init>(JLjava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_10
    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->getDidViolationUsersCount()I

    move-result v4

    if-lez v4, :cond_1a

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->getDidViolationUsersList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_8
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_11
    :goto_9
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/ssf/message/io/User;

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_13

    :cond_12
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_15

    const-string v4, "deliverCreateChatroomReply. Invalid duplicatedUserList."

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_13
    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/User;->getChatId()J

    move-result-wide v24

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->getUserA()J

    move-result-wide v26

    cmp-long v24, v24, v26

    if-nez v24, :cond_14

    new-instance v24, Lcom/samsung/android/sdk/ssf/message/io/User;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/User;->getChatId()J

    move-result-wide v26

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/User;->getMsisdn()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2, v5}, Lcom/samsung/android/sdk/ssf/message/io/User;-><init>(JLjava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "deliverCreateChatroomReply. duplicatedUserA.duid: "

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/message/io/User;->getChatId()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v5, v0}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_14
    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/User;->getChatId()J

    move-result-wide v24

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->getUserB()J

    move-result-wide v26

    cmp-long v24, v24, v26

    if-nez v24, :cond_11

    new-instance v24, Lcom/samsung/android/sdk/ssf/message/io/User;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/User;->getChatId()J

    move-result-wide v26

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/User;->getMsisdn()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2, v5}, Lcom/samsung/android/sdk/ssf/message/io/User;-><init>(JLjava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "deliverCreateChatroomReply. duplicatedUserB.duid: "

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/message/io/User;->getChatId()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v5, v0}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_15
    new-instance v4, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult$DuplicatedMessageUsers;

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult$DuplicatedMessageUsers;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_16
    move-object/from16 v28, v14

    move-object v14, v13

    move-object/from16 v13, v28

    :goto_a
    packed-switch v16, :pswitch_data_0

    move-object v4, v13

    move-object v5, v15

    move/from16 v6, v16

    move-object/from16 v8, v17

    move-object v13, v14

    goto/16 :goto_1

    :pswitch_0
    if-eqz v12, :cond_19

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_17
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "deliverCreateChatroomReply. invitedUserChatId: "

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v12, v0}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_18
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/ssf/message/io/User;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/message/io/User;->getChatId()J

    move-result-wide v24

    cmp-long v17, v24, v22

    if-nez v17, :cond_18

    new-instance v12, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/message/io/User;->getChatId()J

    move-result-wide v22

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/message/io/User;->getMsisdn()Ljava/lang/String;

    move-result-object v4

    sget-object v17, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;->MEMBER:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    move-wide/from16 v0, v22

    move-object/from16 v2, v17

    invoke-direct {v12, v0, v1, v4, v2}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;-><init>(JLjava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_19
    new-instance v5, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom;

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom;-><init>(JLcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;Ljava/util/ArrayList;Ljava/lang/String;I)V

    move-object v4, v13

    move/from16 v6, v16

    move-object v8, v5

    move-object v13, v14

    move-object v5, v15

    goto/16 :goto_1

    :cond_1a
    move-object/from16 v28, v14

    move-object v14, v13

    move-object/from16 v13, v28

    goto/16 :goto_a

    :cond_1b
    move-object/from16 v28, v14

    move-object v14, v13

    move-object/from16 v13, v28

    goto/16 :goto_a

    :cond_1c
    move-object v5, v4

    goto/16 :goto_5

    :cond_1d
    move-object/from16 v18, v4

    goto/16 :goto_3

    :cond_1e
    move-object v12, v4

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private deliverDestroyChatroomReply(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DestroyChatroomRequest;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DestroyChatroomReply;Landroid/os/Bundle;)V
    .locals 8

    if-nez p2, :cond_0

    const-string v0, "deliverDestroyChatroomReply. Invalid destroyChatroomRequest."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onError()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DestroyChatroomRequest;->getRequestId()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DestroyChatroomRequest;->getChatroomId()J

    move-result-wide v6

    const/16 v1, 0x2ee2

    if-nez p3, :cond_1

    const-string v0, "Invalid destroyChatroomReply."

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deliverDestroyChatroomReply. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDestroyMessageRoom. resultCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", resultMsg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;

    invoke-direct {v5, v1, v0}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;-><init>(ILjava/lang/String;)V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v1, p1

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onDestroyMessageRoom(JLjava/lang/Long;Lcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DestroyChatroomReply;->hasResult()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "destroyChatroomReply has no result."

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deliverDestroyChatroomReply. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DestroyChatroomReply;->getResult()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v0

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DestroyChatroomReply;->getRequestId()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destroyChatroomReply is not for reqId: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deliverDestroyChatroomReply. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DestroyChatroomReply;->getChatroomId()J

    move-result-wide v4

    cmp-long v4, v6, v4

    if-eqz v4, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destroyChatroomReply is not for msgRoomId: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deliverDestroyChatroomReply. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getMsg()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deliverDestroyChatroomReply. reqId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", request id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgRoomId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", serverResultCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private deliverEndChatReply(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatRequest;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatReply;Landroid/os/Bundle;)V
    .locals 8

    const/4 v4, 0x0

    if-nez p2, :cond_0

    const-string v0, "deliverEndChatReply. Invalid endChatRequest."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onError()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatRequest;->getRequestId()J

    move-result-wide v2

    const/16 v1, 0x2ee2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatRequest;->getEndChatEntriesCount()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatRequest;->getEndChatEntriesList()Ljava/util/List;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const-string v0, "Invalid endChatEntryList."

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deliverEndChatReply. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLeaveMessageRooms. resultCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", resultMsg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;

    invoke-direct {v5, v1, v0}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;-><init>(ILjava/lang/String;)V

    move-object v1, p1

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onLeaveMessageRooms(JLjava/util/ArrayList;Lcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->getChatroomId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    if-nez p3, :cond_4

    const-string v0, "Invalid endChatReply."

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deliverEndChatReply. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatReply;->hasResult()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "endChatReply has no result."

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deliverEndChatReply. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatReply;->getResult()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v0

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatReply;->getRequestId()J

    move-result-wide v6

    cmp-long v5, v2, v6

    if-eqz v5, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "endChatReply is not for reqId: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deliverEndChatReply. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getMsg()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deliverEndChatReply. reqId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " msgRoomIdList: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", serverResultCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    move-object v0, v4

    goto/16 :goto_1
.end method

.method private deliverForwardOnlineMessage(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;)V
    .locals 7

    if-nez p2, :cond_0

    const-string v0, "deliverForwardOnlineMessage. Invalid forwardOnlineMessage."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->getRequestId()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->getChatroomId()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->getInboxEntry()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->deliverInboxEntry(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;JJLcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)V

    goto :goto_0
.end method

.method private deliverForwardUnreadMessage(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;)V
    .locals 8

    if-nez p1, :cond_1

    const-string v0, "deliverForwardUnreadMessage. Invalid listener. Ignore the forwardUnreadMessage."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    const-string v0, "deliverForwardUnreadMessage. Invalid forwardOnlineMessage."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->getRequestId()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->getInboxEntriesList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const-string v0, "deliverForwardUnreadMessage. Invalid inboxEntryList. Ignore the ServerMessage."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->sInboxEntryComparator:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getChatroomId()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->deliverInboxEntry(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;JJLcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)V

    goto :goto_2
.end method

.method private deliverGetAllUnreadMessageReply(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageReply;Landroid/os/Bundle;)V
    .locals 6

    if-nez p2, :cond_0

    const-string v0, "deliverGetAllUnreadMessageReply. Invalid getAllUnreadMessageRequest."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onError()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->getRequestId()J

    move-result-wide v2

    const/16 v1, 0x2ee2

    if-nez p3, :cond_1

    const-string v0, "Invalid getAllUnreadMessageReply."

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deliverGetAllUnreadMessageReply. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGetAllUnreadMessages. resultCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", resultMsg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;

    invoke-direct {v4, v1, v0}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v2, v3, v4, p4}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onGetAllUnreadMessages(JLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageReply;->hasResult()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "getAllUnreadMessageReply has no result."

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deliverGetAllUnreadMessageReply. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageReply;->getResult()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v0

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageReply;->getRequestId()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAllUnreadMessageReply is not for reqId: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deliverGetAllUnreadMessageReply. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getMsg()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAllUnreadMessageReply. reqId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", serverResultCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private deliverInboxEntry(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;JJLcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "deliverInboxEntry. Invalid listener. Ignore the inboxEntry."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-nez p6, :cond_1

    const-string v0, "deliverInboxEntry. Invalid inboxEntry."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getMsgType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->getNumber()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "deliverInboxEntry. Not supported msgType. Ignore the ServerMessage."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->deliverInboxEntryForTextMessage(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;JJLcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)V

    goto :goto_0

    :pswitch_2
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->deliverInboxEntryForMediaMessage(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;JJLcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)V

    goto :goto_0

    :pswitch_3
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->deliverInboxEntryForCustomMessage(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;JJLcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)V

    goto :goto_0

    :pswitch_4
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->deliverInboxEntryForRecall(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;JJLcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)V

    goto :goto_0

    :pswitch_5
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->deliverInboxEntryForNotiMessage(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;JJLcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)V

    goto :goto_0

    :pswitch_6
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->deliverInboxEntryForReadAck(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;JJLcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)V

    goto :goto_0

    :pswitch_7
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->deliverInboxEntryForDeliveryAck(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;JJLcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)V

    goto :goto_0

    :pswitch_8
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->deliverInboxEntryForUnseal(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;JJLcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private deliverInboxEntryForCustomMessage(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;JJLcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)V
    .locals 14

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getChatType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;->valueOf(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;)Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    move-result-object v13

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getMsgId()J

    move-result-wide v3

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getMsgType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;->valueOf(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;)Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    move-result-object v5

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getSentTime()J

    move-result-wide v10

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getSender()J

    move-result-wide v8

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getChatMsg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->hasMsgTtl()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getMsgTtl()I

    move-result v2

    move v12, v2

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverICustomEntryForTextMessage. reqId: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", msgRoomId: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", msgRoomType: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", msgId: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", msgType: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", senderChatId: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", sentTime: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", msgLifeTimeInSecs: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverICustomEntryForTextMessage. chatMsg: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "deliverICustomEntryForTextMessage. Invalid chatMsg."

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const/4 v2, -0x1

    move v12, v2

    goto/16 :goto_0

    :cond_1
    if-nez p1, :cond_2

    const-string v2, "deliverICustomEntryForTextMessage. Invalid listener."

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;-><init>(JLcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;JJ)V

    const/4 v3, -0x1

    if-ne v12, v3, :cond_3

    move-object v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-object v8, v13

    move-object v9, v2

    invoke-interface/range {v3 .. v9}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onReceiveMessage(JJLcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;)V

    goto :goto_1

    :cond_3
    move-object v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-object v8, v13

    move-object v9, v2

    move v10, v12

    invoke-interface/range {v3 .. v10}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onReceiveTimedMessage(JJLcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;I)V

    goto :goto_1
.end method

.method private deliverInboxEntryForDeliveryAck(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;JJLcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)V
    .locals 8

    invoke-virtual {p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getMsgId()J

    move-result-wide v1

    invoke-virtual {p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getReceiver()J

    move-result-wide v6

    invoke-virtual {p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getSentTime()J

    move-result-wide v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deliverInboxEntryForDeliveryAck reqId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", msgRoomId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", msgId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", receiverChatId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", sentTime: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;-><init>(JLjava/lang/String;J)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, p4, p5, v1}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onReceiveMessageDelivered(JLjava/util/ArrayList;)V

    return-void
.end method

.method private deliverInboxEntryForMediaMessage(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;JJLcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)V
    .locals 20

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getChatType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;->valueOf(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;)Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    move-result-object v15

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getMsgId()J

    move-result-wide v16

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getMsgType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;->valueOf(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;)Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    move-result-object v18

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getSender()J

    move-result-wide v10

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getSentTime()J

    move-result-wide v12

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getChatMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->hasMsgTtl()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getMsgTtl()I

    move-result v2

    move v14, v2

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deliverInboxEntryForMediaMessage. reqId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", msgRoomId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", msgRoomType: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", msgId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", msgType: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", senderChatId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", sentTimeInMillis: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", msgLifeTimeInSecs: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deliverInboxEntryForMediaMessage. chatMsg: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "deliverInboxEntryForMediaMessage. Invalid chatMsg."

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const/4 v2, -0x1

    move v14, v2

    goto/16 :goto_0

    :cond_1
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    :try_start_0
    const-class v4, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;

    move-object v9, v0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v9, :cond_2

    const-string v2, "deliverInboxEntryForMediaMessage. Invalid mediaMsg."

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deliverInboxEntryForMediaMessage. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    const-string v2, "deliverInboxEntryForMediaMessage. Invalid listener."

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;->valueOf(I)Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v2, "deliverInboxEntryForMediaMessage. Invalid msgMediaType."

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v2, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;->getFileContents()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;->getShopContentIds()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;->getLatitude()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;->getLongitude()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;-><init>(Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;->getMessage()Ljava/lang/String;

    move-result-object v8

    new-instance v4, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;

    move-wide/from16 v5, v16

    move-object/from16 v7, v18

    move-object v9, v2

    invoke-direct/range {v4 .. v13}, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;-><init>(JLcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;JJ)V

    const/4 v2, -0x1

    if-ne v14, v2, :cond_5

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-object v10, v15

    move-object v11, v4

    invoke-interface/range {v5 .. v11}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onReceiveMessage(JJLcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;)V

    goto/16 :goto_1

    :cond_5
    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-object v10, v15

    move-object v11, v4

    move v12, v14

    invoke-interface/range {v5 .. v12}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onReceiveTimedMessage(JJLcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;I)V

    goto/16 :goto_1
.end method

.method private deliverInboxEntryForNotiMessage(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;JJLcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)V
    .locals 20

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getMsgId()J

    move-result-wide v4

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getSender()J

    move-result-wide v14

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getSentTime()J

    move-result-wide v12

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getChatMsg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getChatType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->getNumber()I

    move-result v11

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getMsgType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->getNumber()I

    move-result v10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deliverInboxEntryForNotiMessage. reqId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p2

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", msgRoomId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p4

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", msgId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", senderChatId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sentTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "deliverInboxEntryForNotiMessage. Invalid chatMsg."

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    :try_start_0
    const-class v5, [Lcom/samsung/android/sdk/ssf/message/io/NotiMessage;

    invoke-virtual {v4, v6, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/samsung/android/sdk/ssf/message/io/NotiMessage;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    array-length v0, v4

    move/from16 v18, v0

    const/4 v5, 0x0

    move/from16 v16, v5

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    aget-object v5, v4, v16

    :try_start_1
    iget-object v6, v5, Lcom/samsung/android/sdk/ssf/message/io/NotiMessage;->type:Ljava/lang/String;

    invoke-static {v6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deliverInboxEntryForNotiMessage. notiType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol$4;->$SwitchMap$com$samsung$android$sdk$ssf$message$io$SSMGPB$NotiType:[I

    invoke-virtual {v6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->ordinal()I

    move-result v6

    aget v6, v7, v6

    packed-switch v6, :pswitch_data_0

    const-string v5, "deliverInboxEntryForNotiMessage. Unknown notiType."

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v5, v16, 0x1

    move/from16 v16, v5

    goto :goto_1

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deliverInboxEntryForNotiMessage. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown Notification type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, v5, Lcom/samsung/android/sdk/ssf/message/io/NotiMessage;->type:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_0
    new-instance v6, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;

    iget-wide v8, v5, Lcom/samsung/android/sdk/ssf/message/io/NotiMessage;->userId:J

    iget-object v5, v5, Lcom/samsung/android/sdk/ssf/message/io/NotiMessage;->data1:Ljava/lang/String;

    sget-object v7, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;->ENTERED:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    invoke-direct {v6, v8, v9, v5, v7}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;-><init>(JLjava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverInboxEntryForNotiMessage. member.duid: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->getChatId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    new-instance v6, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;

    iget-wide v8, v5, Lcom/samsung/android/sdk/ssf/message/io/NotiMessage;->userId:J

    iget-object v5, v5, Lcom/samsung/android/sdk/ssf/message/io/NotiMessage;->data1:Ljava/lang/String;

    sget-object v7, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;->LEFT:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    invoke-direct {v6, v8, v9, v5, v7}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;-><init>(JLjava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverInboxEntryForNotiMessage. member.duid: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->getChatId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_2
    new-instance v6, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;

    iget-wide v8, v5, Lcom/samsung/android/sdk/ssf/message/io/NotiMessage;->userId:J

    iget-object v5, v5, Lcom/samsung/android/sdk/ssf/message/io/NotiMessage;->data1:Ljava/lang/String;

    sget-object v7, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;->ENABLED:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    invoke-direct {v6, v8, v9, v5, v7}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;-><init>(JLjava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverInboxEntryForNotiMessage. member.duid: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->getChatId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_3
    new-instance v6, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;

    iget-wide v8, v5, Lcom/samsung/android/sdk/ssf/message/io/NotiMessage;->userId:J

    iget-object v5, v5, Lcom/samsung/android/sdk/ssf/message/io/NotiMessage;->data1:Ljava/lang/String;

    sget-object v7, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;->DISABLED:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    invoke-direct {v6, v8, v9, v5, v7}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;-><init>(JLjava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverInboxEntryForNotiMessage. member.duid: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->getChatId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_4
    new-instance v6, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;

    iget-wide v8, v5, Lcom/samsung/android/sdk/ssf/message/io/NotiMessage;->userId:J

    iget-object v5, v5, Lcom/samsung/android/sdk/ssf/message/io/NotiMessage;->data1:Ljava/lang/String;

    sget-object v7, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;->DEREGISTERED:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    invoke-direct {v6, v8, v9, v5, v7}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;-><init>(JLjava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverInboxEntryForNotiMessage. member.duid: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->getChatId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_5
    new-instance v6, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;

    iget-wide v8, v5, Lcom/samsung/android/sdk/ssf/message/io/NotiMessage;->userId:J

    iget-object v5, v5, Lcom/samsung/android/sdk/ssf/message/io/NotiMessage;->data1:Ljava/lang/String;

    sget-object v7, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;->OWNER:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    invoke-direct {v6, v8, v9, v5, v7}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;-><init>(JLjava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverInboxEntryForNotiMessage. member.duid: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->getChatId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_6
    new-instance v6, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;

    iget-wide v8, v5, Lcom/samsung/android/sdk/ssf/message/io/NotiMessage;->userId:J

    iget-object v5, v5, Lcom/samsung/android/sdk/ssf/message/io/NotiMessage;->data1:Ljava/lang/String;

    sget-object v7, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;->OWNER_BY_SYSTEM:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    invoke-direct {v6, v8, v9, v5, v7}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;-><init>(JLjava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverInboxEntryForNotiMessage. member.duid: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->getChatId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_7
    new-instance v6, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;

    iget-wide v8, v5, Lcom/samsung/android/sdk/ssf/message/io/NotiMessage;->userId:J

    iget-object v5, v5, Lcom/samsung/android/sdk/ssf/message/io/NotiMessage;->data1:Ljava/lang/String;

    sget-object v7, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;->EXPELLED:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    invoke-direct {v6, v8, v9, v5, v7}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;-><init>(JLjava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverInboxEntryForNotiMessage. member.duid: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->getChatId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_8
    new-instance v6, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;

    iget-wide v8, v5, Lcom/samsung/android/sdk/ssf/message/io/NotiMessage;->userId:J

    iget-object v5, v5, Lcom/samsung/android/sdk/ssf/message/io/NotiMessage;->data1:Ljava/lang/String;

    sget-object v7, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;->OWNER:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    invoke-direct {v6, v8, v9, v5, v7}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;-><init>(JLjava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverInboxEntryForNotiMessage. owner.duid: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->getChatId()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-wide/from16 v1, p4

    invoke-interface {v0, v1, v2, v6}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onReceiveMessageRoomDestroyed(JLcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;)V

    goto/16 :goto_2

    :pswitch_9
    new-instance v8, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;

    iget-wide v6, v5, Lcom/samsung/android/sdk/ssf/message/io/NotiMessage;->userId:J

    iget-object v9, v5, Lcom/samsung/android/sdk/ssf/message/io/NotiMessage;->data1:Ljava/lang/String;

    sget-object v19, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;->MEMBER:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    move-object/from16 v0, v19

    invoke-direct {v8, v6, v7, v9, v0}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;-><init>(JLjava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;)V

    iget-object v9, v5, Lcom/samsung/android/sdk/ssf/message/io/NotiMessage;->data2:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deliverInboxEntryForNotiMessage. changer.duid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->getChatId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", msgRoomTitle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, p1

    move-wide/from16 v6, p4

    invoke-interface/range {v5 .. v11}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onReceiveMessageRoomTitleChanged(JLcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;Ljava/lang/String;II)V

    goto/16 :goto_2

    :pswitch_a
    new-instance v8, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;

    iget-wide v6, v5, Lcom/samsung/android/sdk/ssf/message/io/NotiMessage;->userId:J

    iget-object v9, v5, Lcom/samsung/android/sdk/ssf/message/io/NotiMessage;->data1:Ljava/lang/String;

    sget-object v19, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;->MEMBER:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    move-object/from16 v0, v19

    invoke-direct {v8, v6, v7, v9, v0}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;-><init>(JLjava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;)V

    iget-object v6, v5, Lcom/samsung/android/sdk/ssf/message/io/NotiMessage;->data2:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v5, "deliverInboxEntryForNotiMessage. Invalid notiMessage.data2."

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    :try_start_2
    iget-object v5, v5, Lcom/samsung/android/sdk/ssf/message/io/NotiMessage;->data2:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v5, -0x1

    if-ne v9, v5, :cond_3

    const-string v5, "deliverInboxEntryForNotiMessage. Invalid msgLifeTimeInSecs."

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverInboxEntryForNotiMessage. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deliverInboxEntryForNotiMessage. changer.duid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->getChatId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", msgLifeTimeInSecs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, p1

    move-wide/from16 v6, p4

    invoke-interface/range {v5 .. v11}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onReceiveMessageRoomMsgLifeTimeChanged(JLcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;III)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    :cond_4
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    move-object/from16 v6, p1

    move-wide/from16 v7, p4

    move-object/from16 v9, v17

    invoke-interface/range {v6 .. v15}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onReceiveMessageRoomMemberChanged(JLjava/util/ArrayList;IIJJ)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private deliverInboxEntryForReadAck(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;JJLcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)V
    .locals 8

    invoke-virtual {p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getMsgId()J

    move-result-wide v1

    invoke-virtual {p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getReceiver()J

    move-result-wide v6

    invoke-virtual {p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getSentTime()J

    move-result-wide v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deliverInboxEntryForReadAck. reqId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", msgRoomId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", msgId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", receiverChatId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", sentTime: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;-><init>(JLjava/lang/String;J)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, p4, p5, v1}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onReceiveMessageRead(JLjava/util/ArrayList;)V

    return-void
.end method

.method private deliverInboxEntryForRecall(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;JJLcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)V
    .locals 20

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getMsgId()J

    move-result-wide v3

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getReceiver()J

    move-result-wide v8

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getSentTime()J

    move-result-wide v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deliverInboxEntryForRecall reqId: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", msgRoomId: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", msgId: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", receiverChatId: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", sentTime: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;-><init>(JLjava/lang/String;J)V

    move-object/from16 v9, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move-wide v14, v3

    move-wide/from16 v16, v6

    move-object/from16 v18, v2

    invoke-interface/range {v9 .. v18}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onReceiveRecallMessageNoti(JJJJLcom/samsung/android/sdk/ssf/message/io/MessageAck;)V

    return-void
.end method

.method private deliverInboxEntryForTextMessage(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;JJLcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)V
    .locals 14

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getChatType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;->valueOf(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;)Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    move-result-object v13

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getMsgId()J

    move-result-wide v3

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getMsgType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;->valueOf(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;)Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    move-result-object v5

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getSentTime()J

    move-result-wide v10

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getSender()J

    move-result-wide v8

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getChatMsg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->hasMsgTtl()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getMsgTtl()I

    move-result v2

    move v12, v2

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverInboxEntryForTextMessage. reqId: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", msgRoomId: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", msgRoomType: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", msgId: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", msgType: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", senderChatId: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", sentTime: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", msgLifeTimeInSecs: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverInboxEntryForTextMessage. chatMsg: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "deliverInboxEntryForTextMessage. Invalid chatMsg."

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const/4 v2, -0x1

    move v12, v2

    goto/16 :goto_0

    :cond_1
    if-nez p1, :cond_2

    const-string v2, "deliverInboxEntryForTextMessage. Invalid listener."

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;-><init>(JLcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;JJ)V

    const/4 v3, -0x1

    if-ne v12, v3, :cond_3

    move-object v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-object v8, v13

    move-object v9, v2

    invoke-interface/range {v3 .. v9}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onReceiveMessage(JJLcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;)V

    goto :goto_1

    :cond_3
    move-object v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-object v8, v13

    move-object v9, v2

    move v10, v12

    invoke-interface/range {v3 .. v10}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onReceiveTimedMessage(JJLcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;I)V

    goto :goto_1
.end method

.method private deliverInboxEntryForUnseal(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;JJLcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)V
    .locals 8

    invoke-virtual {p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getMsgId()J

    move-result-wide v1

    invoke-virtual {p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getReceiver()J

    move-result-wide v6

    invoke-virtual {p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getSentTime()J

    move-result-wide v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deliverInboxEntryForUnseal reqId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", msgRoomId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", msgId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", receiverChatId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", sentTime: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;-><init>(JLjava/lang/String;J)V

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onReceiveTimedMessageRead(JJLcom/samsung/android/sdk/ssf/message/io/MessageAck;)V

    return-void
.end method

.method private deliverInviteReply(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteRequest;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteReply;Landroid/os/Bundle;)V
    .locals 29

    if-nez p2, :cond_0

    const-string v4, "deliverInviteReply. Invalid inviteRequest."

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onError()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteRequest;->getRequestId()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteRequest;->getChatroomId()J

    move-result-wide v8

    const/4 v14, 0x0

    const-wide/16 v10, -0x1

    const/16 v5, 0x2ee2

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-nez p4, :cond_1

    const-string v4, "Invalid clientData."

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "deliverInviteReply. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v15, v5

    move-object v5, v12

    move-object/from16 v26, v4

    move-object v4, v13

    move-wide/from16 v27, v10

    move-wide/from16 v11, v27

    move-object v10, v14

    move-object/from16 v14, v26

    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onInviteUsersToMessageRoom. resultCode: "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, ", resultMsg: "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult;

    invoke-direct {v13, v15, v14, v5, v4}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult;-><init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v5, p1

    move-object/from16 v14, p4

    invoke-interface/range {v5 .. v14}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onInviteUsersToMessageRoom(JJLjava/util/ArrayList;JLcom/samsung/android/sdk/ssf/message/io/MessageRoomResult;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const-string v4, "key_user_list"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "Invalid invitedUserListString."

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "deliverInviteReply. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v15, v5

    move-object v5, v12

    move-object/from16 v26, v4

    move-object v4, v13

    move-wide/from16 v27, v10

    move-wide/from16 v11, v27

    move-object v10, v14

    move-object/from16 v14, v26

    goto :goto_1

    :cond_2
    const-string v4, "key_user_list"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteRequest;->getInvitingMembersCount()I

    move-result v16

    if-lez v16, :cond_1c

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteRequest;->getInvitingMembersList()Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v19, v4

    :goto_2
    if-eqz v19, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    const-string v4, "Invalid invitedUserSvcDuidList."

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "deliverInviteReply. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v15, v5

    move-object v5, v12

    move-object/from16 v26, v4

    move-object v4, v13

    move-wide/from16 v27, v10

    move-wide/from16 v11, v27

    move-object v10, v14

    move-object/from16 v14, v26

    goto/16 :goto_1

    :cond_4
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    :try_start_0
    new-instance v16, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol$3;-><init>(Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;)V

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-nez v15, :cond_6

    :cond_5
    const-string v4, "Invalid invitedUserList."

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "deliverInviteReply. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v15, v5

    move-object v5, v12

    move-object/from16 v26, v4

    move-object v4, v13

    move-wide/from16 v27, v10

    move-wide/from16 v11, v27

    move-object v10, v14

    move-object/from16 v14, v26

    goto/16 :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Lcom/google/gson/JsonSyntaxException;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "deliverInviteReply. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v15, v5

    move-object v5, v12

    move-object/from16 v26, v4

    move-object v4, v13

    move-wide/from16 v27, v10

    move-wide/from16 v11, v27

    move-object v10, v14

    move-object/from16 v14, v26

    goto/16 :goto_1

    :cond_6
    if-nez p3, :cond_7

    const-string v4, "Invalid inviteReply."

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "deliverInviteReply. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v15, v5

    move-object v5, v12

    move-object/from16 v26, v4

    move-object v4, v13

    move-wide/from16 v27, v10

    move-wide/from16 v11, v27

    move-object v10, v14

    move-object/from16 v14, v26

    goto/16 :goto_1

    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteReply;->hasResult()Z

    move-result v15

    if-nez v15, :cond_8

    const-string v4, "inviteReply has no result."

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "deliverInviteReply. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v15, v5

    move-object v5, v12

    move-object/from16 v26, v4

    move-object v4, v13

    move-wide/from16 v27, v10

    move-wide/from16 v11, v27

    move-object v10, v14

    move-object/from16 v14, v26

    goto/16 :goto_1

    :cond_8
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteReply;->getResult()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v18

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteReply;->getRequestId()J

    move-result-wide v16

    cmp-long v15, v6, v16

    if-eqz v15, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "inviteReply is not for reqId: "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "deliverInviteReply. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v15, v5

    move-object v5, v12

    move-object/from16 v26, v4

    move-object v4, v13

    move-wide/from16 v27, v10

    move-wide/from16 v11, v27

    move-object v10, v14

    move-object/from16 v14, v26

    goto/16 :goto_1

    :cond_9
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteReply;->getChatroomId()J

    move-result-wide v16

    cmp-long v15, v8, v16

    if-eqz v15, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "inviteReply is not for msgRoomId: "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "deliverInviteReply. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v15, v5

    move-object v5, v12

    move-object/from16 v26, v4

    move-object v4, v13

    move-wide/from16 v27, v10

    move-wide/from16 v11, v27

    move-object v10, v14

    move-object/from16 v14, v26

    goto/16 :goto_1

    :cond_a
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteReply;->getSentTime()J

    move-result-wide v16

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getCode()I

    move-result v15

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getMsg()Ljava/lang/String;

    move-result-object v14

    const/4 v5, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->hasWrongReceiverDetail()Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getWrongReceiverDetail()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    move-result-object v5

    move-object v11, v5

    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deliverInviteReply. reqId: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", msgRoomId: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", serverResultCode: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v5, v10}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    if-eqz v11, :cond_1a

    invoke-virtual {v11}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->getDisabledReceiversCount()I

    move-result v5

    if-lez v5, :cond_d

    invoke-virtual {v11}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->getDisabledReceiversList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_b
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "deliverInviteReply. disabledUserChatId: "

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v10, v0}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_c
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/sdk/ssf/message/io/User;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/message/io/User;->getChatId()J

    move-result-wide v22

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    cmp-long v22, v22, v24

    if-nez v22, :cond_c

    new-instance v5, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/message/io/User;->getChatId()J

    move-result-wide v22

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/message/io/User;->getMsisdn()Ljava/lang/String;

    move-result-object v10

    sget-object v21, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;->DISABLED:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    invoke-direct {v5, v0, v1, v10, v2}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;-><init>(JLjava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    invoke-virtual {v11}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->getInvalidReceiversCount()I

    move-result v5

    if-lez v5, :cond_10

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->getInvalidReceiversList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_e
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "deliverInviteReply. invalidUserChatId: "

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v10, v0}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_f
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/sdk/ssf/message/io/User;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/message/io/User;->getChatId()J

    move-result-wide v22

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    cmp-long v22, v22, v24

    if-nez v22, :cond_f

    new-instance v5, Lcom/samsung/android/sdk/ssf/message/io/User;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/message/io/User;->getChatId()J

    move-result-wide v22

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/message/io/User;->getMsisdn()Ljava/lang/String;

    move-result-object v10

    move-wide/from16 v0, v22

    invoke-direct {v5, v0, v1, v10}, Lcom/samsung/android/sdk/ssf/message/io/User;-><init>(JLjava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_10
    invoke-virtual {v11}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->getDidViolationUsersCount()I

    move-result v5

    if-lez v5, :cond_1a

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->getDidViolationUsersList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_11
    :goto_7
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/sdk/ssf/message/io/User;

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    :cond_12
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v10, 0x2

    if-ge v5, v10, :cond_15

    const-string v5, "deliverInviteReply. Invalid duplicatedUserList."

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v5, v10}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_13
    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/message/io/User;->getChatId()J

    move-result-wide v22

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->getUserA()J

    move-result-wide v24

    cmp-long v22, v22, v24

    if-nez v22, :cond_14

    new-instance v22, Lcom/samsung/android/sdk/ssf/message/io/User;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/message/io/User;->getChatId()J

    move-result-wide v24

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/message/io/User;->getMsisdn()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2, v10}, Lcom/samsung/android/sdk/ssf/message/io/User;-><init>(JLjava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "deliverInviteReply. duplicatedUserA.duid: "

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/sdk/ssf/message/io/User;->getChatId()J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v10, v0}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_14
    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/message/io/User;->getChatId()J

    move-result-wide v22

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->getUserB()J

    move-result-wide v24

    cmp-long v22, v22, v24

    if-nez v22, :cond_11

    new-instance v22, Lcom/samsung/android/sdk/ssf/message/io/User;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/message/io/User;->getChatId()J

    move-result-wide v24

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/message/io/User;->getMsisdn()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2, v10}, Lcom/samsung/android/sdk/ssf/message/io/User;-><init>(JLjava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "deliverInviteReply. duplicatedUserB.duid: "

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/sdk/ssf/message/io/User;->getChatId()J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v10, v0}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_15
    new-instance v5, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult$DuplicatedMessageUsers;

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult$DuplicatedMessageUsers;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_16
    move-object v11, v13

    :goto_8
    packed-switch v15, :pswitch_data_0

    const/4 v10, 0x0

    move-object v4, v11

    move-object v5, v12

    move-wide/from16 v11, v16

    goto/16 :goto_1

    :pswitch_0
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_17
    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "deliverInviteReply. invitedUserChatId: "

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v10, v0}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_18
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/sdk/ssf/message/io/User;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/message/io/User;->getChatId()J

    move-result-wide v20

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-nez v20, :cond_18

    new-instance v5, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/message/io/User;->getChatId()J

    move-result-wide v20

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/message/io/User;->getMsisdn()Ljava/lang/String;

    move-result-object v10

    sget-object v19, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;->MEMBER:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    invoke-direct {v5, v0, v1, v10, v2}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;-><init>(JLjava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_19
    move-object v4, v11

    move-object v5, v12

    move-object/from16 v10, v18

    move-wide/from16 v11, v16

    goto/16 :goto_1

    :cond_1a
    move-object v11, v13

    goto :goto_8

    :cond_1b
    move-object v11, v5

    goto/16 :goto_3

    :cond_1c
    move-object/from16 v19, v4

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private deliverReadMessageReply(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ReadMessageRequest;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ReadMessageReply;Landroid/os/Bundle;)V
    .locals 18

    if-nez p2, :cond_0

    const-string v2, "deliverReadMessageReply. Invalid readMessageRequest."

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onError()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ReadMessageRequest;->getRequestId()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ReadMessageRequest;->getChatroomId()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ReadMessageRequest;->getInboxEntry()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getMsgId()J

    move-result-wide v8

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getMsgType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;->valueOf(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;)Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    move-result-object v10

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getSender()J

    move-result-wide v11

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getSentTime()J

    move-result-wide v13

    const/16 v3, 0x2ee2

    if-nez p3, :cond_1

    const-string v2, "Invalid readMessageReply."

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "deliverReadMessageReply. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onReadMessageUpto. resultCode: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", resultMsg: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;

    invoke-direct {v15, v3, v2}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;-><init>(ILjava/lang/String;)V

    move-object/from16 v3, p1

    move-object/from16 v16, p4

    invoke-interface/range {v3 .. v16}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onReadMessageUpto(JJJLcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;JJLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ReadMessageReply;->hasResult()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "readMessageReply has no result."

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "deliverReadMessageReply. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ReadMessageReply;->getResult()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ReadMessageReply;->getRequestId()J

    move-result-wide v16

    cmp-long v15, v4, v16

    if-eqz v15, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "readMessageReply is not for reqId: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "deliverReadMessageReply. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ReadMessageReply;->getChatroomId()J

    move-result-wide v16

    cmp-long v15, v6, v16

    if-eqz v15, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "readMessageReply is not for msgRoomId: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "deliverReadMessageReply. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getCode()I

    move-result v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getMsg()Ljava/lang/String;

    move-result-object v2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "deliverReadMessageReply. reqId: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", msgRoomId: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", lastMsgId: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", lastMsgType: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", lastMsgSenderChatId: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", lastMsgSentTimeInMillis: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", serverResultCode: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private deliverRecallMessageReply(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageRequest;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageReply;Landroid/os/Bundle;)V
    .locals 12

    if-nez p2, :cond_0

    const-string v0, "recallMessageRequest. Invalid recallMessageRequest."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onError()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageRequest;->getRequestId()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageRequest;->getChatroomId()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageRequest;->getMsgId()J

    move-result-wide v6

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageRequest;->getSentTime()J

    move-result-wide v8

    const/16 v1, 0x2ee2

    if-nez p3, :cond_1

    const-string v0, "Invalid recallMessageReply."

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "recallMessageReply. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "recallMessageReply. resultCode: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", resultMsg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;

    invoke-direct {v10, v1, v0}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;-><init>(ILjava/lang/String;)V

    move-object v1, p1

    move-object/from16 v11, p4

    invoke-interface/range {v1 .. v11}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onRecallMessageReply(JJJJLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageReply;->hasResult()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "recallMessageReply has no result."

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "recallMessageReply. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageReply;->getResult()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v0

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageReply;->getRequestId()J

    move-result-wide v10

    cmp-long v10, v2, v10

    if-eqz v10, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "recallMessageReply is not for reqId: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "recallMessageReply. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageReply;->getChatroomId()J

    move-result-wide v10

    cmp-long v10, v4, v10

    if-eqz v10, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "recallMessageReply is not for msgRoomId: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "recallMessageReply. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getMsg()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "recallMessageReply. reqId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", request id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", msgRoomId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", serverResultCode: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private deliverRemoveMemberReply(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RemoveMemberRequest;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RemoveMemberReply;Landroid/os/Bundle;)V
    .locals 18

    if-nez p2, :cond_0

    const-string v2, "deliverRemoveMemberReply. Invalid removeMemberRequest."

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onError()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RemoveMemberRequest;->getRequestId()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RemoveMemberRequest;->getChatroomId()J

    move-result-wide v6

    const/4 v12, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const/16 v3, 0x2ee2

    const/4 v2, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RemoveMemberRequest;->getRemovingMembersCount()I

    move-result v8

    if-lez v8, :cond_a

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RemoveMemberRequest;->getRemovingMembersList()Ljava/util/List;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v13, v2

    :goto_1
    if-eqz v13, :cond_1

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string v2, "Invalid expelledMemberSvcDuidList."

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "deliverRemoveMemberReply. "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v8, v13}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v12

    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onExpelMessageRoomMember. resultCode: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", resultMsg: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;

    invoke-direct {v12, v3, v2}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;-><init>(ILjava/lang/String;)V

    move-object/from16 v3, p1

    move-object/from16 v13, p4

    invoke-interface/range {v3 .. v13}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onExpelMessageRoomMember(JJLjava/util/ArrayList;Ljava/util/ArrayList;JLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    const-string v2, "Invalid removeMemberReply."

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "deliverRemoveMemberReply. "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v8, v13}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v12

    goto :goto_2

    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RemoveMemberReply;->hasResult()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "removeMemberReply has no result."

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "deliverRemoveMemberReply. "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v8, v13}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v12

    goto :goto_2

    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RemoveMemberReply;->getResult()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RemoveMemberReply;->getRequestId()J

    move-result-wide v16

    cmp-long v2, v4, v16

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeMemberReply is not for reqId: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "deliverRemoveMemberReply. "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v8, v13}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v12

    goto/16 :goto_2

    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RemoveMemberReply;->getChatroomId()J

    move-result-wide v16

    cmp-long v2, v6, v16

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeMemberReply is not for msgRoomId: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "deliverRemoveMemberReply. "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v8, v13}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v12

    goto/16 :goto_2

    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RemoveMemberReply;->getSentTime()J

    move-result-wide v10

    invoke-virtual {v14}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getCode()I

    move-result v8

    invoke-virtual {v14}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getMsg()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    invoke-virtual {v14}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->hasWrongReceiverDetail()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-virtual {v14}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getWrongReceiverDetail()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    move-result-object v2

    :cond_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "deliverRemoveMemberReply. reqId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", msgRoomId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", sentTimeInMillis: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", serverResultCode: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->getNotExistingCount()I

    move-result v14

    if-lez v14, :cond_8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->getNotExistingList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "deliverRemoveMemberReply. nonMemberUserChatId: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    packed-switch v8, :pswitch_data_0

    move-object v2, v3

    move v3, v8

    move-object v8, v12

    goto/16 :goto_2

    :pswitch_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "deliverRemoveMemberReply. expelledMemberChatId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    move-object v2, v3

    move v3, v8

    move-object v8, v12

    goto/16 :goto_2

    :cond_a
    move-object v13, v2

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private deliverSubscribeTypingStatusReply(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SubscribeTypingStatus;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SubscribeTypingStatusReply;Landroid/os/Bundle;)V
    .locals 8

    if-nez p2, :cond_0

    const-string v0, "deliverSubscribeTypingStatusReply. Invalid subscribeTypingStatus."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onError()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SubscribeTypingStatus;->getRequestId()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SubscribeTypingStatus;->getChatroomId()J

    move-result-wide v4

    const/16 v1, 0x2ee2

    if-nez p3, :cond_1

    const-string v0, "Invalid subscribeTypingStatusReply."

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverSubscribeTypingStatusReply. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSubscribeTypingStatusReply. resultCode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", resultMsg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;

    invoke-direct {v6, v1, v0}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;-><init>(ILjava/lang/String;)V

    move-object v1, p1

    move-object v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onSubscribeTypingStatusReply(JJLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SubscribeTypingStatusReply;->hasResult()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "subscribeTypingStatusReply has no result."

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverSubscribeTypingStatusReply. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SubscribeTypingStatusReply;->getResult()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v0

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SubscribeTypingStatusReply;->getRequestId()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-eqz v6, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "subscribeTypingStatusReply is not for reqId: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverSubscribeTypingStatusReply. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SubscribeTypingStatusReply;->getChatroomId()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-eqz v6, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "subscribeTypingStatusReply is not for msgRoomId: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverSubscribeTypingStatusReply. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getMsg()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverSubscribeTypingStatusReply. reqId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", request id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", msgRoomId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", serverResultCode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private deliverTypingUpdated(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;)V
    .locals 12

    if-nez p2, :cond_0

    const-string v0, "deliverTypingUpdated. Invalid typingUpdated."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onError()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->getRequestId()J

    move-result-wide v8

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->getChatroomId()J

    move-result-wide v10

    const/16 v1, 0x2ee2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->hasState()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "typingUpdated has no state."

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deliverTypingUpdated. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTypingUpdated. resultCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultMsg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;

    invoke-direct {v2, v1, v0}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomTypingStatus;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->getSender()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->getContentType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomTypingStatus$TypingStatusContentType;->valueOf(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;)Lcom/samsung/android/sdk/ssf/message/io/MessageRoomTypingStatus$TypingStatusContentType;

    move-result-object v5

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->getRefresh()I

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomTypingStatus;-><init>(JLjava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageRoomTypingStatus$TypingStatusContentType;I)V

    move-object v3, p1

    move-wide v4, v8

    move-wide v6, v10

    move-object v8, v1

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onTypingUpdated(JJLcom/samsung/android/sdk/ssf/message/io/MessageRoomTypingStatus;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->hasSender()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "typingUpdated has no sender."

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deliverTypingUpdated. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->hasContentType()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "typingUpdated has no contentType."

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deliverTypingUpdated. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const/16 v1, 0x2710

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deliverTypingUpdated. reqId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", request id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msgRoomId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", serverResultCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private deliverUnsealMessageReply(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsealMessageRequest;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsealMessageReply;Landroid/os/Bundle;)V
    .locals 8

    if-nez p2, :cond_0

    const-string v0, "deliverUnsealMessageReply. Invalid unsealMessageRequest."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onError()V

    :goto_0
    return-void

    :cond_0
    const/4 v6, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsealMessageReply;->getResult()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v6, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v1, v0}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;-><init>(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsealMessageRequest;->getRequestId()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsealMessageRequest;->getChatroomId()J

    move-result-wide v4

    move-object v1, p1

    move-object v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onReadTimedMessage(JJLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private deliverUnsubscribeTypingStatusReply(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;Landroid/os/Bundle;)V
    .locals 8

    if-nez p2, :cond_0

    const-string v0, "deliverUnsubscribeTypingStatusReply. Invalid unsubscribeTypingStatus."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onError()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;->getRequestId()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;->getChatroomId()J

    move-result-wide v4

    const/16 v1, 0x2ee2

    if-nez p3, :cond_1

    const-string v0, "Invalid unsubscribeTypingStatusReply."

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverUnsubscribeTypingStatusReply. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onUnsubscribeTypingStatusReply. resultCode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", resultMsg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;

    invoke-direct {v6, v1, v0}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;-><init>(ILjava/lang/String;)V

    move-object v1, p1

    move-object v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onUnsubscribeTypingStatusReply(JJLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->hasResult()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "unsubscribeTypingStatusReply has no result."

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverUnsubscribeTypingStatusReply. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->getResult()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v0

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->getRequestId()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-eqz v6, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unsubscribeTypingStatusReply is not for reqId: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverUnsubscribeTypingStatusReply. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->getChatroomId()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-eqz v6, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unsubscribeTypingStatusReply is not for msgRoomId: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverUnsubscribeTypingStatusReply. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getMsg()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverUnsubscribeTypingStatusReply. reqId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", request id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", msgRoomId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", serverResultCode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private parseDeliveryAck(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageAck;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "parseDeliveryAck. Invalid allowChatDAList."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;->getMsgId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const-string v0, "parseDeliveryAck. Invalid msgId."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;->getUserId()J

    move-result-wide v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseDeliveryAck. receiverChatId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;->getMsgId()J

    move-result-wide v1

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;->getTimestamp()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;-><init>(JLjava/lang/String;J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deliveryAckEntry receiver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;->receiverChatid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msgId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;->msgId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sentTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;->sentTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "parseDeliveryAck. Failed to get MessageAckList. it might be all undelivered"

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    :cond_4
    move-object v0, v7

    goto/16 :goto_0
.end method

.method private parseReadAck(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageAck;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "parseAnswerBack. Invalid waterMarkList."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;->getMsgId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const-string v0, "parseAnswerBack. Invalid msgId."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;->getUserId()J

    move-result-wide v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseAnswerBack. receiverChatId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;->getMsgId()J

    move-result-wide v1

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;->getTimestamp()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;-><init>(JLjava/lang/String;J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaterMarkEntry receiver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;->receiverChatid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msgId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;->msgId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sentTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;->sentTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "parseAnswerBack. Failed to get MessageAckList. it might be all unread"

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    :cond_4
    move-object v0, v7

    goto/16 :goto_0
.end method

.method private sendForwardOnlineMessageReply(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;)V
    .locals 10

    const/4 v6, 0x0

    if-nez p2, :cond_0

    const-string v0, "sendForwardOnlineMessageReply. Invalid forwardOnlineMessage."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->getRequestId()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->getChatroomId()J

    move-result-wide v0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessageReply;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessageReply$Builder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessageReply$Builder;->setRequestId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessageReply$Builder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessageReply$Builder;->setChatroomId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessageReply$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessageReply$Builder;->setMarkAsRead(Z)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessageReply$Builder;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessageReply$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessageReply;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendForwardOnlineMessageReply. reqId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessageReply;->getRequestId()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", chatroomId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessageReply;->getChatroomId()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", markAsRead: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessageReply;->getMarkAsRead()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    sget-object v4, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ForwardOnlineMessageReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->send(Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;)V

    goto :goto_0
.end method

.method private sendForwardUnreadMessageReply(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;)V
    .locals 8

    if-nez p2, :cond_0

    const-string v0, "sendForwardUnreadMessageReply. Invalid forwardUnreadMessage."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->getRequestId()J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->hasNextPaginationKey()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->getNextPaginationKey()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessageReply;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessageReply$Builder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessageReply$Builder;->setRequestId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessageReply$Builder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessageReply$Builder;->setMaxCount(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessageReply$Builder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessageReply$Builder;->setNextPaginationKey(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessageReply$Builder;

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessageReply$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessageReply;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendForwardUnreadMessageReply. reqId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessageReply;->getRequestId()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessageReply;->getMaxCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nextPaginationKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessageReply;->getNextPaginationKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    sget-object v4, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ForwardUnreadMessageReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->send(Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;)V

    goto :goto_0
.end method


# virtual methods
.method public deliverMessage(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "deliverMessage. Invalid channelSocket."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string v0, "deliverMessage. Invalid listener."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/SsfClient;->validateInstance()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "deliverMessage. Invalid client."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-nez p4, :cond_4

    const-string v0, "deliverMessage. Invalid channelMsg."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onError()V

    goto :goto_0

    :cond_4
    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getType()Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "deliverMessage. Invalid channelMsgType."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deliverMessage. channelMsgType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol$4;->$SwitchMap$com$samsung$android$sdk$ssf$message$server$MessagePayload$Type:[I

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "deliverMessage. Unknown channelMsgType."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->sendForwardOnlineMessageReply(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;)V

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->deliverForwardOnlineMessage(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->sendForwardUnreadMessageReply(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;)V

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->deliverForwardUnreadMessage(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->deliverTypingUpdated(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public deliverReply(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;Landroid/os/Bundle;)V
    .locals 6

    if-nez p1, :cond_0

    const-string v0, "deliverReply. Invalid listener."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/SsfClient;->validateInstance()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "deliverReply. Invalid client."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    const-string v0, "deliverReply. Invalid reqChannelMsg."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onError()V

    goto :goto_0

    :cond_3
    if-nez p4, :cond_4

    const-string v0, "deliverReply. Invalid replyChannelMsg."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onError()V

    goto :goto_0

    :cond_4
    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getType()Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "deliverReply. Invalid replyChannelMsgType."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deliverReply. replyChannelMsgType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol$4;->$SwitchMap$com$samsung$android$sdk$ssf$message$server$MessagePayload$Type:[I

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "deliverReply. Unknown replyChannelMsgType."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomRequest;

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomReply;

    invoke-direct {p0, p1, v0, v1, p5}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->deliverCreateChatroomReply(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomRequest;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomReply;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatRequest;

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatReply;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->deliverChatReply(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatRequest;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatReply;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;

    invoke-direct {p0, p1, v0, v1, p5}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->deliverAllowChatReply(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageReply;

    invoke-direct {p0, p1, v0, v1, p5}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->deliverGetAllUnreadMessageReply(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageReply;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ReadMessageRequest;

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ReadMessageReply;

    invoke-direct {p0, p1, v0, v1, p5}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->deliverReadMessageReply(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ReadMessageRequest;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ReadMessageReply;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatRequest;

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatReply;

    invoke-direct {p0, p1, v0, v1, p5}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->deliverEndChatReply(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatRequest;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatReply;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteRequest;

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteReply;

    invoke-direct {p0, p1, v0, v1, p5}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->deliverInviteReply(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteRequest;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteReply;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RemoveMemberRequest;

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RemoveMemberReply;

    invoke-direct {p0, p1, v0, v1, p5}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->deliverRemoveMemberReply(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RemoveMemberRequest;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RemoveMemberReply;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeOwnerRequest;

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeOwnerReply;

    invoke-direct {p0, p1, v0, v1, p5}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->deliverChangeOwnerReply(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeOwnerRequest;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeOwnerReply;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaRequest;

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaReply;

    invoke-direct {p0, p1, v0, v1, p5}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->deliverChangeChatroomMetaReply(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaRequest;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaReply;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SubscribeTypingStatus;

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SubscribeTypingStatusReply;

    invoke-direct {p0, p1, v0, v1, p5}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->deliverSubscribeTypingStatusReply(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SubscribeTypingStatus;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SubscribeTypingStatusReply;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;

    invoke-direct {p0, p1, v0, v1, p5}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->deliverUnsubscribeTypingStatusReply(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DestroyChatroomRequest;

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DestroyChatroomReply;

    invoke-direct {p0, p1, v0, v1, p5}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->deliverDestroyChatroomReply(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DestroyChatroomRequest;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DestroyChatroomReply;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsealMessageRequest;

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsealMessageReply;

    invoke-direct {p0, p1, v0, v1, p5}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->deliverUnsealMessageReply(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsealMessageRequest;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsealMessageReply;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageRequest;

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageReply;

    invoke-direct {p0, p1, v0, v1, p5}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->deliverRecallMessageReply(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageRequest;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageReply;Landroid/os/Bundle;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public deliverRequestError(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 16

    if-nez p1, :cond_0

    const-string v2, "deliverRequestError. Invalid listener."

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string v2, "deliverRequestError. Invalid reqChannelMsg."

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onError()V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getReqId()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getType()Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deliverRequestError. reqId: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", reqChannelMsgType: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", resultCode: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", resultMsg: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol$4;->$SwitchMap$com$samsung$android$sdk$ssf$message$server$MessagePayload$Type:[I

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    const-string v2, "deliverRequestError. Unknown reqChannelMsgType."

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    new-instance v7, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult;-><init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move-object/from16 v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onCreateMessageRoom(JLcom/samsung/android/sdk/ssf/message/io/MessageRoom;Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatRequest;

    new-instance v9, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v9, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatRequest;->getChatroomId()J

    move-result-wide v6

    const/4 v8, 0x0

    move-object/from16 v3, p1

    move-object/from16 v10, p5

    invoke-interface/range {v3 .. v10}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onSendMessage(JJLcom/samsung/android/sdk/ssf/message/io/MessageInfo;Lcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;

    new-instance v7, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v7, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->getNeedOrderedChatroomMemberList()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move-object/from16 v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onJoinMessageRoom(JLcom/samsung/android/sdk/ssf/message/io/MessageRoom;Lcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->getChatroomId()J

    move-result-wide v12

    move-object/from16 v9, p1

    move-wide v10, v4

    move-object v14, v7

    move-object/from16 v15, p5

    invoke-interface/range {v9 .. v15}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onEnterMessageRoom(JJLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_3
    new-instance v2, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-interface {v0, v4, v5, v2, v1}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onGetAllUnreadMessages(JLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ReadMessageRequest;

    new-instance v8, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v8, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ReadMessageRequest;->getChatroomId()J

    move-result-wide v6

    move-object/from16 v3, p1

    move-object/from16 v9, p5

    invoke-interface/range {v3 .. v9}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onReadTimedMessage(JJLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatRequest;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatRequest;->getEndChatEntriesCount()I

    move-result v7

    if-ge v3, v7, :cond_3

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatRequest;->getEndChatEntries(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->getChatroomId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    new-instance v7, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v7, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;-><init>(ILjava/lang/String;)V

    move-object/from16 v3, p1

    move-object/from16 v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onLeaveMessageRooms(JLjava/util/ArrayList;Lcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteRequest;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteRequest;->getInvitingMembersList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    new-instance v7, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v3, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, v10, v11, v3, v9}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;-><init>(JLjava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;)V

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v11, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v11, v0, v1, v3, v6}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult;-><init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteRequest;->getChatroomId()J

    move-result-wide v6

    const-wide/16 v9, -0x1

    move-object/from16 v3, p1

    move-object/from16 v12, p5

    invoke-interface/range {v3 .. v12}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onInviteUsersToMessageRoom(JJLjava/util/ArrayList;JLcom/samsung/android/sdk/ssf/message/io/MessageRoomResult;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RemoveMemberRequest;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RemoveMemberRequest;->getRemovingMembersList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    new-instance v12, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v12, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RemoveMemberRequest;->getChatroomId()J

    move-result-wide v6

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    move-object/from16 v3, p1

    move-object/from16 v13, p5

    invoke-interface/range {v3 .. v13}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onExpelMessageRoomMember(JJLjava/util/ArrayList;Ljava/util/ArrayList;JLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeOwnerRequest;

    new-instance v12, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v12, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeOwnerRequest;->getChatroomId()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    move-object/from16 v3, p1

    move-object/from16 v13, p5

    invoke-interface/range {v3 .. v13}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onChangeMessageRoomOwner(JJJJLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaRequest;

    new-instance v9, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v9, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaRequest;->getChatroomId()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaRequest;->getTitle()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v3, p1

    move-object/from16 v10, p5

    invoke-interface/range {v3 .. v10}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onChangeMessageRoomTitle(JJLjava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DestroyChatroomRequest;

    new-instance v7, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v7, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DestroyChatroomRequest;->getChatroomId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v3, p1

    move-object/from16 v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onDestroyMessageRoom(JLjava/lang/Long;Lcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageRequest;

    new-instance v12, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v12, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageRequest;->getChatroomId()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageRequest;->getMsgId()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    move-object/from16 v3, p1

    move-object/from16 v13, p5

    invoke-interface/range {v3 .. v13}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onRecallMessageReply(JJJJLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SubscribeTypingStatus;

    new-instance v8, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v8, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SubscribeTypingStatus;->getChatroomId()J

    move-result-wide v6

    move-object/from16 v3, p1

    move-object/from16 v9, p5

    invoke-interface/range {v3 .. v9}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onSubscribeTypingStatusReply(JJLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public sendAllowChatRequest(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;JJZZILandroid/os/Bundle;)V
    .locals 10

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalAccessException;

    const-string v3, "Invalid channelSocket."

    invoke-direct {v2, v3}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->setRequestId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->setChatroomId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v2

    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->setMaxCount(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->setNeedReadAck(Z)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v4

    if-nez p6, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v4, v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->setNeedDeliveryAck(Z)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->setNeedOrderedChatroomMemberList(Z)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->setNeedChatroomMeta(Z)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->setIsAutoAllow(Z)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;

    move-result-object v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendAllowChatRequest. reqId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->getRequestId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", chatroomId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->getChatroomId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", maxCount: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->getMaxCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", needReadAck: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->getNeedReadAck()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", needDeliveryAck: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->getNeedDeliveryAck()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", needOrderedChatroomMemberList: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->getNeedOrderedChatroomMemberList()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", needChatroomMeta: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->getNeedChatroomMeta()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", isAutoAllow: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->getIsAutoAllow()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    sget-object v6, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->AllowChatRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const/4 v8, 0x0

    move-wide v4, p2

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->AllowChatReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    move-object/from16 v0, p9

    move/from16 v1, p8

    invoke-virtual {p1, v3, v2, v0, v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->send(Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Landroid/os/Bundle;I)V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public sendChangeChatroomMetaRequest(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;JJLjava/lang/String;IILandroid/os/Bundle;)V
    .locals 10

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "sendChangeChatroomMetaRequest. Invalid msgRoomTitle and msgLifeTimeInSecs."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaRequest$Builder;->setRequestId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaRequest$Builder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaRequest$Builder;->setChatroomId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaRequest$Builder;

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaRequest$Builder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaRequest$Builder;

    :cond_1
    const/4 v3, -0x1

    move/from16 v0, p7

    if-eq v0, v3, :cond_2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaRequest$Builder;->setMsgTtl(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaRequest$Builder;

    :cond_2
    if-nez p1, :cond_3

    new-instance v2, Ljava/lang/IllegalAccessException;

    const-string v3, "sendChangeChatroomMetaRequest. Invalid channelSocket."

    invoke-direct {v2, v3}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaRequest$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaRequest;

    move-result-object v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendChangeChatroomMetaRequest. reqId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaRequest$Builder;->getRequestId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", chatroomId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaRequest$Builder;->getChatroomId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgTtl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaRequest$Builder;->getMsgTtl()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendChangeChatroomMetaRequest. title: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaRequest$Builder;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    sget-object v6, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ChangeChatroomMetaRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const/4 v8, 0x0

    move-wide v4, p2

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ChangeChatroomMetaReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    move-object/from16 v0, p9

    move/from16 v1, p8

    invoke-virtual {p1, v3, v2, v0, v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->send(Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Landroid/os/Bundle;I)V

    return-void
.end method

.method public sendChangeOwnerRequest(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Lcom/samsung/android/sdk/ssf/SsfClient;JJJJILandroid/os/Bundle;)V
    .locals 9

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalAccessException;

    const-string v3, "sendChangeOwnerRequest. Invalid channelSocket."

    invoke-direct {v2, v3}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeOwnerRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeOwnerRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeOwnerRequest$Builder;->setRequestId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeOwnerRequest$Builder;

    move-result-object v3

    move-wide/from16 v0, p7

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeOwnerRequest$Builder;->setChatroomId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeOwnerRequest$Builder;

    move-result-object v3

    move-wide/from16 v0, p9

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeOwnerRequest$Builder;->setNewOwner(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeOwnerRequest$Builder;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeOwnerRequest$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeOwnerRequest;

    move-result-object v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendChangeOwnerRequest. reqId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeOwnerRequest$Builder;->getRequestId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", myChatId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", chatroomId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeOwnerRequest$Builder;->getChatroomId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newOwnerSvcDuid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeOwnerRequest$Builder;->getNewOwner()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    sget-object v6, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ChangeOwnerRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const/4 v8, 0x0

    move-wide v4, p5

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ChangeOwnerReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    move-object/from16 v0, p12

    move/from16 v1, p11

    invoke-virtual {p1, v3, v2, v0, v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->send(Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Landroid/os/Bundle;I)V

    return-void
.end method

.method public sendChannelAuthRequest(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;JJLcom/samsung/android/sdk/ssf/SsfClient;)V
    .locals 8

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid channelSocket."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p6, :cond_1

    invoke-virtual {p6}, Lcom/samsung/android/sdk/ssf/SsfClient;->validateInstance()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid client."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChannelAuthRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChannelAuthRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChannelAuthRequest$Builder;->setRequestId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChannelAuthRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChannelAuthRequest$Builder;->setUserId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChannelAuthRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChannelAuthRequest$Builder;->setDeviceId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChannelAuthRequest$Builder;

    move-result-object v1

    invoke-virtual {p6}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChannelAuthRequest$Builder;->setAccessToken(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChannelAuthRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChannelAuthRequest$Builder;->setAppId(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChannelAuthRequest$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChannelAuthRequest$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChannelAuthRequest;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendChannelAuthRequest. reqId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChannelAuthRequest;->getRequestId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", myChatId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChannelAuthRequest;->getUserId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChannelAuthRequest;->getDeviceId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendChannelAuthRequest. accessToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChannelAuthRequest;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    sget-object v4, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ChannelAuthRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const/4 v6, 0x0

    move-wide v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->authenticate(Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;)V

    return-void
.end method

.method public sendChatRequest(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;JJJLcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;IILandroid/os/Bundle;)V
    .locals 10

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;->MEDIA:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    move-object/from16 v0, p8

    if-ne v0, v2, :cond_1

    invoke-virtual/range {p10 .. p10}, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;->getType()Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid msgMedia.type."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v2, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;

    invoke-virtual/range {p10 .. p10}, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;->getType()Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;->getValue()I

    move-result v3

    invoke-virtual/range {p10 .. p10}, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;->getFileContents()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual/range {p10 .. p10}, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;->getShopContentIds()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual/range {p10 .. p10}, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p10 .. p10}, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;->getLatitude()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p10 .. p10}, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;->getLongitude()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v4, p9

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;-><init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/google/gson/GsonBuilder;

    invoke-direct {v3}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p9

    :cond_1
    if-nez p1, :cond_2

    new-instance v2, Ljava/lang/IllegalAccessException;

    const-string v3, "Invalid channelSocket."

    invoke-direct {v2, v3}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;

    move-result-object v2

    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->setMsgId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;

    move-result-object v3

    invoke-virtual/range {p8 .. p8}, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;->getValue()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->setMsgType(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->setChatMsg(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;

    const/4 v3, -0x1

    move/from16 v0, p11

    if-eq v0, v3, :cond_3

    move/from16 v0, p11

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->setMsgTtl(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;

    :cond_3
    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatRequest$Builder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatRequest$Builder;->setRequestId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatRequest$Builder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatRequest$Builder;->setChatroomId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatRequest$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatRequest$Builder;->addChatMessageParams(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatRequest$Builder;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatRequest$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatRequest;

    move-result-object v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendChatRequest. reqId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatRequest;->getRequestId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", chatroomId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatRequest;->getChatroomId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->getMsgId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->getMsgType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hasChatMsg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->hasChatMsg()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgTtl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->hasMsgTtl()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->getMsgTtl()I

    move-result p11

    :cond_4
    move/from16 v0, p11

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendChatRequest. chatMsg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->getChatMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    sget-object v6, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ChatRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const/4 v8, 0x0

    move-wide v4, p2

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ChatReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    move-object/from16 v0, p13

    move/from16 v1, p12

    invoke-virtual {p1, v3, v2, v0, v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->send(Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Landroid/os/Bundle;I)V

    return-void
.end method

.method public sendClientEchoReply(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ClientEcho;)V
    .locals 8

    if-nez p1, :cond_0

    const-string v0, "sendClientEchoReply. Invalid channelSocket."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string v0, "sendClientEchoReply. Invalid clientEcho."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ClientEcho;->getRequestId()J

    move-result-wide v2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ClientEchoReply;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ClientEchoReply$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ClientEchoReply$Builder;->setRequestId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ClientEchoReply$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ClientEchoReply$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ClientEchoReply;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendClientEchoReply. reqId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ClientEchoReply;->getRequestId()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    sget-object v4, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ClientEchoReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->send(Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;)V

    goto :goto_0
.end method

.method public sendCreateChatroomRequest(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Lcom/samsung/android/sdk/ssf/SsfClient;JJLcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;Ljava/util/ArrayList;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;",
            "Lcom/samsung/android/sdk/ssf/SsfClient;",
            "JJ",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;",
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

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/SsfClient;->validateInstance()Z

    if-nez p7, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid msgRoomType."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual/range {p7 .. p7}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;->getValue()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid chatType."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->MONO_GROUP:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    if-eq v4, v2, :cond_3

    if-eqz p8, :cond_2

    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid msgRoomMemberList."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    if-nez p1, :cond_4

    new-instance v2, Ljava/lang/IllegalAccessException;

    const-string v3, "Invalid channelSocket."

    invoke-direct {v2, v3}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    if-eqz p8, :cond_6

    new-instance v2, Lcom/google/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ssf/message/io/User;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/User;->getChatId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    move-object v2, v3

    :cond_6
    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomRequest$Builder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomRequest$Builder;->setRequestId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomRequest$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomRequest$Builder;->setChatType(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomRequest$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomRequest$Builder;->addAllReceivers(Ljava/lang/Iterable;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomRequest$Builder;

    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomRequest$Builder;->setChatroomTitle(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomRequest$Builder;

    :cond_7
    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomRequest$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomRequest;

    move-result-object v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendCreateChatroomRequest. reqId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomRequest;->getRequestId()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", myChatId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", chatType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomRequest;->getChatType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", receiversList: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomRequest;->getReceiversList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", hasChatroomTitle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomRequest;->hasChatroomTitle()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", getUserId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomRequest;->getUserId()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomRequest$Builder;->hasChatroomTitle()Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendCreateChatroomRequest. chatroomTitle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomRequest;->getChatroomTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    new-instance v3, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    sget-object v6, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->CreateChatroomRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const/4 v8, 0x0

    move-wide/from16 v4, p5

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    if-nez p11, :cond_9

    new-instance p11, Landroid/os/Bundle;

    invoke-direct/range {p11 .. p11}, Landroid/os/Bundle;-><init>()V

    :cond_9
    const-string v4, "key_user_list"

    move-object/from16 v0, p11

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->CreateChatroomReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    move-object/from16 v0, p11

    move/from16 v1, p10

    invoke-virtual {p1, v3, v2, v0, v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->send(Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Landroid/os/Bundle;I)V

    return-void
.end method

.method public sendDestroyChatroomRequest(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;JJILandroid/os/Bundle;)V
    .locals 8

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "sendDestroyChatroomRequest. Invalid channelSocket."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DestroyChatroomRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DestroyChatroomRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DestroyChatroomRequest$Builder;->setRequestId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DestroyChatroomRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DestroyChatroomRequest$Builder;->setChatroomId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DestroyChatroomRequest$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DestroyChatroomRequest$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DestroyChatroomRequest;

    move-result-object v5

    new-instance v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    sget-object v4, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->DestroyChatroomRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const/4 v6, 0x0

    move-wide v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDestroyChatroomRequest. reqId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DestroyChatroomRequest$Builder;->getRequestId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", chatroomId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DestroyChatroomRequest$Builder;->getChatroomId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->DestroyChatroomReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    invoke-virtual {p1, v1, v0, p7, p6}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->send(Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Landroid/os/Bundle;I)V

    return-void
.end method

.method public sendEndChatRequest(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;JLjava/util/ArrayList;ILandroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/LeaveChatRoomData;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "sendEndChatRequest. Invalid channelSocket."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/LeaveChatRoomData;

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/message/io/LeaveChatRoomData;->chatRoomId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;->setChatroomId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;

    iget v0, v0, Lcom/samsung/android/sdk/ssf/message/io/LeaveChatRoomData;->denyInvitation:I

    if-nez v0, :cond_1

    invoke-virtual {v3, v6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;->setDenyInvitation(Z)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;->setDenyInvitation(Z)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatRequest$Builder;->setRequestId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatRequest$Builder;->addAllEndChatEntries(Ljava/lang/Iterable;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatRequest$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatRequest$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatRequest;

    move-result-object v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendEndChatRequest. reqId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatRequest$Builder;->getRequestId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", endChatEntriesList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatRequest$Builder;->getEndChatEntriesList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    sget-object v4, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->EndChatRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    move-wide v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->EndChatReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    invoke-virtual {p1, v1, v0, p6, p5}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->send(Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Landroid/os/Bundle;I)V

    return-void
.end method

.method public sendGetAllUnreadMessageRequest(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;JII)V
    .locals 8

    if-nez p1, :cond_0

    const-string v0, "sendForwardOnlineMessageReply. Invalid channelSocket."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;->setRequestId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;->setMaxCount(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;

    move-result-object v5

    new-instance v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    sget-object v4, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->GetAllUnreadMessageRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const/4 v6, 0x0

    move-wide v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->GetAllUnreadMessageReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, p5}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->send(Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Landroid/os/Bundle;I)V

    goto :goto_0
.end method

.method public sendInviteRequest(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Lcom/samsung/android/sdk/ssf/SsfClient;JJJLjava/util/ArrayList;ILandroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;",
            "Lcom/samsung/android/sdk/ssf/SsfClient;",
            "JJJ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/User;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    if-eqz p9, :cond_0

    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "sendInviteRequest. Invalid userList."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-nez p1, :cond_2

    new-instance v2, Ljava/lang/IllegalAccessException;

    const-string v3, "sendInviteRequest. Invalid channelSocket."

    invoke-direct {v2, v3}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ssf/message/io/User;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/User;->getChatId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteRequest$Builder;->setRequestId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteRequest$Builder;

    move-result-object v4

    move-wide/from16 v0, p7

    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteRequest$Builder;->setChatroomId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteRequest$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteRequest$Builder;->addAllInvitingMembers(Ljava/lang/Iterable;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteRequest$Builder;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteRequest$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteRequest;

    move-result-object v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendInviteRequest. reqId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteRequest$Builder;->getRequestId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", myChatId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", chatroomId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteRequest$Builder;->getChatroomId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", invitingMembersList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteRequest$Builder;->getInvitingMembersList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    sget-object v6, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->InviteRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const/4 v8, 0x0

    move-wide v4, p5

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    new-instance v2, Lcom/google/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-nez p11, :cond_4

    new-instance p11, Landroid/os/Bundle;

    invoke-direct/range {p11 .. p11}, Landroid/os/Bundle;-><init>()V

    :cond_4
    const-string v4, "key_user_list"

    move-object/from16 v0, p11

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->InviteReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    move-object/from16 v0, p11

    move/from16 v1, p10

    invoke-virtual {p1, v3, v2, v0, v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->send(Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Landroid/os/Bundle;I)V

    return-void
.end method

.method public sendReadMessageRequest(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Lcom/samsung/android/sdk/ssf/SsfClient;JJJJLcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;JJILandroid/os/Bundle;)V
    .locals 9

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalAccessException;

    const-string v3, "Invalid channelSocket."

    invoke-direct {v2, v3}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

    move-result-object v2

    move-wide/from16 v0, p9

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->setMsgId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

    move-result-object v3

    invoke-virtual/range {p11 .. p11}, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;->getValue()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->setMsgType(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

    move-result-object v3

    move-wide/from16 v0, p12

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->setSender(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

    move-result-object v3

    move-wide/from16 v0, p14

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->setSentTime(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ReadMessageRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ReadMessageRequest$Builder;

    move-result-object v3

    invoke-virtual {v3, p5, p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ReadMessageRequest$Builder;->setRequestId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ReadMessageRequest$Builder;

    move-result-object v4

    move-wide/from16 v0, p7

    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ReadMessageRequest$Builder;->setChatroomId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ReadMessageRequest$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ReadMessageRequest$Builder;->setInboxEntry(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ReadMessageRequest$Builder;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ReadMessageRequest$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ReadMessageRequest;

    move-result-object v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendReadMessageRequest. reqId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ReadMessageRequest;->getRequestId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", myChatId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", chatroomId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ReadMessageRequest;->getChatroomId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->getMsgId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->getMsgType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", senderSvcDuid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->getSender()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sentTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->getSentTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    sget-object v6, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ReadMessageRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const/4 v8, 0x0

    move-wide v4, p5

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ReadMessageReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    move-object/from16 v0, p17

    move/from16 v1, p16

    invoke-virtual {p1, v3, v2, v0, v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->send(Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Landroid/os/Bundle;I)V

    return-void
.end method

.method public sendRecallMessageRequest(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;JJJIJLandroid/os/Bundle;)V
    .locals 10

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalAccessException;

    const-string v3, "Invalid channelSocket."

    invoke-direct {v2, v3}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageRequest$Builder;->setRequestId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageRequest$Builder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageRequest$Builder;->setChatroomId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageRequest$Builder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageRequest$Builder;->setMsgId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageRequest$Builder;

    move-result-object v3

    move-wide/from16 v0, p9

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageRequest$Builder;->setSentTime(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageRequest$Builder;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageRequest$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageRequest;

    move-result-object v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RecallMessageRequest. reqId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageRequest;->getRequestId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", chatroomId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageRequest;->getChatroomId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msgId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageRequest;->getMsgId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sentTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageRequest;->getSentTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    sget-object v6, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->RecallMessageRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const/4 v8, 0x0

    move-wide v4, p2

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->RecallMessageReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    move-object/from16 v0, p11

    move/from16 v1, p8

    invoke-virtual {p1, v3, v2, v0, v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->send(Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Landroid/os/Bundle;I)V

    return-void
.end method

.method public sendRemoveMemberRequest(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Lcom/samsung/android/sdk/ssf/SsfClient;JJJLjava/util/ArrayList;ILandroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;",
            "Lcom/samsung/android/sdk/ssf/SsfClient;",
            "JJJ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    if-eqz p9, :cond_0

    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "sendRemoveMemberRequest. Invalid memberDuidList."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-nez p1, :cond_2

    new-instance v2, Ljava/lang/IllegalAccessException;

    const-string v3, "sendRemoveMemberRequest. Invalid channelSocket."

    invoke-direct {v2, v3}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RemoveMemberRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RemoveMemberRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RemoveMemberRequest$Builder;->setRequestId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RemoveMemberRequest$Builder;

    move-result-object v4

    move-wide/from16 v0, p7

    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RemoveMemberRequest$Builder;->setChatroomId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RemoveMemberRequest$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RemoveMemberRequest$Builder;->addAllRemovingMembers(Ljava/lang/Iterable;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RemoveMemberRequest$Builder;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RemoveMemberRequest$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RemoveMemberRequest;

    move-result-object v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRemoveMemberRequest. reqId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RemoveMemberRequest$Builder;->getRequestId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", myChatId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", chatroomId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RemoveMemberRequest$Builder;->getChatroomId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", memberSvcDuidList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RemoveMemberRequest$Builder;->getRemovingMembersList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    sget-object v6, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->RemoveMemberRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const/4 v8, 0x0

    move-wide v4, p5

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->RemoveMemberReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    move-object/from16 v0, p11

    move/from16 v1, p10

    invoke-virtual {p1, v3, v2, v0, v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->send(Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Landroid/os/Bundle;I)V

    return-void
.end method

.method public sendTypingState(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;JJLjava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageRoomTypingStatus$TypingStatusContentType;IILandroid/os/Bundle;)V
    .locals 10

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalAccessException;

    const-string v3, "Invalid channelSocket."

    invoke-direct {v2, v3}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIsTyping. IsTypingState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTyping;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTyping$Builder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTyping$Builder;->setRequestId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTyping$Builder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTyping$Builder;->setChatroomId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTyping$Builder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTyping$Builder;->setState(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTyping$Builder;

    move-result-object v3

    invoke-virtual/range {p7 .. p7}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomTypingStatus$TypingStatusContentType;->getValue()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTyping$Builder;->setContentType(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTyping$Builder;

    const/4 v3, -0x1

    move/from16 v0, p8

    if-eq v0, v3, :cond_1

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTyping$Builder;->setRefresh(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTyping$Builder;

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTyping$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTyping;

    move-result-object v7

    new-instance v3, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    sget-object v6, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->IsTyping:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const/4 v8, 0x0

    move-wide v4, p2

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->TypingUpdated:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    move-object/from16 v0, p10

    move/from16 v1, p9

    invoke-virtual {p1, v3, v2, v0, v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->send(Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Landroid/os/Bundle;I)V

    return-void
.end method

.method public sendUnsealMessageRequest(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;JJJJLcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;JILandroid/os/Bundle;)V
    .locals 10

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalAccessException;

    const-string v3, "Invalid channelSocket."

    invoke-direct {v2, v3}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v2, 0x0

    if-eqz p10, :cond_1

    new-instance v2, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;

    invoke-virtual/range {p10 .. p10}, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;->getValue()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;-><init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/google/gson/GsonBuilder;

    invoke-direct {v3}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsealMessageRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsealMessageRequest$Builder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsealMessageRequest$Builder;->setRequestId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsealMessageRequest$Builder;

    move-result-object v4

    move-wide/from16 v0, p6

    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsealMessageRequest$Builder;->setChatroomId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsealMessageRequest$Builder;

    move-result-object v4

    move-wide/from16 v0, p8

    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsealMessageRequest$Builder;->setMsgId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsealMessageRequest$Builder;

    move-result-object v4

    move-wide/from16 v0, p11

    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsealMessageRequest$Builder;->setSender(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsealMessageRequest$Builder;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3, v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsealMessageRequest$Builder;->setMsgDetail(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsealMessageRequest$Builder;

    :cond_2
    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsealMessageRequest$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsealMessageRequest;

    move-result-object v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendUnsealMessageRequest. reqId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsealMessageRequest;->getRequestId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", myChatId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", chatroomId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsealMessageRequest;->getChatroomId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msgId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsealMessageRequest;->getMsgId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", senderSvcDuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsealMessageRequest;->getSender()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsealMessageRequest;->hasMsgDetail()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendUnsealMessageRequest. msgDetail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsealMessageRequest;->getMsgDetail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v3, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    sget-object v6, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->UnsealMessageRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const/4 v8, 0x0

    move-wide v4, p4

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->UnsealMessageReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    move-object/from16 v0, p14

    move/from16 v1, p13

    invoke-virtual {p1, v3, v2, v0, v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->send(Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Landroid/os/Bundle;I)V

    return-void
.end method

.method public setSenderChatid(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->senderChatid:J

    return-void
.end method

.method public subscribeTypingStatus(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;JJILandroid/os/Bundle;)V
    .locals 8

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "Invalid channelSocket."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SubscribeTypingStatus;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SubscribeTypingStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SubscribeTypingStatus$Builder;->setRequestId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SubscribeTypingStatus$Builder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SubscribeTypingStatus$Builder;->setChatroomId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SubscribeTypingStatus$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SubscribeTypingStatus$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SubscribeTypingStatus;

    move-result-object v5

    new-instance v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    sget-object v4, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->SubscribeTypingStatus:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const/4 v6, 0x0

    move-wide v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->SubscribeTypingStatusReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    invoke-virtual {p1, v1, v0, p7, p6}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->send(Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Landroid/os/Bundle;I)V

    return-void
.end method

.method public unsubscribeTypingStatus(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;JJILandroid/os/Bundle;)V
    .locals 8

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "Invalid channelSocket."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->setRequestId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->setChatroomId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;

    move-result-object v5

    new-instance v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    sget-object v4, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->UnsubscribeTypingStatus:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const/4 v6, 0x0

    move-wide v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->UnsubscribeTypingStatusReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    invoke-virtual {p1, v1, v0, p7, p6}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->send(Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Landroid/os/Bundle;I)V

    return-void
.end method
