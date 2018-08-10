.class Lcom/samsung/android/settings/OtherSecuritySettings$2;
.super Ljava/lang/Object;
.source "OtherSecuritySettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/OtherSecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/OtherSecuritySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/OtherSecuritySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "MakePasswordsVisibleOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get8(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get8(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "MakePasswordVisible"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "OtherSecuritySettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get8(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "MakePasswordVisible"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "OtherSecuritySettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "MakePasswordsVisibleOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get8(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get8(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "MakePasswordVisible"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "OtherSecuritySettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get8(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "MakePasswordVisible"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "OtherSecuritySettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v2, "SetupSimCardLock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    const-string/jumbo v3, "sim_lock_settings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get9(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_a

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/support/v7/preference/SecPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Landroid/support/v7/preference/SecPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SimCardLock"

    const-string/jumbo v4, "Available"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SetupSimCardLock"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SimCardLock"

    const-string/jumbo v4, "Available"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SetupSimCardLock"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_b
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v2, "SecurityPolicyUpdates"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get6(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/SecPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SecurityPolicyUpdates"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_d
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v2, "SendSecurityReportsOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get7(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SecurityPolicyUpdates"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "OtherSecuritySettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_f
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get7(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SecurityPolicyUpdates"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "OtherSecuritySettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_10
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v2, "SendSecurityReportsOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get7(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SecurityPolicyUpdates"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "OtherSecuritySettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_12
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get7(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SecurityPolicyUpdates"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "OtherSecuritySettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_13
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v2, "DeviceAdministators"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string/jumbo v2, "DeviceAdministrators"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_15
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    const-string/jumbo v3, "manage_device_admin"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DeviceAdministrators"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_16
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v2, "ViewSecurityCertificates"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    const-string/jumbo v3, "trusted_credentials"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ViewSecurityCertificates"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_18
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v2, "UserCertificates"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "no_config_credentials"

    invoke-static {}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get0()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1a
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    const-string/jumbo v3, "user_credentials"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "UserCertificates"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1b
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1c
    const-string/jumbo v2, "InstallFromDeviceStorage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "no_config_credentials"

    invoke-static {}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get0()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1d
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    const-string/jumbo v3, "credentials_install"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "InstallFromDeviceStorage"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1e
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1f
    const-string/jumbo v2, "ClearCredentials"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "no_config_credentials"

    invoke-static {}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get0()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_20

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get4(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/support/v7/preference/SecRestrictedPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/SecRestrictedPreference;->isEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_21

    :cond_20
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Certificate"

    const-string/jumbo v4, "Present"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "OtherSecuritySettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_21
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get4(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/support/v7/preference/SecRestrictedPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/SecRestrictedPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Certificate"

    const-string/jumbo v4, "Present"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ClearCredentials"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_22
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_23
    const-string/jumbo v2, "TrustAgent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get2(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get0()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-nez v2, :cond_24

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ScreenLock"

    const-string/jumbo v4, "AlreadySet"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "OtherSecuritySettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_24
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    const-string/jumbo v3, "manage_trust_agents"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ScreenLock"

    const-string/jumbo v4, "AlreadySet"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "TrustAgents"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_25
    const-string/jumbo v2, "PinWindows"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get5(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_26

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_26
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get5(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_27
    const-string/jumbo v2, "UsageDataAccess"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_28
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    const-string/jumbo v3, "usage_access"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "UsageDataAccess"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_29
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_2a
    const-string/jumbo v2, "NotificationAccess"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get3(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/SecPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "NotificationAccess"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2b
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_2c
    const-string/jumbo v2, "DoNotDisturbAccess"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get10(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/SecPreference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2d

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_2d
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get10(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/SecPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DoNotDisturbAccess"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2e
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings$2;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
