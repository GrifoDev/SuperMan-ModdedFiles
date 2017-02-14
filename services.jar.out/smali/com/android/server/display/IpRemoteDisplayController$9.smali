.class Lcom/android/server/display/IpRemoteDisplayController$9;
.super Ljava/lang/Object;
.source "IpRemoteDisplayController.java"

# interfaces
.implements Landroid/media/RemoteDisplay$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/IpRemoteDisplayController;->enableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/IpRemoteDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/IpRemoteDisplayController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayConnected(Landroid/view/Surface;IIII)V
    .locals 7

    const/16 v5, 0xa

    const/4 v4, 0x3

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get1(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get8(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/media/RemoteDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "IpRemoteDisplayController"

    const-string/jumbo v2, "onDisplayConnected"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get0(Lcom/android/server/display/IpRemoteDisplayController;)I

    move-result v0

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get10(Lcom/android/server/display/IpRemoteDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get6(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v2}, Lcom/android/server/display/IpRemoteDisplayController;->-get11(Lcom/android/server/display/IpRemoteDisplayController;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v2}, Lcom/android/server/display/IpRemoteDisplayController;->-get1(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/display/IpRemoteDisplayController;->-wrap0(Lcom/android/server/display/IpRemoteDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/hardware/display/WifiDisplay;->setDeviceInfo(I)V

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get2(Lcom/android/server/display/IpRemoteDisplayController;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/hardware/display/WifiDisplay;->setUri(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v2}, Lcom/android/server/display/IpRemoteDisplayController;->-get0(Lcom/android/server/display/IpRemoteDisplayController;)I

    move-result v6

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/display/IpRemoteDisplayController;->-wrap2(Lcom/android/server/display/IpRemoteDisplayController;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/display/IpRemoteDisplayController;->-set5(Lcom/android/server/display/IpRemoteDisplayController;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get0(Lcom/android/server/display/IpRemoteDisplayController;)I

    move-result v0

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0, v3}, Lcom/android/server/display/IpRemoteDisplayController;->-wrap8(Lcom/android/server/display/IpRemoteDisplayController;Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0, v3}, Lcom/android/server/display/IpRemoteDisplayController;->-set4(Lcom/android/server/display/IpRemoteDisplayController;Z)Z

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get6(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v2}, Lcom/android/server/display/IpRemoteDisplayController;->-get11(Lcom/android/server/display/IpRemoteDisplayController;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get12(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/media/WFDUibcManager;

    move-result-object v0

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v0, v2, v3}, Landroid/media/WFDUibcManager;->setUIBCNegotiagedResolution(FF)V

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v2}, Lcom/android/server/display/IpRemoteDisplayController;->-get1(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/display/IpRemoteDisplayController;->-wrap0(Lcom/android/server/display/IpRemoteDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v2}, Lcom/android/server/display/IpRemoteDisplayController;->-get0(Lcom/android/server/display/IpRemoteDisplayController;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/display/IpRemoteDisplayController;->-wrap1(Lcom/android/server/display/IpRemoteDisplayController;I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1, v4}, Landroid/hardware/display/WifiDisplay;->setDeviceInfo(I)V

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get2(Lcom/android/server/display/IpRemoteDisplayController;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/hardware/display/WifiDisplay;->setUri(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v2}, Lcom/android/server/display/IpRemoteDisplayController;->-get0(Lcom/android/server/display/IpRemoteDisplayController;)I

    move-result v6

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/display/IpRemoteDisplayController;->-wrap2(Lcom/android/server/display/IpRemoteDisplayController;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    const/4 v2, 0x2

    const/4 v3, 0x4

    invoke-static {v0, v2, v3}, Lcom/android/server/display/IpRemoteDisplayController;->-wrap9(Lcom/android/server/display/IpRemoteDisplayController;II)V

    goto :goto_0
.end method

.method public onDisplayDisconnected()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get1(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get12(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/media/WFDUibcManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/WFDUibcManager;->stop()Z

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get12(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/media/WFDUibcManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/WFDUibcManager;->setCoupleShotMode(Z)V

    const-string/jumbo v0, "IpRemoteDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Closed RTSP connection with Wifi display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v2}, Lcom/android/server/display/IpRemoteDisplayController;->-get1(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get6(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v1}, Lcom/android/server/display/IpRemoteDisplayController;->-get11(Lcom/android/server/display/IpRemoteDisplayController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0, v3}, Lcom/android/server/display/IpRemoteDisplayController;->-set0(Lcom/android/server/display/IpRemoteDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    :cond_0
    return-void
.end method

.method public onDisplayError(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get1(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "IpRemoteDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Lost RTSP connection with Wifi display due to error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v2}, Lcom/android/server/display/IpRemoteDisplayController;->-get1(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get6(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v1}, Lcom/android/server/display/IpRemoteDisplayController;->-get11(Lcom/android/server/display/IpRemoteDisplayController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v1}, Lcom/android/server/display/IpRemoteDisplayController;->-get0(Lcom/android/server/display/IpRemoteDisplayController;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/IpRemoteDisplayController;->-wrap1(Lcom/android/server/display/IpRemoteDisplayController;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get9(Lcom/android/server/display/IpRemoteDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    const v1, 0x2207b

    invoke-static {v0, v1}, Lcom/android/server/display/IpRemoteDisplayController;->-wrap7(Lcom/android/server/display/IpRemoteDisplayController;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0, v3}, Lcom/android/server/display/IpRemoteDisplayController;->-wrap6(Lcom/android/server/display/IpRemoteDisplayController;Z)V

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0, v4}, Lcom/android/server/display/IpRemoteDisplayController;->-set0(Lcom/android/server/display/IpRemoteDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v1}, Lcom/android/server/display/IpRemoteDisplayController;->-get0(Lcom/android/server/display/IpRemoteDisplayController;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/IpRemoteDisplayController;->-wrap1(Lcom/android/server/display/IpRemoteDisplayController;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get3(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_display_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get13(Lcom/android/server/display/IpRemoteDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0, v3}, Lcom/android/server/display/IpRemoteDisplayController;->-set6(Lcom/android/server/display/IpRemoteDisplayController;Z)Z

    :cond_1
    return-void
.end method
