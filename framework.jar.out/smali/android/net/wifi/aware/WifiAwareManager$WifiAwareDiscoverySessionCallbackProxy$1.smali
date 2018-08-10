.class Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$1;
.super Landroid/os/Handler;
.source "WifiAwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;-><init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Looper;ZLandroid/net/wifi/aware/DiscoverySessionCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;


# direct methods
.method constructor <init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$1;->this$1:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$1;->this$1:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;

    invoke-static {v3}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->-get0(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "WifiAwareManager"

    const-string/jumbo v4, "WifiAwareDiscoverySessionCallbackProxy: handleMessage post GC"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$1;->this$1:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->onProxySessionStarted(I)V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$1;->this$1:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;

    invoke-static {v3}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->-get1(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;)Landroid/net/wifi/aware/DiscoverySessionCallback;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onSessionConfigUpdated()V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$1;->this$1:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;

    invoke-static {v3}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->-get1(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;)Landroid/net/wifi/aware/DiscoverySessionCallback;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onSessionConfigFailed()V

    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$1;->this$1:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;

    invoke-static {v3}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->-get2(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;)Landroid/net/wifi/aware/DiscoverySession;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$1;->this$1:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;

    invoke-static {v3}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->-get0(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->clear()V

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$1;->this$1:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->onProxySessionTerminated(I)V

    goto :goto_0

    :pswitch_4
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "message2"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    :try_start_0
    new-instance v3, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5, v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;-><init>(II[B)V

    invoke-virtual {v3}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->toList()Ljava/util/List;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$1;->this$1:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;

    invoke-static {v3}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->-get1(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;)Landroid/net/wifi/aware/DiscoverySessionCallback;

    move-result-object v3

    new-instance v4, Landroid/net/wifi/aware/PeerHandle;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v4, v5}, Landroid/net/wifi/aware/PeerHandle;-><init>(I)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "message"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onServiceDiscovered(Landroid/net/wifi/aware/PeerHandle;[BLjava/util/List;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    const-string/jumbo v3, "WifiAwareManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onServiceDiscovered: invalid match filter byte array \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-static {v0}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' - cannot be parsed: e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_5
    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$1;->this$1:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;

    invoke-static {v3}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->-get1(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;)Landroid/net/wifi/aware/DiscoverySessionCallback;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onMessageSendSucceeded(I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$1;->this$1:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;

    invoke-static {v3}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->-get1(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;)Landroid/net/wifi/aware/DiscoverySessionCallback;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onMessageSendFailed(I)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$1;->this$1:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;

    invoke-static {v3}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->-get1(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;)Landroid/net/wifi/aware/DiscoverySessionCallback;

    move-result-object v4

    new-instance v5, Landroid/net/wifi/aware/PeerHandle;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v5, v3}, Landroid/net/wifi/aware/PeerHandle;-><init>(I)V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    invoke-virtual {v4, v5, v3}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onMessageReceived(Landroid/net/wifi/aware/PeerHandle;[B)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
