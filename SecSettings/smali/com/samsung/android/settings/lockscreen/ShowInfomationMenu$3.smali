.class Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;
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

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 10

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "RoamingClock"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get1(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "RoamingClock"

    const-string/jumbo v8, "Available"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ClockAndFaceWidgets"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get1(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->performClick()V

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "RoamingClock"

    const-string/jumbo v8, "Available"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ClockAndFaceWidgets"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "FaceWidgets"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string/jumbo v7, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get3(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "LockTemplate"

    const-string/jumbo v8, "Installed"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ClockAndFaceWidgets"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v6, "ContactInformation"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get6(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Landroid/support/v7/preference/SecRestrictedPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/preference/SecRestrictedPreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get5(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get0()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get4(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-virtual {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->hasCoverSettingOwnerInfo(Landroid/content/Context;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_8

    :cond_7
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_9
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get6(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Landroid/support/v7/preference/SecRestrictedPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/preference/SecRestrictedPreference;->performClick()V

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ContactInformation"

    const-string/jumbo v8, "exist"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ClockAndFaceWidgets"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-virtual {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->isResumed()Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_b
    const/4 v0, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get5(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get5(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_d

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ContactInformation"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ContactInformation"

    invoke-virtual {v6, v7, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ClockAndFaceWidgets"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get5(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_d
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string/jumbo v7, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const v4, 0x7f1213ec

    if-eqz v5, :cond_e

    const v4, 0x7f12063b

    :cond_e
    invoke-static {v4, v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->newInstance(ILjava/lang/String;)Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-virtual {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string/jumbo v7, "dialog"

    invoke-virtual {v2, v6, v7}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ContactInformation"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ContactInformation"

    invoke-virtual {v6, v7, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ClockAndFaceWidgets"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_f
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->-get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
