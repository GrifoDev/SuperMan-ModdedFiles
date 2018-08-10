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

.field final synthetic val$config:Landroid/net/wifi/WifiConfiguration;

.field final synthetic val$netId:I

.field final synthetic val$p2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field final synthetic val$p2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/wifi/WifiStatusReceiver;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/WifiConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$1;->this$0:Lcom/android/systemui/wifi/WifiStatusReceiver;

    iput-object p2, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$1;->val$p2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object p3, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$1;->val$p2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iput p4, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$1;->val$netId:I

    iput-object p5, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$1;->val$config:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$1;->val$p2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$1;->val$p2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v4, Lcom/android/systemui/wifi/WifiStatusReceiver$1$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/wifi/WifiStatusReceiver$1$1;-><init>(Lcom/android/systemui/wifi/WifiStatusReceiver$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$1;->this$0:Lcom/android/systemui/wifi/WifiStatusReceiver;

    invoke-static {v2}, Lcom/android/systemui/wifi/WifiStatusReceiver;->-get0(Lcom/android/systemui/wifi/WifiStatusReceiver;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iget v2, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$1;->val$netId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$1;->val$netId:I

    invoke-virtual {v1, v2, v5}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    const-string/jumbo v2, "WifiStatusReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SCC Dialog: request to connect - netid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$1;->val$netId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$1;->val$config:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$1;->val$config:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v5}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    const-string/jumbo v2, "WifiStatusReceiver"

    const-string/jumbo v3, "SCC Dialog: request to connect - config"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "WifiStatusReceiver"

    const-string/jumbo v3, "SCC Dialog: network id & config are invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
