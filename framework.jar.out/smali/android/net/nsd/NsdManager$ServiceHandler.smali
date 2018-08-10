.class Landroid/net/nsd/NsdManager$ServiceHandler;
.super Landroid/os/Handler;
.source "NsdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/NsdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/nsd/NsdManager;


# direct methods
.method constructor <init>(Landroid/net/nsd/NsdManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    iget-object v3, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v4}, Landroid/net/nsd/NsdManager;->-wrap1(Landroid/net/nsd/NsdManager;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/net/nsd/NsdManager;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Stale key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    iget-object v3, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v3}, Landroid/net/nsd/NsdManager;->-get1(Landroid/net/nsd/NsdManager;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    const v4, 0x11001

    invoke-virtual {v3, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    return-void

    :pswitch_2
    iget-object v3, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v3}, Landroid/net/nsd/NsdManager;->-get2(Landroid/net/nsd/NsdManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :pswitch_3
    invoke-static {}, Landroid/net/nsd/NsdManager;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Channel lost"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v3, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v4}, Landroid/net/nsd/NsdManager;->-wrap0(Landroid/net/nsd/NsdManager;I)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_1

    :pswitch_4
    invoke-static {}, Landroid/net/nsd/NsdManager;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Ignored "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_5
    iget-object v4, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/nsd/NsdServiceInfo;

    invoke-static {v4, v3}, Landroid/net/nsd/NsdManager;->-wrap2(Landroid/net/nsd/NsdManager;Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v2

    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-interface {v0, v2}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onDiscoveryStarted(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    iget-object v3, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v4}, Landroid/net/nsd/NsdManager;->-wrap3(Landroid/net/nsd/NsdManager;I)V

    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    iget-object v3, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v3, v1}, Landroid/net/nsd/NsdManager;->-wrap2(Landroid/net/nsd/NsdManager;Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v3, v4}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onStartDiscoveryFailed(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_7
    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v0, v3}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onServiceFound(Landroid/net/nsd/NsdServiceInfo;)V

    goto :goto_0

    :pswitch_8
    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v0, v3}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onServiceLost(Landroid/net/nsd/NsdServiceInfo;)V

    goto :goto_0

    :pswitch_9
    iget-object v3, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v4}, Landroid/net/nsd/NsdManager;->-wrap3(Landroid/net/nsd/NsdManager;I)V

    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    iget-object v3, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v3, v1}, Landroid/net/nsd/NsdManager;->-wrap2(Landroid/net/nsd/NsdManager;Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v3, v4}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onStopDiscoveryFailed(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_a
    iget-object v3, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v4}, Landroid/net/nsd/NsdManager;->-wrap3(Landroid/net/nsd/NsdManager;I)V

    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    iget-object v3, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v3, v1}, Landroid/net/nsd/NsdManager;->-wrap2(Landroid/net/nsd/NsdManager;Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onDiscoveryStopped(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_b
    iget-object v3, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v4}, Landroid/net/nsd/NsdManager;->-wrap3(Landroid/net/nsd/NsdManager;I)V

    check-cast v0, Landroid/net/nsd/NsdManager$RegistrationListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v3}, Landroid/net/nsd/NsdManager$RegistrationListener;->onRegistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    goto :goto_0

    :pswitch_c
    check-cast v0, Landroid/net/nsd/NsdManager$RegistrationListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v0, v3}, Landroid/net/nsd/NsdManager$RegistrationListener;->onServiceRegistered(Landroid/net/nsd/NsdServiceInfo;)V

    goto :goto_0

    :pswitch_d
    iget-object v3, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v4}, Landroid/net/nsd/NsdManager;->-wrap3(Landroid/net/nsd/NsdManager;I)V

    check-cast v0, Landroid/net/nsd/NsdManager$RegistrationListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v3}, Landroid/net/nsd/NsdManager$RegistrationListener;->onUnregistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v3, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v4}, Landroid/net/nsd/NsdManager;->-wrap3(Landroid/net/nsd/NsdManager;I)V

    check-cast v0, Landroid/net/nsd/NsdManager$RegistrationListener;

    invoke-interface {v0, v1}, Landroid/net/nsd/NsdManager$RegistrationListener;->onServiceUnregistered(Landroid/net/nsd/NsdServiceInfo;)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v3, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v4}, Landroid/net/nsd/NsdManager;->-wrap3(Landroid/net/nsd/NsdManager;I)V

    check-cast v0, Landroid/net/nsd/NsdManager$ResolveListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v3}, Landroid/net/nsd/NsdManager$ResolveListener;->onResolveFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v3, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v4}, Landroid/net/nsd/NsdManager;->-wrap3(Landroid/net/nsd/NsdManager;I)V

    check-cast v0, Landroid/net/nsd/NsdManager$ResolveListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v0, v3}, Landroid/net/nsd/NsdManager$ResolveListener;->onServiceResolved(Landroid/net/nsd/NsdServiceInfo;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x11000
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x60002
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_9
        :pswitch_a
        :pswitch_4
        :pswitch_b
        :pswitch_c
        :pswitch_4
        :pswitch_d
        :pswitch_e
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
