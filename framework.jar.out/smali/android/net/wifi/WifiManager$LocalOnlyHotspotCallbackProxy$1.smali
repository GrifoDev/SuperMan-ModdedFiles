.class Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$1;
.super Landroid/os/Handler;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;-><init>(Landroid/net/wifi/WifiManager;Landroid/os/Looper;Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;

.field final synthetic val$callback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;Landroid/os/Looper;Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$1;->this$1:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;

    iput-object p3, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$1;->val$callback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const-string/jumbo v3, "WifiManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "LocalOnlyHotspotCallbackProxy: handle message what: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$1;->this$1:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;

    invoke-static {v3}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->-get0(Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    const-string/jumbo v3, "WifiManager"

    const-string/jumbo v4, "LocalOnlyHotspotCallbackProxy: handle message post GC"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    const-string/jumbo v3, "WifiManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "LocalOnlyHotspotCallbackProxy unhandled message.  type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_1

    const-string/jumbo v3, "WifiManager"

    const-string/jumbo v4, "LocalOnlyHotspotCallbackProxy: config cannot be null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$1;->val$callback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onFailed(I)V

    return-void

    :cond_1
    iget-object v3, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$1;->val$callback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    new-instance v4, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v1, v0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;-><init>(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onStarted(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v3, "WifiManager"

    const-string/jumbo v4, "LocalOnlyHotspotCallbackProxy: hotspot stopped"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$1;->val$callback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onStopped()V

    goto :goto_0

    :pswitch_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    const-string/jumbo v3, "WifiManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "LocalOnlyHotspotCallbackProxy: failed to start.  reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$1;->val$callback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onFailed(I)V

    const-string/jumbo v3, "WifiManager"

    const-string/jumbo v4, "done with the callback..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
