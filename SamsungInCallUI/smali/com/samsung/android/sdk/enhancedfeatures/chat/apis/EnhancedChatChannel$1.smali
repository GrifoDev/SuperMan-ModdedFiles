.class Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeMessageRoomMsgLifeTime(JJILcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v1

    new-instance v7, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;

    invoke-virtual {p6}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultCode()I

    move-result v0

    invoke-virtual {p6}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;-><init>(ILjava/lang/String;)V

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onChangeMessageRoomMsgLifeTime(JJILcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V

    return-void
.end method

.method public onChangeMessageRoomOwner(JJJJLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
    .locals 11

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;

    const/16 v1, 0xc9

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;-><init>(IJJJLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    iget-object v5, v5, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->chatIdMsisdnListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->getMsisdnForChatId(JLjava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;Ljava/lang/Object;)V

    return-void
.end method

.method public onChangeMessageRoomTitle(JJLjava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v1

    new-instance v7, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;

    invoke-virtual {p6}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultCode()I

    move-result v0

    invoke-virtual {p6}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;-><init>(ILjava/lang/String;)V

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onChangeMessageRoomTitle(JJLjava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V

    return-void
.end method

.method public onConnected()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onConnected()V

    return-void
.end method

.method public onCreateMessageRoom(JLcom/samsung/android/sdk/ssf/message/io/MessageRoom;Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult;Landroid/os/Bundle;)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v0, p3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/ssf/message/io/MessageRoom;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom;

    move-result-object v4

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult;->getResultCode()I

    move-result v2

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    const-string v0, "InvalidArray"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateMessageRoom:  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult;->getInvalidUserList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", reqId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", invalidList: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", resultCode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalidList:  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", msisdn: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3e8

    if-ne v2, v0, :cond_0

    const/16 v0, 0x2711

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    :goto_0
    new-instance v5, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomResult;

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult;->getResultMsg()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult;->getDuplicatedUsersList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v5, v1, v2, v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomResult;-><init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v1

    move-wide v2, p1

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onCreateMessageRoom(JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomResult;Landroid/os/Bundle;)V

    return-void

    :cond_0
    move-object v0, v1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public onDestroyMessageRoom(JLjava/lang/Long;Lcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v1

    new-instance v5, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultCode()I

    move-result v0

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;-><init>(ILjava/lang/String;)V

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onDestroyMessageRoom(JLjava/lang/Long;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V

    return-void
.end method

.method public onEnterMessageRoom(JJLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v1

    new-instance v6, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultCode()I

    move-result v0

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;-><init>(ILjava/lang/String;)V

    move-wide v2, p1

    move-wide v4, p3

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onEnterMessageRoom(JJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V

    return-void
.end method

.method public onError()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onError()V

    return-void
.end method

.method public onError(JI)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onError(JI)V

    return-void
.end method

.method public onExpelMessageRoomMember(JJLjava/util/ArrayList;Ljava/util/ArrayList;JLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;J",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageResult;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    if-eqz p5, :cond_0

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;

    const/16 v1, 0xce

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;-><init>(IJJLjava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    iget-object v5, v4, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->chatIdMsisdnListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;

    move-object/from16 v4, p5

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->getMsisdnForChatId(JLjava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p6, :cond_1

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;

    const/16 v1, 0xcf

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;-><init>(IJJLjava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    iget-object v5, v4, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->chatIdMsisdnListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;

    move-object/from16 v4, p6

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->getMsisdnForChatId(JLjava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v10, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;

    invoke-virtual/range {p9 .. p9}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultCode()I

    move-result v0

    invoke-virtual/range {p9 .. p9}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;-><init>(ILjava/lang/String;)V

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v8, p7

    move-object/from16 v11, p10

    invoke-interface/range {v1 .. v11}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onExpelMessageRoomMember(JJLjava/util/ArrayList;Ljava/util/ArrayList;JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onGetAllUnreadMessages(JLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultCode()I

    move-result v2

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultMsg()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, p1, p2, v1, p4}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onGetAllUnreadMessages(JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V

    return-void
.end method

.method public onInviteUsersToMessageRoom(JJLjava/util/ArrayList;JLcom/samsung/android/sdk/ssf/message/io/MessageRoomResult;Landroid/os/Bundle;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;",
            ">;J",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    new-instance v11, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomResult;

    invoke-virtual/range {p8 .. p8}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult;->getResultCode()I

    move-result v2

    invoke-virtual/range {p8 .. p8}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult;->getResultMsg()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-virtual/range {p8 .. p8}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult;->getInvalidUserList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-virtual/range {p8 .. p8}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult;->getDuplicatedUsersList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v11, v2, v3, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomResult;-><init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInviteUsersToMessageRoom:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p8 .. p8}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult;->getResultCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v3

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    move-object/from16 v0, p5

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$600(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v8

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v9, p6

    move-object/from16 v12, p9

    invoke-interface/range {v3 .. v12}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onInviteUsersToMessageRoom(JJLjava/util/ArrayList;JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomResult;Landroid/os/Bundle;)V

    return-void
.end method

.method public onJoinMessageRoom(JLcom/samsung/android/sdk/ssf/message/io/MessageRoom;Lcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v0, p3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/ssf/message/io/MessageRoom;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultCode()I

    move-result v0

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;-><init>(ILjava/lang/String;)V

    move-wide v2, p1

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onJoinMessageRoom(JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V

    return-void
.end method

.method public onLeaveMessageRooms(JLjava/util/ArrayList;Lcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageResult;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v1

    new-instance v5, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultCode()I

    move-result v0

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;-><init>(ILjava/lang/String;)V

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onLeaveMessageRooms(JLjava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V

    return-void
.end method

.method public onReadMessageUpto(JJJLcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;JJLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
    .locals 15

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;

    const/16 v1, 0xca

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-wide/from16 v9, p10

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    invoke-direct/range {v0 .. v12}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;-><init>(IJJJLcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;JLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    iget-object v5, v4, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->chatIdMsisdnListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;

    move-object v4, v13

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->getMsisdnForChatId(JLjava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;Ljava/lang/Object;)V

    return-void
.end method

.method public onReadTimedMessage(JJLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v1

    new-instance v6, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultCode()I

    move-result v0

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;-><init>(ILjava/lang/String;)V

    move-wide v2, p1

    move-wide v4, p3

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onReadTimedMessage(JJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V

    return-void
.end method

.method public onRecallMessageReply(JJJJLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v1

    new-instance v10, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;

    invoke-virtual/range {p9 .. p9}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultCode()I

    move-result v0

    invoke-virtual/range {p9 .. p9}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;-><init>(ILjava/lang/String;)V

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v11, p10

    invoke-interface/range {v1 .. v11}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onRecallMessageReply(JJJJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V

    return-void
.end method

.method public onReceiveMessage(JJLcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;)V
    .locals 13

    if-eqz p6, :cond_0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;->getSenderChatId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;

    const/16 v3, 0xcc

    const/4 v10, -0x1

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;-><init>(IJJLcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    iget-object v7, v6, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->chatIdMsisdnListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;

    move-object v6, v11

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->getMsisdnForChatId(JLjava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v3

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    move-object/from16 v0, p5

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;

    move-result-object v8

    const/4 v9, 0x0

    move-wide v4, p1

    move-wide/from16 v6, p3

    invoke-interface/range {v3 .. v9}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onReceiveMessage(JJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;)V

    goto :goto_0
.end method

.method public onReceiveMessageDelivered(JLjava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageAck;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v2, -0x1

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;->receiverChatid:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;

    const/16 v1, 0xd0

    move-wide v4, p1

    move-wide v6, v2

    move-wide v8, v2

    move-object/from16 v10, p3

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;-><init>(IJJJJLjava/util/ArrayList;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    iget-object v5, v4, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->chatIdMsisdnListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;

    move-object v4, v11

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->getMsisdnForChatId(JLjava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;Ljava/lang/Object;)V

    return-void
.end method

.method public onReceiveMessageRead(JLjava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageAck;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v2, -0x1

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;->receiverChatid:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;

    const/16 v1, 0xd1

    move-wide v4, p1

    move-wide v6, v2

    move-wide v8, v2

    move-object/from16 v10, p3

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;-><init>(IJJJJLjava/util/ArrayList;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    iget-object v5, v4, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->chatIdMsisdnListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;

    move-object v4, v11

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->getMsisdnForChatId(JLjava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;Ljava/lang/Object;)V

    return-void
.end method

.method public onReceiveMessageRoomDestroyed(JLcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->getChatId()J

    move-result-wide v2

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->getMsisdn()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->getStatus()Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member;-><init>(JLjava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onReceiveMessageRoomDestroyed(JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member;)V

    return-void
.end method

.method public onReceiveMessageRoomMemberChanged(JLjava/util/ArrayList;IIJJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;",
            ">;IIJJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v0, p3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$900(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v1, p3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$600(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    move-wide v1, p1

    move v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-interface/range {v0 .. v9}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onReceiveMessageRoomMemberChanged(JLjava/util/ArrayList;IIJJ)V

    return-void
.end method

.method public onReceiveMessageRoomMsgLifeTimeChanged(JLcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;III)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->getChatId()J

    move-result-wide v2

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->getStatus()Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    move-result-object v5

    invoke-direct {v4, v2, v3, v0, v5}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member;-><init>(JLjava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;)V

    move-wide v2, p1

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onReceiveMessageRoomMsgLifeTimeChanged(JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member;III)V

    return-void
.end method

.method public onReceiveMessageRoomTitleChanged(JLcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;Ljava/lang/String;II)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->getChatId()J

    move-result-wide v2

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->getStatus()Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    move-result-object v5

    invoke-direct {v4, v2, v3, v0, v5}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member;-><init>(JLjava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;)V

    move-wide v2, p1

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onReceiveMessageRoomTitleChanged(JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member;Ljava/lang/String;II)V

    return-void
.end method

.method public onReceiveRecallMessageNoti(JJJJLcom/samsung/android/sdk/ssf/message/io/MessageAck;)V
    .locals 15

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p9 .. p9}, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;->getReceiverChatid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p9

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;

    const/16 v3, 0xd3

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    invoke-direct/range {v2 .. v12}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;-><init>(IJJJJLjava/util/ArrayList;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    iget-object v7, v6, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->chatIdMsisdnListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;

    move-object v6, v13

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->getMsisdnForChatId(JLjava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;Ljava/lang/Object;)V

    return-void
.end method

.method public onReceiveTimedMessage(JJLcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;I)V
    .locals 13

    if-eqz p6, :cond_0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;->getSenderChatId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;

    const/16 v3, 0xcd

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;-><init>(IJJLcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    iget-object v7, v6, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->chatIdMsisdnListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;

    move-object v6, v11

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->getMsisdnForChatId(JLjava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v3

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    move-object/from16 v0, p5

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;

    move-result-object v8

    const/4 v9, 0x0

    move-wide v4, p1

    move-wide/from16 v6, p3

    move/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onReceiveTimedMessage(JJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;I)V

    goto :goto_0
.end method

.method public onReceiveTimedMessageRead(JJLcom/samsung/android/sdk/ssf/message/io/MessageAck;)V
    .locals 15

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;->getReceiverChatid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;

    const/16 v3, 0xd2

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v12}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;-><init>(IJJJJLjava/util/ArrayList;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    iget-object v7, v6, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->chatIdMsisdnListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;

    move-object v6, v13

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->getMsisdnForChatId(JLjava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;Ljava/lang/Object;)V

    return-void
.end method

.method public onSendMessage(JJLcom/samsung/android/sdk/ssf/message/io/MessageInfo;Lcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
    .locals 11

    if-eqz p5, :cond_0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;->getSenderChatId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;

    const/16 v1, 0xcb

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;-><init>(IJJLcom/samsung/android/sdk/ssf/message/io/MessageInfo;Lcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    iget-object v5, v4, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->chatIdMsisdnListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;

    move-object v4, v9

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->getMsisdnForChatId(JLjava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v1

    const/4 v6, 0x0

    new-instance v7, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultCode()I

    move-result v0

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;-><init>(ILjava/lang/String;)V

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onSendMessage(JJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onSendTimedMessage(JJLcom/samsung/android/sdk/ssf/message/io/MessageInfo;ILcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onSubscribeTypingStatusReply(JJLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v1

    new-instance v6, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultCode()I

    move-result v0

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;-><init>(ILjava/lang/String;)V

    move-wide v2, p1

    move-wide v4, p3

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onSubscribeTypingStatusReply(JJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V

    return-void
.end method

.method public onTypingUpdated(JJLcom/samsung/android/sdk/ssf/message/io/MessageRoomTypingStatus;)V
    .locals 9

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus;

    iget-wide v2, p5, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomTypingStatus;->senderId:J

    iget-object v4, p5, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomTypingStatus;->state:Ljava/lang/String;

    iget-object v0, p5, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomTypingStatus;->contentType:Lcom/samsung/android/sdk/ssf/message/io/MessageRoomTypingStatus$TypingStatusContentType;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomTypingStatus$TypingStatusContentType;->getValue()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;->valueOf(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;

    move-result-object v5

    iget v6, p5, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomTypingStatus;->refreshTime:I

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus;-><init>(JLjava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v3

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, v1

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onTypingUpdated(JJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus;)V

    return-void
.end method

.method public onUnsubscribeTypingStatusReply(JJLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v1

    new-instance v6, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultCode()I

    move-result v0

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;-><init>(ILjava/lang/String;)V

    move-wide v2, p1

    move-wide v4, p3

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onUnsubscribeTypingStatusReply(JJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V

    return-void
.end method
