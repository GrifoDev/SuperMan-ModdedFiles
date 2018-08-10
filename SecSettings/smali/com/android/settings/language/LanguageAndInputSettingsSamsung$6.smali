.class Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;
.super Ljava/lang/Object;
.source "LanguageAndInputSettingsSamsung.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/language/LanguageAndInputSettingsSamsung;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;


# direct methods
.method constructor <init>(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 15

    const/4 v14, -0x7

    const/4 v13, 0x7

    const/16 v12, 0x64

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "Language"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get6(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v9, "DefaultKeyboard"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    const-string/jumbo v10, "input_method"

    invoke-static {v9, v10}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-wrap4(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v11}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker(Z)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DefaultKeyboard"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v9, "ChangeLanguage"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-virtual {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    const-string/jumbo v10, "current_input_method"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v9, "VirtualKeyboard"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-virtual {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    const-string/jumbo v10, "virtual_keyboard_settings"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VirtualKeyboard"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v9, "PhysicalKeyboard"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-virtual {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    const-string/jumbo v10, "physical_keyboard_settings"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PhysicalKeyboard"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_8
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v9, "TextToSpeech"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-virtual {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    const-string/jumbo v10, "tts_settings"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "TextToSpeech"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_b
    const/4 v5, 0x0

    const/4 v3, 0x0

    const-string/jumbo v9, "PointerSpeed"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v9

    if-lez v9, :cond_d

    :try_start_0
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v3

    if-ltz v3, :cond_c

    if-gt v3, v12, :cond_c

    div-int/lit8 v9, v3, 0x7

    add-int/lit8 v5, v9, -0x7

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get4(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/hardware/input/InputManager;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get4(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/hardware/input/InputManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-virtual {v10}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Landroid/hardware/input/InputManager;->setPointerSpeed(Landroid/content/Context;I)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get7(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/android/settings/PointerSpeedPreferenceSamsung;

    move-result-object v9

    add-int/lit8 v10, v5, 0x7

    invoke-virtual {v9, v10}, Lcom/android/settings/PointerSpeedPreferenceSamsung;->setProgress(I)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PointerSpeed"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "Yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PointerSpeed"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "LanguageAndInput"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get0()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "failed to get param for bixby. "

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PointerSpeed"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "LanguageAndInput"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    :try_start_1
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PointerSpeed"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "LanguageAndInput"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_d
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PointerSpeed"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "LanguageAndInput"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v9, "PointerSpeedUpByPercentage"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v9

    if-lez v9, :cond_12

    :try_start_2
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get4(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/hardware/input/InputManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-virtual {v10}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v6

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v3

    if-ltz v3, :cond_11

    if-gt v3, v12, :cond_11

    div-int/lit8 v5, v3, 0x7

    add-int/2addr v6, v5

    if-le v6, v13, :cond_f

    const/4 v6, 0x7

    :cond_f
    add-int/lit8 v9, v6, 0x7

    mul-int/lit8 v9, v9, 0x7

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    if-ne v6, v13, :cond_10

    const/16 v9, 0x64

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    :cond_10
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get4(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/hardware/input/InputManager;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get4(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/hardware/input/InputManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-virtual {v10}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Landroid/hardware/input/InputManager;->setPointerSpeed(Landroid/content/Context;I)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get7(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/android/settings/PointerSpeedPreferenceSamsung;

    move-result-object v9

    add-int/lit8 v10, v6, 0x7

    invoke-virtual {v9, v10}, Lcom/android/settings/PointerSpeedPreferenceSamsung;->setProgress(I)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PointerSpeed"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "Yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "TextToSpeechSet"

    invoke-virtual {v9, v10, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "TextToSpeech"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-static {}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get0()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "failed to get param for bixby. "

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PointerSpeed"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "TextToSpeech"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_11
    :try_start_3
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PointerSpeed"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "TextToSpeech"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :cond_12
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PointerSpeed"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "TextToSpeech"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v9, "PointerSpeedDownByPercentage"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v9

    if-lez v9, :cond_16

    :try_start_4
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get4(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/hardware/input/InputManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-virtual {v10}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v6

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v3

    if-ltz v3, :cond_15

    if-gt v3, v12, :cond_15

    div-int/lit8 v5, v3, 0x7

    sub-int/2addr v6, v5

    if-ge v6, v14, :cond_14

    const/4 v6, -0x7

    :cond_14
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get4(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/hardware/input/InputManager;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get4(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/hardware/input/InputManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-virtual {v10}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Landroid/hardware/input/InputManager;->setPointerSpeed(Landroid/content/Context;I)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get7(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/android/settings/PointerSpeedPreferenceSamsung;

    move-result-object v9

    add-int/lit8 v10, v6, 0x7

    invoke-virtual {v9, v10}, Lcom/android/settings/PointerSpeedPreferenceSamsung;->setProgress(I)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PointerSpeed"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "Yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "TextToSpeechSet"

    add-int/lit8 v11, v6, 0x7

    mul-int/lit8 v11, v11, 0x7

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "TextToSpeech"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    invoke-static {}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get0()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "failed to get param for bixby. "

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PointerSpeed"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "TextToSpeech"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_15
    :try_start_5
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PointerSpeed"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "TextToSpeech"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :cond_16
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PointerSpeed"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "TextToSpeech"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v9, "PointerSpeedUp"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_18

    const-string/jumbo v9, "PointerSpeedMax"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    :cond_18
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get4(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/hardware/input/InputManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-virtual {v10}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v13, :cond_19

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PointerSpeed"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "Yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "LanguageAndInput"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v9, "PointerSpeedUp"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    add-int/lit8 v5, v5, 0x1

    :goto_1
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get4(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/hardware/input/InputManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-virtual {v10}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Landroid/hardware/input/InputManager;->setPointerSpeed(Landroid/content/Context;I)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get7(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/android/settings/PointerSpeedPreferenceSamsung;

    move-result-object v9

    add-int/lit8 v10, v5, 0x7

    invoke-virtual {v9, v10}, Lcom/android/settings/PointerSpeedPreferenceSamsung;->setProgress(I)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PointerSpeed"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "LanguageAndInput"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1a
    const/4 v5, 0x7

    goto :goto_1

    :cond_1b
    const-string/jumbo v9, "PointerSpeedDown"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1c

    const-string/jumbo v9, "PointerSpeedMin"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_1c
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get4(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/hardware/input/InputManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-virtual {v10}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v5

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get7(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/android/settings/PointerSpeedPreferenceSamsung;

    move-result-object v9

    add-int/lit8 v10, v5, 0x7

    invoke-virtual {v9, v10}, Lcom/android/settings/PointerSpeedPreferenceSamsung;->setProgress(I)V

    if-ne v5, v14, :cond_1d

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PointerSpeed"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "Yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "LanguageAndInput"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1d
    const-string/jumbo v9, "PointerSpeedDown"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    add-int/lit8 v5, v5, -0x1

    :goto_2
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get4(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/hardware/input/InputManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-virtual {v10}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Landroid/hardware/input/InputManager;->setPointerSpeed(Landroid/content/Context;I)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get7(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/android/settings/PointerSpeedPreferenceSamsung;

    move-result-object v9

    add-int/lit8 v10, v5, 0x7

    invoke-virtual {v9, v10}, Lcom/android/settings/PointerSpeedPreferenceSamsung;->setProgress(I)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PointerSpeed"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "LanguageAndInput"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1e
    const/4 v5, -0x7

    goto :goto_2
.end method
