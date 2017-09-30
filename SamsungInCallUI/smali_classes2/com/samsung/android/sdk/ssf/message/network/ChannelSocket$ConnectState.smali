.class Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;
.super Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectState"
.end annotation


# instance fields
.field private mResultMsg:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    const-class v0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->mResultMsg:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;-><init>(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)V

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ConnectState] enter. message.what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

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

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$1800(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$1900(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;ILjava/net/InetSocketAddress;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    const/4 v1, -0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method protected exit(Landroid/os/Message;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ConnectState] exit. message.what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

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

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$600(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$600(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    const/4 v1, -0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->removeDeferredMessagesAll()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
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

    const-string v0, "[ConnectState] exit. Invalid reqChannelMsg."

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$1300(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;->onError()V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v3}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$1500(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x7d5

    iput v4, v3, Landroid/os/Message;->what:I

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "key_result_code"

    const v6, 0xea61

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "key_result_msg"

    iget-object v6, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->mResultMsg:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "key_request_channel_message"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "key_user_data"

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$1500(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->mResultMsg:Ljava/lang/String;

    return-void
.end method

.method protected processMessage(Landroid/os/Message;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ConnectState] processMessage. message.what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

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

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$600(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$600(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "Failed to connect ProxyServer."

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->mResultMsg:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ConnectState] processMessage. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->mResultMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$2000(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    goto :goto_0

    :cond_1
    const-string v0, "[ConnectState] processMessage. Succeeded to connect ProxyServer."

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$900(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "[ConnectState] processMessage. Try to connect secondary ProxyServer."

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$2100(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$1900(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;ILjava/net/InetSocketAddress;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "Failed to connect ProxyServer."

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->mResultMsg:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ConnectState] processMessage. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->mResultMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$2000(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "Timed out to connect ProxyServer."

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->mResultMsg:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ConnectState] processMessage. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->mResultMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$2000(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
