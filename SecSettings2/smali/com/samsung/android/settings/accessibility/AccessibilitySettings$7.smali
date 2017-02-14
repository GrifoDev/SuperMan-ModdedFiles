.class Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Vision"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    const-string/jumbo v2, "vision_preferences"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "Hearing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    const-string/jumbo v2, "audio_preference_key"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "DexterityAndInteraction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    const-string/jumbo v2, "mobility_preference_key"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "DirectionLock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get1(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get1(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v1, "DirectAccess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v1, "NotificationReminder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    :cond_c
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v1, "SingleTapModeOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get5(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get5(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_10
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get5(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto :goto_1

    :cond_11
    const-string/jumbo v1, "SingleTapModeOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get5(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get5(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get5(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    :cond_12
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
