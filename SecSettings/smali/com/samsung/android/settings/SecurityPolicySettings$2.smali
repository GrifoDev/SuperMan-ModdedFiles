.class Lcom/samsung/android/settings/SecurityPolicySettings$2;
.super Ljava/lang/Object;
.source "SecurityPolicySettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SecurityPolicySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SecurityPolicySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SecurityPolicySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 7

    const v6, 0x7f0b03ad

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "SecurityPolicyUpdatesNow"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get2(Lcom/samsung/android/settings/SecurityPolicySettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/SecPreferenceScreen;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get2(Lcom/samsung/android/settings/SecurityPolicySettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SecurityPolicyUpdates"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "SecurityAutoUpdateOn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get0(Lcom/samsung/android/settings/SecurityPolicySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get0(Lcom/samsung/android/settings/SecurityPolicySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SecurityPolicyUpdates"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SecurityPolicyUpdates"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get0(Lcom/samsung/android/settings/SecurityPolicySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SecurityPolicyUpdates"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SecurityPolicyUpdates"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v2, "SecurityAutoUpdateOff"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get0(Lcom/samsung/android/settings/SecurityPolicySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get0(Lcom/samsung/android/settings/SecurityPolicySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SecurityPolicyUpdates"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SecurityPolicyUpdates"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get0(Lcom/samsung/android/settings/SecurityPolicySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SecurityPolicyUpdates"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SecurityPolicyUpdates"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v2, "SecurityPolicyDownloadViaWifi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get3(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get3(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SecDropDownPreference;->isEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_d

    :cond_c
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_d
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-wrap0(Lcom/samsung/android/settings/SecurityPolicySettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "use_wifi_only_db"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_e

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SecurityPolicyDownload"

    const-string/jumbo v4, "AlreadyViaWifi"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SecurityPolicyUpdates"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_e
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2, v5}, Lcom/samsung/android/settings/SecurityPolicySettings;->-wrap2(Lcom/samsung/android/settings/SecurityPolicySettings;I)V

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-wrap0(Lcom/samsung/android/settings/SecurityPolicySettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "use_wifi_only_db"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/SecurityPolicySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SecurityPolicyDownload"

    const-string/jumbo v4, "AlreadyViaWifi"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SecurityPolicyUpdates"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_f
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v2, "SecurityPolicyDownloadViaMobile"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get3(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get3(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SecDropDownPreference;->isEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_12

    :cond_11
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_12
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-wrap0(Lcom/samsung/android/settings/SecurityPolicySettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "use_wifi_only_db"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_13

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SecurityPolicyDownload"

    const-string/jumbo v4, "AlreadyViaWifiorMobileNetworks"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SecurityPolicyUpdates"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_13
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2, v4}, Lcom/samsung/android/settings/SecurityPolicySettings;->-wrap2(Lcom/samsung/android/settings/SecurityPolicySettings;I)V

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-wrap0(Lcom/samsung/android/settings/SecurityPolicySettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "use_wifi_only_db"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/SecurityPolicySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SecurityPolicyDownload"

    const-string/jumbo v4, "AlreadyViaWifiorMobileNetworks"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SecurityPolicyUpdates"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_14
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
