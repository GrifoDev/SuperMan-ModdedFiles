.class Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$2;
.super Ljava/lang/Object;
.source "BluetoothDualPlaySettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->-get1(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->-set0(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;

    invoke-static {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->-get2(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    const-string/jumbo v3, "BluetoothDualPlaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bixby::onStateReceived(), stateId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->-get0(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const-string/jumbo v3, "BluetoothDualPlaySettings"

    const-string/jumbo v4, "onStateReceived :: a2dpProfile is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;

    invoke-static {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->-get1(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DualAudioSettings"

    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;

    invoke-static {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->-get1(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isDualPlayModeEnabled()Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isAbsoluteVolumeControlEnabled()Z

    move-result v1

    const-string/jumbo v3, "DualAudioOn"

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->-get0(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;

    invoke-static {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->-get1(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DualAudio"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;

    invoke-static {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->-get1(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DualAudioSettings"

    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;

    invoke-static {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->-get1(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;

    invoke-static {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->-get1(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "MediaVolumesync"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;

    invoke-static {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->-get1(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DualAudioSettings"

    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;

    invoke-static {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->-get1(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;

    invoke-virtual {v3, v8}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->switchStateChange(Z)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;

    invoke-virtual {v3, v8}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->switchStateChange(Z)V

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "DualAudioOff"

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->-get0(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v2, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;

    invoke-static {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->-get1(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DualAudio"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "yes"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;

    invoke-static {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->-get1(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DualAudioSettings"

    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;

    invoke-static {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->-get1(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;

    invoke-virtual {v3, v7}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->switchStateChange(Z)V

    goto :goto_0
.end method
