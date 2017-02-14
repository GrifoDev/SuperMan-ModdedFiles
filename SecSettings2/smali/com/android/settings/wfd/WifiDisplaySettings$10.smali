.class Lcom/android/settings/wfd/WifiDisplaySettings$10;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "WifiDisplaySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " onReceive : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v6, v6, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v6}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    invoke-virtual {v5}, Landroid/hardware/display/SemWifiDisplayStatus;->getFeatureState()I

    move-result v3

    const-string/jumbo v6, "WifiDisplaySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "wifi display status changed! scanstate : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/hardware/display/SemWifiDisplayStatus;->isScanning()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", ActiveDisplayState : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v6}, Lcom/android/settings/wfd/WifiDisplaySettings;->-get3(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-result-object v6

    iget-object v6, v6, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v7, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v6}, Lcom/android/settings/wfd/WifiDisplaySettings;->-get3(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-result-object v6

    iget-object v6, v6, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v7, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->AP:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-ne v6, v7, :cond_1

    :cond_0
    if-nez v1, :cond_1

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap9(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    :cond_1
    const/4 v6, 0x3

    if-ne v3, v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-boolean v6, v6, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    if-nez v6, :cond_2

    if-nez v1, :cond_3

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v6}, Lcom/android/settings/wfd/WifiDisplaySettings;->-get3(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-result-object v6

    iget-object v6, v6, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v7, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-eq v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v6}, Lcom/android/settings/wfd/WifiDisplaySettings;->-get3(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-result-object v6

    iget-object v6, v6, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v7, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->AP:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-ne v6, v7, :cond_3

    :cond_2
    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v6}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap3(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_3
    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v6}, Lcom/android/settings/wfd/WifiDisplaySettings;->-get3(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-result-object v6

    iget-object v6, v6, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v7, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-eq v6, v7, :cond_4

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v6}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap3(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v6}, Lcom/android/settings/wfd/WifiDisplaySettings;->-get3(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-result-object v6

    iget-object v6, v6, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v7, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-ne v6, v7, :cond_5

    :cond_4
    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap12(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    :cond_5
    :goto_0
    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v6}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap3(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v6}, Lcom/android/settings/wfd/WifiDisplaySettings;->-get13(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-result-object v6

    sget-object v7, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->AP:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-eq v6, v7, :cond_6

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v6}, Lcom/android/settings/wfd/WifiDisplaySettings;->-get4(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/wfd/WfdSettingsUtils;->isP2pConnected(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v6}, Lcom/android/settings/wfd/WifiDisplaySettings;->-get13(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-result-object v6

    sget-object v7, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-ne v6, v7, :cond_7

    :cond_6
    if-nez v1, :cond_7

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v6}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap10(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    :cond_7
    :goto_1
    return-void

    :cond_8
    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v6}, Lcom/android/settings/wfd/WifiDisplaySettings;->-get3(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-result-object v6

    sget-object v7, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    iput-object v7, v6, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap12(Lcom/android/settings/wfd/WifiDisplaySettings;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v6, "WifiDisplaySettings"

    const-string/jumbo v7, "Print call stack for debugging."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    :cond_9
    :try_start_1
    const-string/jumbo v6, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string/jumbo v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    if-nez v4, :cond_a

    const-string/jumbo v6, "WifiDisplaySettings"

    const-string/jumbo v7, "networkInfo is null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v6, v6, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v6}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    const-string/jumbo v6, "WifiDisplaySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Received : WIFI_P2P_CONNECTION_CHANGED_ACTION: networkInfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", ActiveDisplayState : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v6}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap3(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-nez v1, :cond_7

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v6}, Lcom/android/settings/wfd/WifiDisplaySettings;->-get13(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-result-object v6

    sget-object v7, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-ne v6, v7, :cond_7

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_7

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v6}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap10(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
