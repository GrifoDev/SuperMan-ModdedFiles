.class Lcom/android/systemui/wifi/WifiStatusReceiver$1;
.super Ljava/lang/Object;
.source "WifiStatusReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wifi/WifiStatusReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wifi/WifiStatusReceiver;

.field final synthetic val$netId:I

.field final synthetic val$p2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field final synthetic val$p2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/wifi/WifiStatusReceiver;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$1;->this$0:Lcom/android/systemui/wifi/WifiStatusReceiver;

    iput-object p2, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$1;->val$p2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object p3, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$1;->val$p2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iput p4, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$1;->val$netId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$1;->val$p2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$1;->val$p2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/systemui/wifi/WifiStatusReceiver$1$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/wifi/WifiStatusReceiver$1$1;-><init>(Lcom/android/systemui/wifi/WifiStatusReceiver$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    iget v1, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$1;->val$netId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$1;->this$0:Lcom/android/systemui/wifi/WifiStatusReceiver;

    invoke-static {v1}, Lcom/android/systemui/wifi/WifiStatusReceiver;->-get0(Lcom/android/systemui/wifi/WifiStatusReceiver;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iget v1, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$1;->val$netId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    const-string/jumbo v1, "WifiStatusReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SCC Dialog: request to connect - netid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$1;->val$netId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    const-string/jumbo v1, "WifiStatusReceiver"

    const-string/jumbo v2, "SCC Dialog: network id is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
