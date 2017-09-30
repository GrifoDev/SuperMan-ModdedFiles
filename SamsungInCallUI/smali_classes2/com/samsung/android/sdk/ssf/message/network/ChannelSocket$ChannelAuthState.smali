.class Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;
.super Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChannelAuthState"
.end annotation


# instance fields
.field private mReqId:J

.field private mResultMsg:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    const-class v0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->mReqId:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->mResultMsg:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;-><init>(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)V

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .locals 8

    const/4 v7, -0x4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ChannelAuthState] enter. message.what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

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

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->mReqId:J

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$1400(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->mReqId:J

    iget-object v4, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v4}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$2200(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/message/io/KeySet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/message/io/KeySet;->getChatid()J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v6}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$2300(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->sendChannelAuthRequest(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;JJLcom/samsung/android/sdk/ssf/SsfClient;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->mResultMsg:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ChannelAuthState] enter. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->mResultMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$2000(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    goto :goto_0
.end method

.method protected exit(Landroid/os/Message;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ChannelAuthState] exit. message.what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

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

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    const/4 v1, -0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$500(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->removeDeferredMessagesAll()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    if-eqz v0, :cond_1

    iget v1, v0, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_2

    const-string v0, "[ChannelAuthState] exit. Invalid reqChannelMsg."

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$1300(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onError()V

    goto :goto_1

    :cond_2
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v3}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$1500(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x7d3

    iput v4, v3, Landroid/os/Message;->what:I

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "key_result_code"

    const v6, 0xea62

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "key_request_channel_message"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "key_user_data"

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$1500(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_3
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->mReqId:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->mResultMsg:Ljava/lang/String;

    goto :goto_0
.end method

.method protected processMessage(Landroid/os/Message;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ChannelAuthState] processMessage. message.what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

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

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "Invalid payload."

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->mResultMsg:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ChannelAuthState] processMessage. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->mResultMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$2000(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$2400(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/message/util/AesCipher;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;->parse(Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;Lcom/samsung/android/sdk/ssf/message/util/AesCipher;)Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Invalid channelMsg."

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->mResultMsg:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ChannelAuthState] processMessage. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->mResultMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$2000(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChannelAuthReply;

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->mReqId:J

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChannelAuthReply;->getRequestId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ChannelAuthState] processMessage. channelAuthReply is not for this Channel. reqId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChannelAuthReply;->getRequestId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChannelAuthReply;->hasResult()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "channelAuthReply has no result."

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->mResultMsg:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ChannelAuthState] processMessage. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->mResultMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$2000(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChannelAuthReply;->getResult()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "channelAuthReply has null result."

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->mResultMsg:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ChannelAuthState] processMessage. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->mResultMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$2000(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getMsg()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ChannelAuthState] processMessage. serverResultCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", serverResultMsg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch v1, :sswitch_data_1

    const-string v0, "Failed to authenticate this channel."

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->mResultMsg:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ChannelAuthState] processMessage. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->mResultMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$2000(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "[ChannelAuthState] processMessage. Succeeded to authenticate this channel."

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$502(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Z)Z

    goto :goto_1

    :sswitch_2
    const-string v0, "[ChannelAuthState] processMessage. Invalid Access Token"

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$2500(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/account/AuthorizationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/ssf/account/AuthorizationListener;->refreshAccessToken()Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$600(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$502(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Z)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$800(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->mResultMsg:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ChannelAuthState] enter. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->mResultMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$2000(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "Failed to authenticate this channel."

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->mResultMsg:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ChannelAuthState] processMessage. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->mResultMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$2000(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "Timed out to authenticate this channel."

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->mResultMsg:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ChannelAuthState] processMessage. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->mResultMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$2000(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4 -> :sswitch_4
        -0x1 -> :sswitch_3
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x3e8 -> :sswitch_1
        0x7d1 -> :sswitch_2
    .end sparse-switch
.end method
