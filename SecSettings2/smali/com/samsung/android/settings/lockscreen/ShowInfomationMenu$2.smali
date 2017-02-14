.class Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;
.super Ljava/lang/Object;
.source "ShowInfomationMenu.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 8

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "DualClock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get1(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/SettingsSwitchPreference;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get1(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-virtual {v5}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/SettingsSwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "OwnerInformationPopup"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get6(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settingslib/RestrictedPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settingslib/RestrictedPreference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get5(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get0()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get3(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-virtual {v4}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->hasCoverSettingOwnerInfo(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get6(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settingslib/RestrictedPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-virtual {v5}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settingslib/RestrictedPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "TextInput"

    const-string/jumbo v6, "exist"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "OwnerInformationPopUp"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-virtual {v4}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->isResumed()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_8
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get5(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "TextInput"

    const-string/jumbo v6, "AlreadySet"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "OwnerInformationPopUp"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_1

    :cond_9
    const v4, 0x7f0b100f

    invoke-static {v4, v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->newInstance(ILjava/lang/String;)Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-virtual {v4}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string/jumbo v5, "dialog"

    invoke-virtual {v2, v4, v5}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "TextInput"

    const-string/jumbo v6, "AlreadySet"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "OwnerInformationPopUp"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v4, "AppShortcuts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get4(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get3(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-virtual {v4}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->hasCoverSettingAppShortcut(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    invoke-static {}, Lcom/android/settings/Utils;->isSupportLockAppShortcut()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get4(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-virtual {v5}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_d
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
