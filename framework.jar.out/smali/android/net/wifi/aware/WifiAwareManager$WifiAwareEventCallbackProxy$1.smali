.class Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;
.super Landroid/os/Handler;
.source "WifiAwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;-><init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Looper;Landroid/os/Binder;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;

.field final synthetic val$attachCallback:Landroid/net/wifi/aware/AttachCallback;

.field final synthetic val$identityChangedListener:Landroid/net/wifi/aware/IdentityChangedListener;


# direct methods
.method constructor <init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;Landroid/os/Looper;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->this$1:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;

    iput-object p3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->val$attachCallback:Landroid/net/wifi/aware/AttachCallback;

    iput-object p4, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->val$identityChangedListener:Landroid/net/wifi/aware/IdentityChangedListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->this$1:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;

    invoke-static {v2}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->-get0(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/aware/WifiAwareManager;

    if-nez v1, :cond_0

    const-string/jumbo v2, "WifiAwareManager"

    const-string/jumbo v3, "WifiAwareEventCallbackProxy: handleMessage post GC"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->val$attachCallback:Landroid/net/wifi/aware/AttachCallback;

    new-instance v3, Landroid/net/wifi/aware/WifiAwareSession;

    iget-object v4, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->this$1:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;

    invoke-static {v4}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->-get1(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;)Landroid/os/Binder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v3, v1, v4, v5}, Landroid/net/wifi/aware/WifiAwareSession;-><init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Binder;I)V

    invoke-virtual {v2, v3}, Landroid/net/wifi/aware/AttachCallback;->onAttached(Landroid/net/wifi/aware/WifiAwareSession;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->this$1:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;

    invoke-static {v2}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->-get0(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->clear()V

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->val$attachCallback:Landroid/net/wifi/aware/AttachCallback;

    invoke-virtual {v2}, Landroid/net/wifi/aware/AttachCallback;->onAttachFailed()V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->val$identityChangedListener:Landroid/net/wifi/aware/IdentityChangedListener;

    if-nez v2, :cond_1

    const-string/jumbo v2, "WifiAwareManager"

    const-string/jumbo v3, "CALLBACK_IDENTITY_CHANGED: null listener."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->val$identityChangedListener:Landroid/net/wifi/aware/IdentityChangedListener;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-virtual {v3, v2}, Landroid/net/wifi/aware/IdentityChangedListener;->onIdentityChanged([B)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->this$1:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->getAndRemoveRangingListener(I)Landroid/net/wifi/RttManager$RttListener;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v2, "WifiAwareManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CALLBACK_RANGING_SUCCESS rangingId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": no listener registered (anymore)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/RttManager$ParcelableRttResults;

    iget-object v2, v2, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    invoke-interface {v0, v2}, Landroid/net/wifi/RttManager$RttListener;->onSuccess([Landroid/net/wifi/RttManager$RttResult;)V

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->this$1:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->getAndRemoveRangingListener(I)Landroid/net/wifi/RttManager$RttListener;

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v2, "WifiAwareManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CALLBACK_RANGING_SUCCESS rangingId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": no listener registered (anymore)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/net/wifi/RttManager$RttListener;->onFailure(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->this$1:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->getAndRemoveRangingListener(I)Landroid/net/wifi/RttManager$RttListener;

    move-result-object v0

    if-nez v0, :cond_4

    const-string/jumbo v2, "WifiAwareManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CALLBACK_RANGING_SUCCESS rangingId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": no listener registered (anymore)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    invoke-interface {v0}, Landroid/net/wifi/RttManager$RttListener;->onAborted()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
