.class Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;
.super Ljava/lang/Object;
.source "ToggleAutoclickPreferenceFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 8

    const/16 v7, 0x258

    const/16 v6, 0x3e8

    const/16 v5, 0xc8

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "AutoClickAfterPointerStopsOn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    iget-object v3, v3, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "ClickAfterPointerStopsMoving"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AutoClickAfterPointerStops"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    iget-object v3, v3, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "ClickAfterPointerStopsMoving"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AutoClickAfterPointerStops"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "AutoClickAfterPointerStopsOff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    iget-object v3, v3, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "ClickAfterPointerStopsMoving"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AutoClickAfterPointerStops"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    iget-object v3, v3, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "ClickAfterPointerStopsMoving"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AutoClickAfterPointerStops"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v3, "DelayBeforeClickMaxSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    iget-object v3, v3, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    iget-object v3, v3, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_7
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get0(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/android/settings/SeekBarPreference;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap0(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "accessibility_autoclick_delay"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get0(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/android/settings/SeekBarPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v4, v6}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    :cond_8
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AutoClickAfterPointerStops"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_9
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v3, "DelayBeforeClickMinSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    iget-object v3, v3, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    iget-object v3, v3, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_b
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get0(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/android/settings/SeekBarPreference;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap0(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "accessibility_autoclick_delay"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get0(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/android/settings/SeekBarPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v4, v5}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    :cond_c
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AutoClickAfterPointerStops"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_d
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v3, "DelayBeforeClickIncreaseSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    iget-object v3, v3, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    iget-object v3, v3, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_f
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get0(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/android/settings/SeekBarPreference;

    move-result-object v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap0(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "accessibility_autoclick_delay"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3, v0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3, v1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;I)I

    move-result v3

    if-le v3, v6, :cond_10

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3, v6}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;I)I

    move-result v1

    :cond_10
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap0(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "accessibility_autoclick_delay"

    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v5, v1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;I)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get0(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/android/settings/SeekBarPreference;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    :cond_11
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AutoClickAfterPointerStops"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_12
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v3, "DelayBeforeClickDecreaseSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    iget-object v3, v3, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    iget-object v3, v3, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_14
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get0(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/android/settings/SeekBarPreference;

    move-result-object v3

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap0(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "accessibility_autoclick_delay"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3, v0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3, v1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;I)I

    move-result v3

    if-ge v3, v5, :cond_15

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3, v5}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;I)I

    move-result v1

    :cond_15
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap0(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "accessibility_autoclick_delay"

    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v5, v1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;I)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get0(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/android/settings/SeekBarPreference;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    :cond_16
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AutoClickAfterPointerStops"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_17
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
