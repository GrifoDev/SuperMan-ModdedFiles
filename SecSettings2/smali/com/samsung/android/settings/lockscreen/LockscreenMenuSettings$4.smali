.class Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;
.super Ljava/lang/Object;
.source "LockscreenMenuSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UnknownSourcesOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get14(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get14(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "UnknownSources"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "LockscreenAndSecurity"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get14(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "UnknownSources"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "LockscreenAndSecurity"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "UnknownSourcesOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get14(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get14(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "UnknownSources"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "LockscreenAndSecurity"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get14(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "UnknownSources"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "LockscreenAndSecurity"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v2, "OtherSecuritySettings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get15(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->hasKey()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get15(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v2, "IrisManager"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isGuestUser()Z

    move-result v2

    if-nez v2, :cond_b

    sget-object v2, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v2

    if-nez v2, :cond_b

    sget-object v2, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get4(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v2, "Fingerprints"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isGuestUser()Z

    move-result v2

    if-nez v2, :cond_e

    sget-object v2, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_f
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get3(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v2, "ScreenLockType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v2

    if-nez v2, :cond_11

    sget-object v2, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_11
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_12
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get6(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_13
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get6(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v2, "InfoAndAppShortcuts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get13(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get0()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_15
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get13(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v2, "NotificationsOnLockscreen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get0()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_17
    invoke-static {}, Lcom/android/settings/Utils;->isSupportNotificationsIconsOnly()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get8(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_18
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get7(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v2, "SecureLockSettings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get0()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_1a
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get12(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_1b
    const-string/jumbo v2, "EncryptSdcard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string/jumbo v2, "DecryptSdcard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1c
    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryption;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get11(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_1d
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
