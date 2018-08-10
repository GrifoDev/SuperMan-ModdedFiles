.class Lcom/samsung/android/settings/SoftwareUpdateSettings$6;
.super Ljava/lang/Object;
.source "SoftwareUpdateSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SoftwareUpdateSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SoftwareUpdateSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 13

    const/4 v12, 0x0

    const/16 v11, 0xc

    const/16 v10, 0xb

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "DownloadUpdatesManually"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get8(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/preference/SecPreference;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "SoftwareUpdateSettings"

    const-string/jumbo v7, "DownloadUpdatesManually menu is disabled."

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get8(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/preference/SecPreference;->performClick()V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SoftwareUpdateSet"

    const-string/jumbo v8, "Enabled"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SoftwareUpdate"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "DownloadUpdatesAutomaticallyOn"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->isNoNeedAutoDownloadMenu(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get0(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v14/preference/SecSwitchPreference;->isEnabled()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4

    :cond_3
    const-string/jumbo v6, "SoftwareUpdateSettings"

    const-string/jumbo v7, "DownloadUpdatesAutomatically menu is disabled."

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get0(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get0(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SoftwareUpdateSet"

    const-string/jumbo v8, "AutomaticAlreadyON"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SoftwareUpdate"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SoftwareUpdateSet"

    const-string/jumbo v8, "AutomaticAlreadyON"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SoftwareUpdate"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v6, "DownloadUpdatesAutomaticallyOff"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->isNoNeedAutoDownloadMenu(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get0(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v14/preference/SecSwitchPreference;->isEnabled()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_9

    :cond_8
    const-string/jumbo v6, "SoftwareUpdateSettings"

    const-string/jumbo v7, "DownloadUpdatesAutomatically menu is disabled."

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get0(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get0(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SoftwareUpdateSet"

    const-string/jumbo v8, "AutomaticAlreadyOFF"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SoftwareUpdate"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_b
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SoftwareUpdateSet"

    const-string/jumbo v8, "AutomaticAlreadyOFF"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SoftwareUpdate"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v6, "ScheduledSoftwareUpdatesOn"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-wrap1()Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get4(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v14/preference/SecSwitchPreference;->isEnabled()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_e

    :cond_d
    const-string/jumbo v6, "SoftwareUpdateSettings"

    const-string/jumbo v7, "Schedule software update menu is disabled."

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_e
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get4(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get4(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ScheduleSoftwareUpdate"

    const-string/jumbo v8, "AlreadyON"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SoftwareUpdate"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_f
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_10
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ScheduleSoftwareUpdate"

    const-string/jumbo v8, "AlreadyON"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SoftwareUpdate"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v6, "ScheduledSoftwareUpdatesOff"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-static {}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-wrap1()Z

    move-result v6

    if-nez v6, :cond_12

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get4(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v14/preference/SecSwitchPreference;->isEnabled()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_13

    :cond_12
    const-string/jumbo v6, "SoftwareUpdateSettings"

    const-string/jumbo v7, "Schedule software update menu is disabled."

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_13
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get4(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_15

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get4(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ScheduleSoftwareUpdate"

    const-string/jumbo v8, "AlreadyOFF"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SoftwareUpdate"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_14
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_15
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ScheduleSoftwareUpdate"

    const-string/jumbo v8, "AlreadyOFF"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SoftwareUpdate"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v6, "ScheduledSoftwareUpdatesTime"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-static {}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-wrap1()Z

    move-result v6

    if-nez v6, :cond_17

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get4(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v14/preference/SecSwitchPreference;->isEnabled()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_18

    :cond_17
    const-string/jumbo v6, "SoftwareUpdateSettings"

    const-string/jumbo v7, "Schedule software update menu is disabled."

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_18
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get4(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_19

    const-string/jumbo v6, "SoftwareUpdateSettings"

    const-string/jumbo v7, "Schedule update is off. Turn on automatically"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get4(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    :cond_19
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1a

    const-string/jumbo v6, "SoftwareUpdateSettings"

    const-string/jumbo v7, "scheduleTime parameter is empty or null."

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ScheduledSoftwareUpdatesTime"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "NO"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SoftwareUpdate"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1a
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "HH:mm"

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v4, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v6, "SoftwareUpdateSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "get parameter : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    if-nez v2, :cond_1b

    const-string/jumbo v6, "SoftwareUpdateSettings"

    const-string/jumbo v7, "scheduleDate is null."

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ScheduledSoftwareUpdatesTime"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SoftwareUpdate"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v6, "SoftwareUpdateSettings"

    const-string/jumbo v7, "ParseException in onStateReceived"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1b
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const-string/jumbo v6, "SoftwareUpdateSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "schedule time is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v6, v12, v7, v8}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->onTimeSet(Lcom/samsung/android/widget/SemTimePicker;II)V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_1c

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ScheduledSoftwareUpdatesTime"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Time"

    invoke-virtual {v6, v7, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SoftwareUpdate"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1c
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1d
    const-string/jumbo v6, "LastSoftwareUpdate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get3(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/preference/SecPreference;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_1e

    const-string/jumbo v6, "SoftwareUpdateSettings"

    const-string/jumbo v7, "Last software update menu is disabled."

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "LastSoftwareUpdate"

    const-string/jumbo v8, "Enabled"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SoftwareUpdate"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1e
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get3(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/preference/SecPreference;->performClick()V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_1f

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "LastSoftwareUpdate"

    const-string/jumbo v8, "Enabled"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SoftwareUpdate"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1f
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_20
    const-string/jumbo v6, "SoftwareUpdateSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown stateId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
