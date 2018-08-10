.class Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;
.super Ljava/lang/Object;
.source "ToggleAccessControlPreferenceFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "InteractionControlOn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "InteractionControlState"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "InteractionControl"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "InteractionControlState"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "InteractionControl"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "InteractionControlOff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "InteractionControlState"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "InteractionControl"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "InteractionControlState"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "InteractionControl"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v3, "UseScreenLockTypeToDisableOn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get2(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_c

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    if-eqz v1, :cond_a

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3, v4}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-wrap5(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get2(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "ScreenUnlockSetting"

    const-string/jumbo v5, "AlreadyAdded"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "InteractionControl"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "ScreenUnlockSetting"

    const-string/jumbo v5, "AlreadyAdded"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "InteractionControl"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_b
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "UseScreenLovkTypeToDisable"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "InteractionControl"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_d
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v3, "UseScreenLockTypeToDisableOff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get2(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3, v5}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-wrap5(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get2(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "UseScreenLovkTypeToDisable"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "InteractionControl"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_f
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_10
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "UseScreenLovkTypeToDisable"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "InteractionControl"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_11
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
