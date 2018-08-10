.class public Landroid/net/wifi/aware/DiscoverySessionCallback;
.super Ljava/lang/Object;
.source "DiscoverySessionCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Landroid/net/wifi/aware/PeerHandle;[B)V
    .locals 0

    return-void
.end method

.method public onMessageSendFailed(I)V
    .locals 0

    return-void
.end method

.method public onMessageSendSucceeded(I)V
    .locals 0

    return-void
.end method

.method public onPublishStarted(Landroid/net/wifi/aware/PublishDiscoverySession;)V
    .locals 0

    return-void
.end method

.method public onServiceDiscovered(Landroid/net/wifi/aware/PeerHandle;[BLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/aware/PeerHandle;",
            "[B",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    return-void
.end method

.method public onSessionConfigFailed()V
    .locals 0

    return-void
.end method

.method public onSessionConfigUpdated()V
    .locals 0

    return-void
.end method

.method public onSessionTerminated()V
    .locals 0

    return-void
.end method

.method public onSubscribeStarted(Landroid/net/wifi/aware/SubscribeDiscoverySession;)V
    .locals 0

    return-void
.end method
