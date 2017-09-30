.class Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;
.super Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    const-class v0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;-><init>(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)V

    return-void
.end method

.method private isTimeOut()Z
    .locals 10

    const-wide/32 v8, 0x2bf20

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$1700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IdleState] diff:  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " isTimeOut: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    cmp-long v0, v4, v8

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, v4, v8

    if-lez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IdleState] enter. message.what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$300(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected exit(Landroid/os/Message;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IdleState] exit. message.what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$300(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected processMessage(Landroid/os/Message;)V
    .locals 9

    const v3, 0xea61

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IdleState] processMessage. message.what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$300(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->isTimeOut()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$502(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Z)Z

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$600(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$500(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$600(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$600(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "[IdleState] processMessage. Need to connect new channel."

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$800(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_3
    const-string v0, "[IdleState] processMessage. Need to authenticate this channel."

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$900(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    goto :goto_1

    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_5
    const-string v0, "[IdleState] processMessage. Ignore message."

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_6

    const-string v0, "[IdleState] processMessage. Invalid message.obj."

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getReqId()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getType()Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[IdleState] processMessage. reqId: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", channelMsgType: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$1000(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/message/util/AesCipher;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;->buildFrom(Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;Lcom/samsung/android/sdk/ssf/message/util/AesCipher;)Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;

    move-result-object v1

    if-nez v1, :cond_7

    const-string v0, "[IdleState] processMessage. Invalid payload data."

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v4, v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$1100(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;)I

    move-result v1

    if-ltz v0, :cond_2

    if-lez v1, :cond_9

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->valueOf(I)Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequest;

    invoke-direct {v1, v2, v0, v5}, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequest;-><init>(Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$1200(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/message/network/ChannelRequestQueue;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequestQueue;->add(Lcom/samsung/android/sdk/ssf/message/network/ChannelRequest;)Z

    const-string v0, "[IdleState] processMessage. channelRequest is queued."

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-lez v0, :cond_8

    mul-int/lit16 v0, v0, 0x3e8

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    const/4 v2, -0x5

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v2, v1, v4, v5}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IdleState] processMessage. A timer is started. timeoutInMillis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const/16 v0, 0x7530

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$600(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$600(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v3, 0x2afb

    :cond_a
    const-string v4, "Failed to write payload."

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$1400(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$1300(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->deliverRequestError(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_b

    const-string v0, "[IdleState] processMessage. Invalid payload."

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$1000(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/message/util/AesCipher;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;->parse(Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;Lcom/samsung/android/sdk/ssf/message/util/AesCipher;)Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    move-result-object v0

    if-nez v0, :cond_c

    const-string v0, "[IdleState] processMessage. Invalid channelMsg."

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getReqId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getType()Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    move-result-object v1

    if-nez v1, :cond_d

    const-string v0, "[IdleState] processMessage. Invalid channelMsgType."

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[IdleState] processMessage. reqId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", channelMsgType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$1;->$SwitchMap$com$samsung$android$sdk$ssf$message$server$MessagePayload$Type:[I

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    const-string v0, "[IdleState] processMessage. Unknown channelMsgType."

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$1400(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ClientEcho;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->sendClientEchoReply(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ClientEcho;)V

    goto/16 :goto_1

    :pswitch_1
    iget-object v4, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v4}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$1200(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/message/network/ChannelRequestQueue;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequestQueue;->remove(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;)Lcom/samsung/android/sdk/ssf/message/network/ChannelRequest;

    move-result-object v1

    if-nez v1, :cond_e

    const-string v0, "[IdleState] processMessage. No channelRequest is waiting."

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$1500(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x7d1

    iput v3, v2, Landroid/os/Message;->what:I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "key_request_channel_message"

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequest;->getReqChannelMsg()Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v4, "key_channel_msg"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "key_user_data"

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequest;->getUserData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$1500(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$1500(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x7d2

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "key_channel_msg"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$1500(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :sswitch_2
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$600(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$600(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "[IdleState] processMessage. Channel is still connected."

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    const-string v0, "Failed to read payload."

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v1, v3, v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$1600(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;ILjava/lang/String;)V

    goto/16 :goto_1

    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_10

    const-string v0, "[IdleState] processMessage. Invalid reqChannelMsg."

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getReqId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getType()Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v4}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$1200(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/message/network/ChannelRequestQueue;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequestQueue;->timeout(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;)Lcom/samsung/android/sdk/ssf/message/network/ChannelRequest;

    move-result-object v4

    if-eqz v4, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Timed out for reqId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[IdleState] processMessage. "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", reqChannelMsgType: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$1500(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    const/16 v3, 0x7d4

    iput v3, v1, Landroid/os/Message;->what:I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v5, "key_result_code"

    const/16 v6, 0x2af9

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "key_result_msg"

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_request_channel_message"

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "key_user_data"

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequest;->getUserData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$1500(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_3
        -0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
