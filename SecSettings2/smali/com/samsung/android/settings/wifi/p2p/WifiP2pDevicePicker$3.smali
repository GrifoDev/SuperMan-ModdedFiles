.class Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$3;
.super Landroid/os/CountDownTimer;
.source "WifiP2pDevicePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$3;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-get4()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$3;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-wrap0(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$3;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-wrap10(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$3;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-get1(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$3;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-get8(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$3;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-wrap3(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$3;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-get5(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$3;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-wrap4(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$3;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-wrap10(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)V

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
