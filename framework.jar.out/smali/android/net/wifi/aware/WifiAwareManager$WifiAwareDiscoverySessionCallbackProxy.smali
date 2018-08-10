.class Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;
.super Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;
.source "WifiAwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/WifiAwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiAwareDiscoverySessionCallbackProxy"
.end annotation


# static fields
.field private static final CALLBACK_MATCH:I = 0x4

.field private static final CALLBACK_MESSAGE_RECEIVED:I = 0x7

.field private static final CALLBACK_MESSAGE_SEND_FAIL:I = 0x6

.field private static final CALLBACK_MESSAGE_SEND_SUCCESS:I = 0x5

.field private static final CALLBACK_SESSION_CONFIG_FAIL:I = 0x2

.field private static final CALLBACK_SESSION_CONFIG_SUCCESS:I = 0x1

.field private static final CALLBACK_SESSION_STARTED:I = 0x0

.field private static final CALLBACK_SESSION_TERMINATED:I = 0x3

.field private static final MESSAGE_BUNDLE_KEY_MESSAGE:Ljava/lang/String; = "message"

.field private static final MESSAGE_BUNDLE_KEY_MESSAGE2:Ljava/lang/String; = "message2"


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

.field private final mClientId:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIsPublish:Z

.field private final mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

.field private mSession:Landroid/net/wifi/aware/DiscoverySession;


# direct methods
.method static synthetic -get0(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;)Landroid/net/wifi/aware/DiscoverySessionCallback;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    return-object v0
.end method

.method static synthetic -get2(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;)Landroid/net/wifi/aware/DiscoverySession;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mSession:Landroid/net/wifi/aware/DiscoverySession;

    return-object v0
.end method

.method constructor <init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Looper;ZLandroid/net/wifi/aware/DiscoverySessionCallback;I)V
    .locals 1

    invoke-direct {p0}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    iput-boolean p3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mIsPublish:Z

    iput-object p4, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    iput p5, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mClientId:I

    new-instance v0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$1;

    invoke-direct {v0, p0, p2}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$1;-><init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onMatch(I[B[B)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "message"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v2, "message2"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput p1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onMessageReceived(I[B)V
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onMessageSendFail(II)V
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onMessageSendSuccess(I)V
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onProxySessionStarted(I)V
    .locals 6

    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mSession:Landroid/net/wifi/aware/DiscoverySession;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "WifiAwareManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSessionStarted: sessionId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": session already created!?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSessionStarted: sessionId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": session already created!?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    if-nez v0, :cond_1

    const-string/jumbo v3, "WifiAwareManager"

    const-string/jumbo v4, "onProxySessionStarted: mgr GC\'d"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean v3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mIsPublish:Z

    if-eqz v3, :cond_2

    new-instance v1, Landroid/net/wifi/aware/PublishDiscoverySession;

    iget v3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mClientId:I

    invoke-direct {v1, v0, v3, p1}, Landroid/net/wifi/aware/PublishDiscoverySession;-><init>(Landroid/net/wifi/aware/WifiAwareManager;II)V

    iput-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mSession:Landroid/net/wifi/aware/DiscoverySession;

    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    invoke-virtual {v3, v1}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onPublishStarted(Landroid/net/wifi/aware/PublishDiscoverySession;)V

    :goto_0
    return-void

    :cond_2
    new-instance v2, Landroid/net/wifi/aware/SubscribeDiscoverySession;

    iget v3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mClientId:I

    invoke-direct {v2, v0, v3, p1}, Landroid/net/wifi/aware/SubscribeDiscoverySession;-><init>(Landroid/net/wifi/aware/WifiAwareManager;II)V

    iput-object v2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mSession:Landroid/net/wifi/aware/DiscoverySession;

    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    invoke-virtual {v3, v2}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onSubscribeStarted(Landroid/net/wifi/aware/SubscribeDiscoverySession;)V

    goto :goto_0
.end method

.method public onProxySessionTerminated(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mSession:Landroid/net/wifi/aware/DiscoverySession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mSession:Landroid/net/wifi/aware/DiscoverySession;

    invoke-virtual {v0}, Landroid/net/wifi/aware/DiscoverySession;->setTerminated()V

    iput-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mSession:Landroid/net/wifi/aware/DiscoverySession;

    :goto_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    invoke-virtual {v0}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onSessionTerminated()V

    return-void

    :cond_0
    const-string/jumbo v0, "WifiAwareManager"

    const-string/jumbo v1, "Proxy: onSessionTerminated called but mSession is null!?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSessionConfigFail(I)V
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSessionConfigSuccess()V
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSessionStarted(I)V
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSessionTerminated(I)V
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
