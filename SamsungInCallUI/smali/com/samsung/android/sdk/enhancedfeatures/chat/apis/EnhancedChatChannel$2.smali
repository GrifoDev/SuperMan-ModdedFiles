.class Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(JILjava/lang/String;Ljava/lang/Object;)V
    .locals 19

    move-object/from16 v0, p5

    instance-of v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;

    if-eqz v2, :cond_1

    check-cast p5, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError:  requestId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", getmRequestType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->getmRequestType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", getReqId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->reqId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomResult;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomResult;-><init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->getmRequestType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v3

    move-object/from16 v0, p5

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->reqId:J

    const/4 v6, 0x0

    move-object/from16 v0, p5

    iget-object v8, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->clientData:Landroid/os/Bundle;

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onCreateMessageRoom(JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomResult;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v3

    move-object/from16 v0, p5

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->reqId:J

    const/4 v6, 0x0

    move-object/from16 v0, p5

    iget-object v8, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->clientData:Landroid/os/Bundle;

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onCreateMessageRoom(JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomResult;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v3

    move-object/from16 v0, p5

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->reqId:J

    move-object/from16 v0, p5

    iget-wide v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->msgRoomId:J

    const/4 v8, 0x0

    move-object/from16 v0, p5

    iget-wide v9, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->lastMsgSentTimeInMillis:J

    new-instance v11, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v11, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v12, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->clientData:Landroid/os/Bundle;

    invoke-interface/range {v3 .. v12}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onChangeMessageRoomOwner(JJLjava/lang/String;JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v9

    move-object/from16 v0, p5

    iget-wide v10, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->reqId:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->msgRoomId:J

    const/4 v14, 0x0

    move-object/from16 v0, p5

    iget-wide v15, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->lastMsgSentTimeInMillis:J

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->clientData:Landroid/os/Bundle;

    move-object/from16 v18, v0

    move-object/from16 v17, v7

    invoke-interface/range {v9 .. v18}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onInviteUsersToMessageRoom(JJLjava/util/ArrayList;JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomResult;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v3

    move-object/from16 v0, p5

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->reqId:J

    move-object/from16 v0, p5

    iget-wide v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->msgRoomId:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p5

    iget-wide v10, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->lastMsgSentTimeInMillis:J

    new-instance v12, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v12, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v13, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->clientData:Landroid/os/Bundle;

    invoke-interface/range {v3 .. v13}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onExpelMessageRoomMember(JJLjava/util/ArrayList;Ljava/util/ArrayList;JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v3

    move-object/from16 v0, p5

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->reqId:J

    move-object/from16 v0, p5

    iget-wide v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->msgRoomId:J

    move-object/from16 v0, p5

    iget-wide v8, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->lastMsgId:J

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p5

    iget-wide v12, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->lastMsgSentTimeInMillis:J

    new-instance v14, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v14, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v15, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->clientData:Landroid/os/Bundle;

    invoke-interface/range {v3 .. v15}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onReadMessageUpto(JJJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;Ljava/lang/String;JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v3

    move-object/from16 v0, p5

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->reqId:J

    move-object/from16 v0, p5

    iget-wide v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->msgRoomId:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-interface/range {v3 .. v10}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onReceiveTimedMessage(JJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;I)V

    goto/16 :goto_0

    :cond_1
    check-cast p5, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError:  requestId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", getmResponseType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->getmRequestType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", getReqId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->reqId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->getmRequestType()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v3

    move-object/from16 v0, p5

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->reqId:J

    move-object/from16 v0, p5

    iget-wide v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomId:J

    const-string v8, ""

    move-object/from16 v0, p5

    iget-wide v9, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->sentTimeInMillis:J

    new-instance v11, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v11, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v12, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->clientData:Landroid/os/Bundle;

    invoke-interface/range {v3 .. v12}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onChangeMessageRoomOwner(JJLjava/lang/String;JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgInfo:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$1700(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v3

    move-object/from16 v0, p5

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->reqId:J

    move-object/from16 v0, p5

    iget-wide v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomId:J

    new-instance v9, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v9, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v10, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->clientData:Landroid/os/Bundle;

    invoke-interface/range {v3 .. v10}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onSendMessage(JJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgInfo:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$1700(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v3

    move-object/from16 v0, p5

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->reqId:J

    move-object/from16 v0, p5

    iget-wide v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomId:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    move-object/from16 v0, p5

    iget-object v8, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomType:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    invoke-static {v2, v8}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;

    move-result-object v8

    invoke-interface/range {v3 .. v9}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onReceiveMessage(JJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;)V

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgInfo:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$1700(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v3

    move-object/from16 v0, p5

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->reqId:J

    move-object/from16 v0, p5

    iget-wide v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomId:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    move-object/from16 v0, p5

    iget-object v8, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomType:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    invoke-static {v2, v8}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;

    move-result-object v8

    move-object/from16 v0, p5

    iget v10, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgLifeTimeInSecs:I

    invoke-interface/range {v3 .. v10}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onReceiveTimedMessage(JJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;I)V

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v3

    move-object/from16 v0, p5

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->reqId:J

    move-object/from16 v0, p5

    iget-wide v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomId:J

    move-object/from16 v0, p5

    iget-wide v8, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->lastMsgId:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    move-object/from16 v0, p5

    iget-object v10, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->lastMsgType:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    invoke-static {v2, v10}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$1800(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, p5

    iget-wide v12, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->sentTimeInMillis:J

    new-instance v14, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v14, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v15, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->clientData:Landroid/os/Bundle;

    invoke-interface/range {v3 .. v15}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onReadMessageUpto(JJJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;Ljava/lang/String;JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v0, p5

    iget-object v9, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->nonMemberUserChatIdList:Ljava/util/ArrayList;

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;

    const/16 v3, 0xcf

    move-object/from16 v0, p5

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->reqId:J

    move-object/from16 v0, p5

    iget-wide v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomId:J

    const/4 v8, 0x0

    move-object/from16 v0, p5

    iget-object v10, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgResult:Lcom/samsung/android/sdk/ssf/message/io/MessageResult;

    move-object/from16 v0, p5

    iget-object v11, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->clientData:Landroid/os/Bundle;

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;-><init>(IJJLjava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    iget-object v10, v3, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->chatIdMsisdnListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;

    move-object v11, v2

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->getMsisdnForChatId(JLjava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v3

    move-object/from16 v0, p5

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->reqId:J

    move-object/from16 v0, p5

    iget-wide v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomId:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p5

    iget-wide v10, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->sentTimeInMillis:J

    new-instance v12, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v12, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v13, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->clientData:Landroid/os/Bundle;

    invoke-interface/range {v3 .. v13}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onExpelMessageRoomMember(JJLjava/util/ArrayList;Ljava/util/ArrayList;JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v3

    move-object/from16 v0, p5

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->reqId:J

    move-object/from16 v0, p5

    iget-wide v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomId:J

    move-object/from16 v0, p5

    iget-object v8, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->memberUserMsisdnList:Ljava/util/ArrayList;

    const/4 v9, 0x0

    move-object/from16 v0, p5

    iget-wide v10, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->sentTimeInMillis:J

    new-instance v12, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v12, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v13, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->clientData:Landroid/os/Bundle;

    invoke-interface/range {v3 .. v13}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onExpelMessageRoomMember(JJLjava/util/ArrayList;Ljava/util/ArrayList;JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v2

    move-object/from16 v0, p5

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomId:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    move-object/from16 v0, p5

    iget-object v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->messageACKList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$1900(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2, v4, v5, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onReceiveMessageDelivered(JLjava/util/ArrayList;)V

    goto/16 :goto_0

    :pswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v2

    move-object/from16 v0, p5

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomId:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    move-object/from16 v0, p5

    iget-object v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->messageACKList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$1900(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2, v4, v5, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onReceiveMessageRead(JLjava/util/ArrayList;)V

    goto/16 :goto_0

    :pswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->messageACKList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$1900(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v3

    move-object/from16 v0, p5

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->reqId:J

    move-object/from16 v0, p5

    iget-wide v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomId:J

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatAck;

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onReceiveTimedMessageRead(JJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatAck;)V

    goto/16 :goto_0

    :pswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->messageACKList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$1900(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v3

    move-object/from16 v0, p5

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->reqId:J

    move-object/from16 v0, p5

    iget-wide v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomId:J

    move-object/from16 v0, p5

    iget-wide v8, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgId:J

    move-object/from16 v0, p5

    iget-wide v10, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->sentTimeInMillis:J

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatAck;

    invoke-interface/range {v3 .. v12}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onReceiveRecallMessageNoti(JJJJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatAck;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc9
        :pswitch_7
        :pswitch_b
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public onSuccess(JLjava/util/ArrayList;Ljava/lang/Object;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p4, :cond_2

    :cond_0
    const/4 v6, 0x0

    const-string v7, "Chat id Response is null or not a valid user"

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->onError(JILjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p4

    instance-of v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;

    if-eqz v2, :cond_3

    check-cast p4, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSuccess ChatIdRequest chatidReqId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", is request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->getmRequestType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", getReqId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->reqId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->getmRequestType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-static {v2, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$1000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;Ljava/util/ArrayList;)V

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-static {v2, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$1100(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;Ljava/util/ArrayList;)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-static {v2, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$1200(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;Ljava/util/ArrayList;)V

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-static {v2, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$1300(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;Ljava/util/ArrayList;)V

    goto :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-static {v2, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$1400(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-static {v2, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$1500(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-static {v2, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$1600(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_3
    check-cast p4, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSuccessChatIdResponse chatidResId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", is request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->getmRequestType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", getReqId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->reqId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->getMsgResult()Lcom/samsung/android/sdk/ssf/message/io/MessageResult;

    move-result-object v15

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->getmRequestType()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v3

    move-object/from16 v0, p4

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->reqId:J

    move-object/from16 v0, p4

    iget-wide v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomId:J

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->getMsisdn()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p4

    iget-wide v9, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->sentTimeInMillis:J

    new-instance v11, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;

    invoke-virtual {v15}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultCode()I

    move-result v2

    invoke-virtual {v15}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultMsg()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v2, v12}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->clientData:Landroid/os/Bundle;

    invoke-interface/range {v3 .. v12}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onChangeMessageRoomOwner(JJLjava/lang/String;JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgInfo:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$1700(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;

    move-result-object v8

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->getMsisdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;->setSenderMsisdn(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v3

    move-object/from16 v0, p4

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->reqId:J

    move-object/from16 v0, p4

    iget-wide v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomId:J

    new-instance v9, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;

    invoke-virtual {v15}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultCode()I

    move-result v2

    invoke-virtual {v15}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultMsg()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v2, v10}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->clientData:Landroid/os/Bundle;

    invoke-interface/range {v3 .. v10}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onSendMessage(JJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgInfo:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$1700(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;

    move-result-object v9

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->getMsisdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;->setSenderMsisdn(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v3

    move-object/from16 v0, p4

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->reqId:J

    move-object/from16 v0, p4

    iget-wide v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomId:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomType:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    invoke-static {v2, v8}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;

    move-result-object v8

    invoke-interface/range {v3 .. v9}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onReceiveMessage(JJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;)V

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgInfo:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$1700(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;

    move-result-object v9

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->getMsisdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;->setSenderMsisdn(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v3

    move-object/from16 v0, p4

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->reqId:J

    move-object/from16 v0, p4

    iget-wide v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomId:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomType:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    invoke-static {v2, v8}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;

    move-result-object v8

    move-object/from16 v0, p4

    iget v10, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgLifeTimeInSecs:I

    invoke-interface/range {v3 .. v10}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onReceiveTimedMessage(JJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;I)V

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v3

    move-object/from16 v0, p4

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->reqId:J

    move-object/from16 v0, p4

    iget-wide v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomId:J

    move-object/from16 v0, p4

    iget-wide v8, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->lastMsgId:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->lastMsgType:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    invoke-static {v10, v11}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$1800(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

    move-result-object v10

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->getMsisdn()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p4

    iget-wide v12, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->sentTimeInMillis:J

    new-instance v14, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;

    invoke-virtual {v15}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultCode()I

    move-result v2

    invoke-virtual {v15}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultMsg()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v2, v15}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p4

    iget-object v15, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->clientData:Landroid/os/Bundle;

    invoke-interface/range {v3 .. v15}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onReadMessageUpto(JJJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;Ljava/lang/String;JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->nonMemberUserChatIdList:Ljava/util/ArrayList;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->getMsisdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;

    const/16 v3, 0xcf

    move-object/from16 v0, p4

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->reqId:J

    move-object/from16 v0, p4

    iget-wide v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomId:J

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgResult:Lcom/samsung/android/sdk/ssf/message/io/MessageResult;

    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->clientData:Landroid/os/Bundle;

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;-><init>(IJJLjava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    iget-object v10, v3, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->chatIdMsisdnListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;

    move-object v11, v2

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->getMsisdnForChatId(JLjava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v3

    move-object/from16 v0, p4

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->reqId:J

    move-object/from16 v0, p4

    iget-wide v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomId:J

    const/4 v9, 0x0

    move-object/from16 v0, p4

    iget-wide v10, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->sentTimeInMillis:J

    new-instance v12, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;

    invoke-virtual {v15}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultCode()I

    move-result v2

    invoke-virtual {v15}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultMsg()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v2, v13}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->clientData:Landroid/os/Bundle;

    invoke-interface/range {v3 .. v13}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onExpelMessageRoomMember(JJLjava/util/ArrayList;Ljava/util/ArrayList;JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_d
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->getMsisdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v3

    move-object/from16 v0, p4

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->reqId:J

    move-object/from16 v0, p4

    iget-wide v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomId:J

    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->memberUserMsisdnList:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    iget-wide v10, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->sentTimeInMillis:J

    new-instance v12, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;

    invoke-virtual {v15}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultCode()I

    move-result v2

    invoke-virtual {v15}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->getResultMsg()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v2, v13}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->clientData:Landroid/os/Bundle;

    invoke-interface/range {v3 .. v13}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onExpelMessageRoomMember(JJLjava/util/ArrayList;Ljava/util/ArrayList;JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v2

    move-object/from16 v0, p4

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomId:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->messageACKList:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-static {v3, v6, v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$1900(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2, v4, v5, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onReceiveMessageDelivered(JLjava/util/ArrayList;)V

    goto/16 :goto_0

    :pswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v2

    move-object/from16 v0, p4

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomId:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->messageACKList:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-static {v3, v6, v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$1900(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2, v4, v5, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onReceiveMessageRead(JLjava/util/ArrayList;)V

    goto/16 :goto_0

    :pswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->messageACKList:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-static {v2, v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$1900(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v3

    move-object/from16 v0, p4

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->reqId:J

    move-object/from16 v0, p4

    iget-wide v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomId:J

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatAck;

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onReceiveTimedMessageRead(JJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatAck;)V

    goto/16 :goto_0

    :pswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->messageACKList:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-static {v2, v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$1900(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    move-result-object v3

    move-object/from16 v0, p4

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->reqId:J

    move-object/from16 v0, p4

    iget-wide v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomId:J

    move-object/from16 v0, p4

    iget-wide v8, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgId:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->sentTimeInMillis:J

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatAck;

    invoke-interface/range {v3 .. v12}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;->onReceiveRecallMessageNoti(JJJJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatAck;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc9
        :pswitch_7
        :pswitch_b
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
