.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;
.super Landroid/os/CountDownTimer;
.source "WifiP2pSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get6()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get1(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get7(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-wrap5(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-wrap8(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-wrap4(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-wrap8(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)V

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
