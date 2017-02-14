.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v2, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPBC:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-wrap21(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get8(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get25(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->createHelpStep2Dialog()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v1, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-set18(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Z)Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void

    :cond_2
    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPBC:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-wrap22(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get25(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G:Z

    if-nez v1, :cond_6

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->saveIsShowPassword()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get20(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->updateSsid(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-wrap19(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get25(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get17(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get12(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v4, v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v4, v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-wrap1(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getTimeoutValueChangedFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "wifiap_power_mode_alarm_option"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setTimeoutValueChangedFlag(Z)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->saveLast2gChannel(I)V

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v1, :cond_8

    const-string/jumbo v1, "WifiApSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWifiConfig.hiddenSSID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-boolean v3, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->removeAllConnectedDevice()V

    :cond_8
    sput-boolean v6, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-wrap13(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get12(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v4, v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v4, v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-wrap1(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-wrap14(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/Boolean;)V

    goto/16 :goto_0
.end method
