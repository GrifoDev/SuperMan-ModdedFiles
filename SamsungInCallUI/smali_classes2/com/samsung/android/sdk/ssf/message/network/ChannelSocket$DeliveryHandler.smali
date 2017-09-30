.class Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeliveryHandler"
.end annotation


# instance fields
.field private final channelSocket:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

.field private final mClient:Lcom/samsung/android/sdk/ssf/SsfClient;

.field private final mListener:Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;

.field private final messageServerProtocol:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/SsfClient;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;->channelSocket:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    iput-object p2, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;->messageServerProtocol:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;->mListener:Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;

    iput-object p4, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;->mClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_request_channel_message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    const-string v1, "key_channel_msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    const-string v1, "key_user_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;->messageServerProtocol:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;->mListener:Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;->mClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->deliverReply(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;->messageServerProtocol:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;->channelSocket:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;->mListener:Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;->mClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->deliverMessage(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;)V

    goto :goto_0

    :pswitch_2
    const-string v1, "key_result_msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v1, "key_result_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iget-object v6, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;->messageServerProtocol:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    iget-object v7, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;->mListener:Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;

    move-object v8, v3

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->deliverRequestError(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
