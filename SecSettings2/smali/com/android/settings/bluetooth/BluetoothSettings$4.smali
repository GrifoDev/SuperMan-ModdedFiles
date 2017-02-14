.class Lcom/android/settings/bluetooth/BluetoothSettings$4;
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

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 10

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v1, v1, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set2(Lcom/android/settings/bluetooth/BluetoothSettings;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v9

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v8

    const-string/jumbo v0, "BluetoothSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bixby::onStateReceived(), stateId : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "BluetoothSettings"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "BluetoothOn"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v9, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get4(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Bluetooth"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "yes"

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "Root"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "BluetoothOff"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v9, :cond_5

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get4(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Bluetooth"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "yes"

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "Root"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "BluetoothStartScanning"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez v9, :cond_7

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get4(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_0

    :cond_7
    if-nez v8, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v0, "BluetoothStopScanning"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-nez v9, :cond_9

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Bluetooth"

    const-string/jumbo v3, "On"

    const-string/jumbo v4, "no"

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    :cond_9
    if-eqz v8, :cond_a

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "BluetoothScanning"

    const-string/jumbo v3, "On"

    const-string/jumbo v4, "no"

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v0, "BluetoothDiscoverableModeOn"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-nez v9, :cond_c

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get4(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Bluetooth"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "no"

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Bluetooth"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_d
    const-string/jumbo v0, "BluetoothDeviceConnect"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    if-nez v9, :cond_e

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get4(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_e
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v0

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set0(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_f
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v3, "Exist"

    const-string/jumbo v4, "no"

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    return-void

    :cond_10
    const-string/jumbo v0, "BluetoothSettings"

    const-string/jumbo v1, "Bixby :: parameter size is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    return-void

    :cond_11
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDeviceByName(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v7

    if-eqz v7, :cond_14

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v3, "AlreadyPaired"

    const-string/jumbo v4, "no"

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap0(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    return-void

    :cond_12
    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v3, "AlreadyConnected"

    const-string/jumbo v4, "yes"

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap0(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    :cond_13
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto/16 :goto_0

    :cond_14
    if-nez v8, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()V

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v0, "BluetoothDeviceDisconnect"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    if-nez v9, :cond_16

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    return-void

    :cond_16
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v0

    if-lez v0, :cond_18

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set0(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_17
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v3, "Exist"

    const-string/jumbo v4, "no"

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    return-void

    :cond_18
    const-string/jumbo v0, "BluetoothSettings"

    const-string/jumbo v1, "Bixby :: parameter size is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    return-void

    :cond_19
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDeviceByName(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v7

    if-eqz v7, :cond_1b

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect()V

    goto/16 :goto_0

    :cond_1a
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v3, "AlradyConnected"

    const-string/jumbo v4, "no"

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap0(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    :cond_1b
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v3, "Match"

    const-string/jumbo v4, "no"

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap0(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    :cond_1c
    const-string/jumbo v0, "BluetoothControlHistory"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0b03cb

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "BluetoothControlHistory"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1d
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    :cond_1e
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0b03cb

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_2

    :cond_1f
    const-string/jumbo v0, "BluetoothPairedDeviceSetting"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v0

    if-lez v0, :cond_21

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set0(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v3, "Exist"

    const-string/jumbo v4, "no"

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    return-void

    :cond_21
    const-string/jumbo v0, "BluetoothSettings"

    const-string/jumbo v1, "Bixby :: parameter size is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    return-void

    :cond_22
    if-nez v9, :cond_23

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Bluetooth"

    const-string/jumbo v3, "On"

    const-string/jumbo v4, "no"

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    return-void

    :cond_23
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDeviceByName(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v7

    if-eqz v7, :cond_26

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_26

    new-instance v2, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v0, "device"

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set3(Z)Z

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b10e3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v3, "Match"

    const-string/jumbo v4, "yes"

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    :cond_24
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    :cond_25
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b10e3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_3

    :cond_26
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v3, "Match"

    const-string/jumbo v4, "no"

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap0(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0
.end method
