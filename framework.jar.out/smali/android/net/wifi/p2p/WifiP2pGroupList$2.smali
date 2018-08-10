.class Landroid/net/wifi/p2p/WifiP2pGroupList$2;
.super Landroid/util/LruCache;
.source "WifiP2pGroupList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/p2p/WifiP2pGroupList;-><init>(Landroid/net/wifi/p2p/WifiP2pGroupList;Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/Integer;",
        "Landroid/net/wifi/p2p/WifiP2pGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pGroupList;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pGroupList;I)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pGroupList$2;->this$0:Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Integer;Landroid/net/wifi/p2p/WifiP2pGroup;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList$2;->this$0:Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pGroupList;->-get1(Landroid/net/wifi/p2p/WifiP2pGroupList;)Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList$2;->this$0:Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pGroupList;->-get0(Landroid/net/wifi/p2p/WifiP2pGroupList;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList$2;->this$0:Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pGroupList;->-get1(Landroid/net/wifi/p2p/WifiP2pGroupList;)Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;

    move-result-object v0

    invoke-virtual {p3}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;->onDeleteGroup(I)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Landroid/net/wifi/p2p/WifiP2pGroup;

    check-cast p4, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/net/wifi/p2p/WifiP2pGroupList$2;->entryRemoved(ZLjava/lang/Integer;Landroid/net/wifi/p2p/WifiP2pGroup;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void
.end method
