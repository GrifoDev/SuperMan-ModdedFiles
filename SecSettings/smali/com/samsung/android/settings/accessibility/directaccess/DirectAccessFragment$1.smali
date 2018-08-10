.class Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;
.super Ljava/lang/Object;
.source "DirectAccessFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "DirectAccessOn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccessState"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccess"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v3, "DirectAccessOff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccessState"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccess"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "DirectAccessOptionsOn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->updateDirectAccessMenu()V

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v3, "Accessibility"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get1(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    :cond_6
    :goto_2
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_17

    const-string/jumbo v3, "DirectAccessOptionsOn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {v1, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3, v0, v5}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-wrap1(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Option"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccessOption"

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccess"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v3, "DirectAccessOptionsOff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_1

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccessState"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccess"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccessState"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccess"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v3, "Talkback"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get8(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    goto/16 :goto_2

    :cond_c
    const-string/jumbo v3, "Voice Assistant"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get7(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    goto/16 :goto_2

    :cond_d
    const-string/jumbo v3, "Universal switch"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get9(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    goto/16 :goto_2

    :cond_e
    const-string/jumbo v3, "Magnifier window"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get4(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    goto/16 :goto_2

    :cond_f
    const-string/jumbo v3, "Negative colors"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get5(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    goto/16 :goto_2

    :cond_10
    const-string/jumbo v3, "Color adjustment"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get2(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    goto/16 :goto_2

    :cond_11
    const-string/jumbo v3, "Interaction control"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get0(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    goto/16 :goto_2

    :cond_12
    const-string/jumbo v3, "Page Reader"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get6(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    goto/16 :goto_2

    :cond_13
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Option"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccess"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v3, "DirectAccessOptionsOff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3, v0, v4}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-wrap1(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Option"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccessOption"

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccess"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_15
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_16
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Option"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccess"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_17
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Option"

    const-string/jumbo v5, "Exists"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccess"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_18
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Option"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccess"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
