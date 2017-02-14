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
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$1;->val$p2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$1;->val$p2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/systemui/wifi/WifiStatusReceiver$1$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/wifi/WifiStatusReceiver$1$1;-><init>(Lcom/android/systemui/wifi/WifiStatusReceiver$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    iget-object v0, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$1;->this$0:Lcom/android/systemui/wifi/WifiStatusReceiver;

    iget-object v1, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$1;->this$0:Lcom/android/systemui/wifi/WifiStatusReceiver;

    invoke-static {v1}, Lcom/android/systemui/wifi/WifiStatusReceiver;->-get0(Lcom/android/systemui/wifi/WifiStatusReceiver;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$1;->val$netId:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/wifi/WifiStatusReceiver;->-wrap0(Lcom/android/systemui/wifi/WifiStatusReceiver;Landroid/content/Context;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
