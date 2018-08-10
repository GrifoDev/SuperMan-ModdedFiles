.class Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiAutoConnectXfinityPrefController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->-get1()Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v4, "ConfigureWifiSettings"

    const-string/jumbo v5, "Comcast Wi-Fi CSC is disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->getResultCode()I

    move-result v3

    const-string/jumbo v6, "ConfigureWifiSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Action : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "Resultcode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->SERVICE_NEED_PERMISSIONS:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->ordinal()I

    move-result v6

    if-ne v3, v6, :cond_2

    const-string/jumbo v4, "ConfigureWifiSettings"

    const-string/jumbo v5, "Permissions are not enabled"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    const-string/jumbo v5, "CHECK_PERMISSIONS"

    invoke-static {v4, v5}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->-wrap0(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->-get0(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->-get0(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->-get2(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v6, "com.smithmicro.mnd.action.SHUTDOWN_CM"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "com.smithmicro.mnd.action.RESUME_CM"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_3
    sget-object v4, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->OK:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_5

    const-string/jumbo v4, "ConfigureWifiSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Action "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is success. Lets wait for the Service to be restarted"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    invoke-static {v4, v5}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->-wrap1(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;Z)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    const/4 v4, -0x1

    if-eq v4, v3, :cond_6

    const-string/jumbo v4, "ConfigureWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "NWD SDK API result code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->values()[Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->-get0(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->-get0(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->-get2(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_7
    const-string/jumbo v6, "com.smithmicro.mnd.action.SERVICE_STATUS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    sget-object v6, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->OK:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->ordinal()I

    move-result v6

    if-ne v3, v6, :cond_9

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    const-string/jumbo v7, "com.smithmicro.mnd.NWD_SDK_API_CM_SUSPENDED"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    invoke-static {v6, v7}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->-set0(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;Z)Z

    const-string/jumbo v6, "ConfigureWifiSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mIsNwdCmEnabled : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    invoke-static {v8}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->-get2(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->-get0(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->-get0(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    invoke-static {v7}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->-get2(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    const-string/jumbo v6, "com.smithmicro.mnd.NWD_SDK_API_SERVICE_STATUS"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v6, "ConfigureWifiSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "serviceState == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    sget-object v7, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SERVICE_STATE;->STARTED:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SERVICE_STATE;

    invoke-virtual {v7}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SERVICE_STATE;->ordinal()I

    move-result v7

    if-ne v2, v7, :cond_8

    :goto_1
    invoke-static {v6, v4}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->-wrap1(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;Z)V

    goto/16 :goto_0

    :cond_8
    move v4, v5

    goto :goto_1

    :cond_9
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    invoke-static {v6, v5}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->-set0(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;Z)Z

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->-get0(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->-get0(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->-get2(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    invoke-static {v5, v4}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->-wrap1(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;Z)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v5, "com.smithmicro.netwise.director.comcast.oem.NWD_SDK_API_SERVICE_READY"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "ConfigureWifiSettings"

    const-string/jumbo v6, "NWD SDK API service state is Ready"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    invoke-static {v5, v4}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->-wrap1(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;Z)V

    goto/16 :goto_0
.end method
