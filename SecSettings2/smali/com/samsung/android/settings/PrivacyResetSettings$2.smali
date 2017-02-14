.class Lcom/samsung/android/settings/PrivacyResetSettings$2;
.super Ljava/lang/Object;
.source "PrivacyResetSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/PrivacyResetSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/PrivacyResetSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/PrivacyResetSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 8

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ResetSettings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get3(Lcom/samsung/android/settings/PrivacyResetSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get3(Lcom/samsung/android/settings/PrivacyResetSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "ResetNetworkSettings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    const-string/jumbo v5, "network_reset"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get3(Lcom/samsung/android/settings/PrivacyResetSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v4, "FactoryDataReset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v4, "AutoRestartOn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string/jumbo v4, "AutoRestartOff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    :cond_a
    invoke-static {}, Lcom/samsung/android/settings/PrivacyResetSettings;->-wrap0()Z

    move-result v4

    if-nez v4, :cond_10

    const-string/jumbo v4, "AutoRestartOn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get4(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/SecSettingsSwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get4(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/SecSettingsSwitchPreference;->performClick()V

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "Autorestart"

    const-string/jumbo v6, "AlreadyON"

    const-string/jumbo v7, "No"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_b
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "Autorestart"

    const-string/jumbo v6, "AlreadyON"

    const-string/jumbo v7, "Yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_d
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get4(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/SecSettingsSwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get4(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/SecSettingsSwitchPreference;->performClick()V

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "Autorestart"

    const-string/jumbo v6, "AlreadyOFF"

    const-string/jumbo v7, "No"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_e
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_f
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "Autorestart"

    const-string/jumbo v6, "AlreadyOFF"

    const-string/jumbo v7, "Yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_10
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v4, "AutoRestart"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/PrivacyResetSettings;->-wrap0()Z

    move-result v4

    if-nez v4, :cond_12

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.sm.ACTION_AUTO_RESET_SETTING"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/PrivacyResetSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_12
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
