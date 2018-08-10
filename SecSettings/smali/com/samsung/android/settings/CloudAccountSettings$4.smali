.class Lcom/samsung/android/settings/CloudAccountSettings$4;
.super Ljava/lang/Object;
.source "CloudAccountSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/CloudAccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/CloudAccountSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/CloudAccountSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Users"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    const-string/jumbo v5, "user_preference"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->performClick()V

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "BackupAndReset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    const-string/jumbo v5, "privacy_preference"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/support/v7/preference/SecPreferenceScreen;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v4, "SmartSwitch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get1(Lcom/samsung/android/settings/CloudAccountSettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get1(Lcom/samsung/android/settings/CloudAccountSettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/SecPreferenceScreen;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get1(Lcom/samsung/android/settings/CloudAccountSettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "CloudAndAccounts"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v4, "Account"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    const-string/jumbo v5, "account_preference"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/support/v7/preference/SecPreferenceScreen;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v0}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a
    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_b
    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
