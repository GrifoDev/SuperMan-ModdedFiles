.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 9

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get8(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-set1(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const-string/jumbo v3, "DeviceProfilesSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bixby::onStateReceived(), stateId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "BluetoothRename"

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get8(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get8(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "BTDeviceChangeName"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "DeviceProfilesSettings"

    const-string/jumbo v4, "Bixby :: parameter size is 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "BTDeviceChangeName"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get8(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "BTDeviceChangeName"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "yes"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    :cond_3
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v8}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "BTDeviceChangeName"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "yes"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "BluetoothUnpair"

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unpair()V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get8(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    const-string/jumbo v5, "AlreadyPaired"

    const-string/jumbo v6, "yes"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    :cond_6
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v8}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->finish()V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v3, "BluetoothUseProfile"

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get8(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v3

    if-lez v3, :cond_9

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get8(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-set0(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_8
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    return-void

    :cond_9
    const-string/jumbo v3, "DeviceProfilesSettings"

    const-string/jumbo v4, "Bixby :: parameter size is 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    return-void

    :cond_a
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap1(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "yes"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v3, "BluetoothStopUsingProfile"

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get8(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v3

    if-lez v3, :cond_d

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get8(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-set0(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_c
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    return-void

    :cond_d
    const-string/jumbo v3, "DeviceProfilesSettings"

    const-string/jumbo v4, "Bixby :: parameter size is 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    return-void

    :cond_e
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap1(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get8(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "yes"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "BTDeviceName"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "BTProfileName"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    :cond_f
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v8}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v3, "BluetoothStopInternetSharing"

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "PAN"

    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-set0(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "PAN"

    invoke-static {v3, v4, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap1(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get8(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "InternetSharingDevice"

    const-string/jumbo v5, "AlreadyActive"

    const-string/jumbo v6, "yes"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    :cond_11
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v8}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    :cond_12
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get8(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "InternetSharingDevice"

    const-string/jumbo v5, "AlreadyActive"

    const-string/jumbo v6, "yes"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    :cond_13
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v8}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v3, "BluetoothAllowPhonebookAccess"

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "PBAP Server"

    invoke-static {v3, v4, v8}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap0(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get8(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    const-string/jumbo v5, "AlreadyAllowedAccess"

    const-string/jumbo v6, "no"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    :cond_15
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v8}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    :cond_16
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    const-string/jumbo v5, "AlreadyAllowedAccess"

    const-string/jumbo v6, "yes"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v3, "BluetoothDisallowPhonebookAccess"

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "PBAP Server"

    invoke-static {v3, v4, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap0(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get8(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    const-string/jumbo v5, "AlreadyDisallowedAccess"

    const-string/jumbo v6, "no"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    :cond_18
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v8}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    :cond_19
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    const-string/jumbo v5, "AlreadyDisallowedAccess"

    const-string/jumbo v6, "yes"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    :cond_1a
    const-string/jumbo v3, "BluetoothAllowMessageAccess"

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "MAP"

    invoke-static {v3, v4, v8}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap0(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get8(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    const-string/jumbo v5, "AlreadyAllowedAccess"

    const-string/jumbo v6, "no"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    :cond_1b
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v8}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    :cond_1c
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    const-string/jumbo v5, "AlreadyAllowedAccess"

    const-string/jumbo v6, "yes"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    :cond_1d
    const-string/jumbo v3, "BluetoothDisallowMessageAccess"

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "MAP"

    invoke-static {v3, v4, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap0(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get8(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    const-string/jumbo v5, "AlreadyDisallowedAccess"

    const-string/jumbo v6, "no"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    :cond_1e
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v8}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    :cond_1f
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    const-string/jumbo v5, "AlreadyDisallowedAccess"

    const-string/jumbo v6, "yes"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    :cond_20
    const-string/jumbo v3, "BluetoothAllowSIMCardAccess"

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "SAP"

    invoke-static {v3, v4, v8}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap0(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get8(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    const-string/jumbo v5, "AlreadyAllowedAccess"

    const-string/jumbo v6, "no"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    :cond_21
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v8}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    :cond_22
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    const-string/jumbo v5, "AlreadyAllowedAccess"

    const-string/jumbo v6, "yes"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    :cond_23
    const-string/jumbo v3, "BluetoothDisallowSIMCardAccess"

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "SAP"

    invoke-static {v3, v4, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap0(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_25

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get8(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    const-string/jumbo v5, "AlreadyDisallowedAccess"

    const-string/jumbo v6, "no"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    :cond_24
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v8}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    :cond_25
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    const-string/jumbo v5, "AlreadyDisallowedAccess"

    const-string/jumbo v6, "yes"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0
.end method
