.class Lcom/android/settings/bluetooth/BluetoothSettings$6;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v3, v3, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set2(Lcom/android/settings/bluetooth/BluetoothSettings;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    const-string/jumbo v2, "BluetoothSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bixby::onStateReceived(), stateId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "BluetoothSettings"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v2, "BluetoothOn"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get6(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Bluetooth"

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "yes"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "BluetoothOff"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->disable()Z

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Bluetooth"

    const-string/jumbo v4, "AlreadyOFF"

    const-string/jumbo v5, "no"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    :cond_5
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get6(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Bluetooth"

    const-string/jumbo v4, "AlreadyOFF"

    const-string/jumbo v5, "yes"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v2, "BluetoothStartScanning"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-nez v1, :cond_9

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get6(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_0

    :cond_9
    if-nez v0, :cond_a

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()Z

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v2, "BluetoothStopScanning"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    if-nez v1, :cond_c

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Bluetooth"

    const-string/jumbo v4, "On"

    const-string/jumbo v5, "no"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_0

    :cond_c
    if-eqz v0, :cond_d

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    goto/16 :goto_0

    :cond_d
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothScanning"

    const-string/jumbo v4, "On"

    const-string/jumbo v5, "no"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v2, "BluetoothDiscoverableModeOn"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    if-nez v1, :cond_f

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get6(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Bluetooth"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_0

    :cond_f
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Bluetooth"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_10
    const-string/jumbo v2, "BluetoothDeviceConnect"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v2

    if-lez v2, :cond_11

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set0(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;)Ljava/lang/String;

    :goto_2
    if-nez v1, :cond_12

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get6(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v2, "BluetoothSettings"

    const-string/jumbo v3, "Bixby :: parameter size is 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_12
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v2, "BluetoothDeviceDisconnect"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    if-nez v1, :cond_14

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Bluetooth"

    const-string/jumbo v4, "On"

    const-string/jumbo v5, "no"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_0

    :cond_14
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Bluetooth"

    const-string/jumbo v4, "On"

    const-string/jumbo v5, "yes"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v2, "BluetoothControlHistory"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-class v3, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.settings.BluetoothControlHistory"

    const v5, 0x7f12040d

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->moveToBluetoothOptionMenu(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    :cond_16
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v2, "DualAudioSettings"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get6(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v2, "MediaVolumeSyncSettings"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    if-nez v1, :cond_19

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get6(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_0

    :cond_19
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-class v3, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.settings.BLUETOOTH_AVC_SETTINGS"

    const v5, 0x7f1203f5

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->moveToBluetoothOptionMenu(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    :cond_1a
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_0

    :cond_1b
    const-string/jumbo v2, "BluetoothHelp"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUseDeltaOptionMenu()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->isSupportHelpMenu()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->moveToHelpMenu()V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "HelpMenu"

    const-string/jumbo v4, "Existed"

    const-string/jumbo v5, "yes"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    :cond_1c
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_0

    :cond_1d
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "HelpMenu"

    const-string/jumbo v4, "Existed"

    const-string/jumbo v5, "no"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_0

    :cond_1e
    const-string/jumbo v2, "BluetoothReceivedFiles"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUseDeltaOptionMenu()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->moveToReceivedFilesMenu()V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ReceivedFiles"

    const-string/jumbo v4, "Existed"

    const-string/jumbo v5, "yes"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    :cond_1f
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_0

    :cond_20
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ReceivedFiles"

    const-string/jumbo v4, "Existed"

    const-string/jumbo v5, "no"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_0

    :cond_21
    const-string/jumbo v2, "BluetoothSnoopOn"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getHciSnoopLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSnoop"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    return-void

    :cond_22
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2, v6}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setHciSnoopLogEnabled(Z)Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSnoop"

    const-string/jumbo v4, "SuccessfullyOn"

    const-string/jumbo v5, "yes"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_0

    :cond_23
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSnoop"

    const-string/jumbo v4, "SuccessfullyOn"

    const-string/jumbo v5, "no"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_0

    :cond_24
    const-string/jumbo v2, "BluetoothSnoopOff"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getHciSnoopLogEnabled()Z

    move-result v2

    if-nez v2, :cond_25

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSnoop"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    return-void

    :cond_25
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2, v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setHciSnoopLogEnabled(Z)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSnoop"

    const-string/jumbo v4, "SuccessfullyOff"

    const-string/jumbo v5, "yes"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_0

    :cond_26
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSnoop"

    const-string/jumbo v4, "SuccessfullyOff"

    const-string/jumbo v5, "no"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_0

    :cond_27
    const-string/jumbo v2, "BluetoothIBRSettings"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-class v3, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.settings.BLUETOOTH_IBR_SETTINGS"

    const v5, 0x7f120455

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->moveToBluetoothOptionMenu(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_0
.end method
