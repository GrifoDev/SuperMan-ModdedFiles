.class Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncSocketHandler"
.end annotation


# instance fields
.field private mCallbackHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;->mCallbackHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;->mCallbackHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v9, -0x2

    const/4 v8, -0x3

    const/4 v7, 0x1

    const/4 v6, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncSocketHandler. message.what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

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

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;->mCallbackHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, v1, Landroid/os/Message;->what:I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "AsyncSocketHandler. Unknown message."

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$600(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Ljava/net/Socket;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "AsyncSocketHandler. Invalid Socket."

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput v6, v1, Landroid/os/Message;->what:I

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncSocketHandler. Send callback.what: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    iget v3, v1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$300(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    const-string v0, "AsyncSocketHandler. Invalid ProxyServer address."

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput v6, v1, Landroid/os/Message;->what:I

    goto :goto_1

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AsyncSocketHandler. connect "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$600(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$600(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$602(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Ljava/net/Socket;)Ljava/net/Socket;

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$602(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Ljava/net/Socket;)Ljava/net/Socket;

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$600(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Ljava/net/Socket;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/net/Socket;->setSoLinger(ZI)V

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$600(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Ljava/net/Socket;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$600(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Ljava/net/Socket;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setKeepAlive(Z)V

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$600(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Ljava/net/Socket;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-virtual {v2, v0, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    goto/16 :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AsyncSocketHandler. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v7, :cond_4

    iput v9, v1, Landroid/os/Message;->what:I

    goto/16 :goto_1

    :cond_4
    iput v6, v1, Landroid/os/Message;->what:I

    goto/16 :goto_1

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AsyncSocketHandler. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v7, :cond_5

    iput v9, v1, Landroid/os/Message;->what:I

    goto/16 :goto_1

    :cond_5
    iput v6, v1, Landroid/os/Message;->what:I

    goto/16 :goto_1

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AsyncSocketHandler. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput v6, v1, Landroid/os/Message;->what:I

    goto/16 :goto_1

    :catch_3
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AsyncSocketHandler. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput v6, v1, Landroid/os/Message;->what:I

    goto/16 :goto_1

    :catch_4
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AsyncSocketHandler. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput v6, v1, Landroid/os/Message;->what:I

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_6

    const-string v0, "AsyncSocketHandler. Invalid ServerMessage."

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput v6, v1, Landroid/os/Message;->what:I

    goto/16 :goto_1

    :cond_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$1100(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;)I

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "AsyncSocketHandler. Failed to send ChannelAuthRequest."

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput v6, v1, Landroid/os/Message;->what:I

    goto/16 :goto_1

    :cond_7
    :pswitch_3
    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$600(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v2, 0x6

    new-array v2, v2, [B

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v3, v0, v2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$2600(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Ljava/io/BufferedInputStream;[B)Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;

    move-result-object v3

    if-nez v3, :cond_8

    const-string v0, "AsyncSocketHandler. Invalid ServerMessage."

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x3

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AsyncSocketHandler. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;->this$0:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$2700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)V

    iput v8, v1, Landroid/os/Message;->what:I

    goto/16 :goto_1

    :cond_8
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AsyncSocketHandler. serverMessage.type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;->getType()Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->access$400()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;->mCallbackHandler:Landroid/os/Handler;

    invoke-static {v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v4

    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v3, 0x5

    iput v3, v4, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
