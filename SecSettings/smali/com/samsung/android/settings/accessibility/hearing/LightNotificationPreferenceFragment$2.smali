.class Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;
.super Ljava/lang/Object;
.source "LightNotificationPreferenceFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CameraFlashOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get1()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "CameraLight"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LightNotification"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get1()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->needFlashNotificationConfirmDialog(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-wrap1(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "DoNotShowAgainChecked"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LightNotification"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get1()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "DoNotShowAgainChecked"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "CameraFlashOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get1()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Flash"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LightNotification"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get1()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get1()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Flash"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LightNotification"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v1, "ScreenOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get2()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Screen"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LightNotification"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get2()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->needScreenNotificationConfirmDialog(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-wrap2(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "DoNotShowAgainChecked"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LightNotification"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get2()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "DoNotShowAgainChecked"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    const-string/jumbo v1, "ScreenOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get2()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Screen"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LightNotification"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get2()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get2()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Screen"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LightNotification"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v1, "FlashNotificationOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get1()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get2()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "FlashNotification"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LightNotification"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_f
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "FlashNotification"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LightNotification"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_10
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v1, "FlashNotificationOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get1()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get2()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LightNotification"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LightNotification"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_12
    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get1()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get2()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get1()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get2()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LightNotification"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LightNotification"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_13
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
