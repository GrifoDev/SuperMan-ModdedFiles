.class Landroid/net/ip/IpManager$2;
.super Lcom/android/server/net/NetlinkTracker;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ip/IpManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;Landroid/os/INetworkManagementService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ip/IpManager;


# direct methods
.method constructor <init>(Landroid/net/ip/IpManager;Ljava/lang/String;Lcom/android/server/net/NetlinkTracker$Callback;)V
    .locals 0

    iput-object p1, p0, Landroid/net/ip/IpManager$2;->this$0:Landroid/net/ip/IpManager;

    invoke-direct {p0, p2, p3}, Lcom/android/server/net/NetlinkTracker;-><init>(Ljava/lang/String;Lcom/android/server/net/NetlinkTracker$Callback;)V

    return-void
.end method


# virtual methods
.method public interfaceAdded(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/server/net/NetlinkTracker;->interfaceAdded(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/ip/IpManager$2;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get1(Landroid/net/ip/IpManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/ip/IpManager$2;->this$0:Landroid/net/ip/IpManager;

    iget-object v0, v0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ip/IpManager$Callback;->setNeighborDiscoveryOffload(Z)V

    :cond_0
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/server/net/NetlinkTracker;->interfaceRemoved(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/ip/IpManager$2;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get1(Landroid/net/ip/IpManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/ip/IpManager$2;->this$0:Landroid/net/ip/IpManager;

    iget-object v0, v0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpManager$Callback;->setNeighborDiscoveryOffload(Z)V

    :cond_0
    return-void
.end method
