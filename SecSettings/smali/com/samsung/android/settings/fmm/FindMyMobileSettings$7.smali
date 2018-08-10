.class Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;
.super Ljava/lang/Object;
.source "FindMyMobileSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/fmm/FindMyMobileSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-wrap0(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "login_state"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v2, "FMMTurnOnRemoteControls"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get6(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "RemoteControls"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get6(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "RemoteControls"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "FMMTurnOffRemoteControls"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get6(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "RemoteControls"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get6(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "RemoteControls"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "RemoteControls"

    const-string/jumbo v4, "SamsungAccount"

    const-string/jumbo v5, "Vaild"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string/jumbo v2, "FMMTurnOnGoogleLocationService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get4(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "GoogleLocationService"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get4(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "GoogleLocationService"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v2, "FMMTurnOffGoogleLocationService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get4(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "GoogleLocationService"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_c
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get4(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "GoogleLocationService"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_d
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v2, "FMMTurnOnSendLastLocation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get7(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SendLastLocaton"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_f
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get7(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SendLastLocaton"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_10
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_11
    const-string/jumbo v2, "FMMTurnOffSendLastLocation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get7(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SendLastLocaton"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_12
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get7(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v0, :cond_14

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SendLastLocaton"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_13
    :goto_3
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_14
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SendLastLocaton"

    const-string/jumbo v4, "SamsungAccount"

    const-string/jumbo v5, "Vaild"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto :goto_3

    :cond_15
    const-string/jumbo v2, "FMMTurnOnImproveLocationAccuracy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get4(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ImproveLocationAccuracy"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_16
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get4(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ImproveLocationAccuracy"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_17
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_18
    const-string/jumbo v2, "FMMTurnOffImproveLocationAccuracy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get4(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_19

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ImproveLocationAccuracy"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_19
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get4(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ImproveLocationAccuracy"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1a
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_1b
    const-string/jumbo v2, "FMMTurnOnReactivationLock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get5(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ReactivationLock"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_1c
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get5(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ReactivationLock"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1d
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_1e
    const-string/jumbo v2, "FMMTurnOffReactivationLock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get5(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ReactivationLock"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_1f
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get5(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ReactivationLock"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FindMyMobile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_20
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1
.end method
