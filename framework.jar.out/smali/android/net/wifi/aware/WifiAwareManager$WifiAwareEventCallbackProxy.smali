.class Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;
.super Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;
.source "WifiAwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/WifiAwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiAwareEventCallbackProxy"
.end annotation


# static fields
.field private static final CALLBACK_CONNECT_FAIL:I = 0x1

.field private static final CALLBACK_CONNECT_SUCCESS:I = 0x0

.field private static final CALLBACK_IDENTITY_CHANGED:I = 0x2

.field private static final CALLBACK_RANGING_ABORTED:I = 0x5

.field private static final CALLBACK_RANGING_FAILURE:I = 0x4

.field private static final CALLBACK_RANGING_SUCCESS:I = 0x3


# instance fields
.field private final mAwareManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/net/wifi/aware/WifiAwareManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mBinder:Landroid/os/Binder;

.field private final mHandler:Landroid/os/Handler;

.field private final mLooper:Landroid/os/Looper;


# direct methods
.method static synthetic -get0(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;)Landroid/os/Binder;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mBinder:Landroid/os/Binder;

    return-object v0
.end method

.method constructor <init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Looper;Landroid/os/Binder;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mLooper:Landroid/os/Looper;

    iput-object p3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mBinder:Landroid/os/Binder;

    new-instance v0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;

    invoke-direct {v0, p0, p2, p4, p5}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;-><init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;Landroid/os/Looper;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;)V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method getAndRemoveRangingListener(I)Landroid/net/wifi/RttManager$RttListener;
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/aware/WifiAwareManager;

    if-nez v1, :cond_0

    const-string/jumbo v2, "WifiAwareManager"

    const-string/jumbo v3, "getAndRemoveRangingListener: called post GC"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    invoke-static {v1}, Landroid/net/wifi/aware/WifiAwareManager;->-get0(Landroid/net/wifi/aware/WifiAwareManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    invoke-static {v1}, Landroid/net/wifi/aware/WifiAwareManager;->-get1(Landroid/net/wifi/aware/WifiAwareManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/RttManager$RttListener;

    invoke-static {v1}, Landroid/net/wifi/aware/WifiAwareManager;->-get1(Landroid/net/wifi/aware/WifiAwareManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public onConnectFail(I)V
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onConnectSuccess(I)V
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onIdentityChanged([B)V
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onRangingAborted(I)V
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onRangingFailure(IILjava/lang/String;)V
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onRangingSuccess(ILandroid/net/wifi/RttManager$ParcelableRttResults;)V
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
