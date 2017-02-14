.class Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;
.super Ljava/lang/Object;
.source "AccessibilitySettingsMobility.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v17, "AssistantMenu"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/SettingsSwitchPreference;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/SettingsSwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v17, "EasyScreenTurnOn"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    const-string/jumbo v17, "EasyScreenTrunOn"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get6(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get6(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/SettingsSwitchPreference;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get6(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/SettingsSwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v17, "InteractionControl"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get5(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get5(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/SettingsSwitchPreference;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get5(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/SettingsSwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v17, "TapAndHoldDelaySet"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/preference/ListPreference;

    move-result-object v17

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v17

    if-nez v17, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DexterityAndInteractionTime"

    const-string/jumbo v19, "Exists"

    const-string/jumbo v20, "No"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "TapAndHoldDelaySet"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-wrap0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "long_press_timeout"

    const/16 v19, 0x1f4

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0c0088

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2bc

    move/from16 v0, v17

    if-eq v10, v0, :cond_c

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v10, v0, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DexterityAndInteractionTime"

    const-string/jumbo v19, "Valid"

    const-string/jumbo v20, "No"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "TapAndHoldDelaySet"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_d
    if-ltz v10, :cond_c

    aget-object v17, v16, v10

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-ne v5, v15, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DexterityAndInteractionTime"

    const-string/jumbo v19, "Already_set"

    const-string/jumbo v20, "Yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "TapAndHoldDelaySet"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/preference/ListPreference;

    move-result-object v18

    aget-object v19, v16, v10

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DexterityAndInteractionTime"

    const-string/jumbo v19, "Already_set"

    const-string/jumbo v20, "No"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "TapAndHoldDelaySet"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v17, "ClickAfterPointerStopsMovingOn"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-wrap0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "accessibility_autoclick_enabled"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get1(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v17

    if-eqz v17, :cond_2

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v12, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "ClickAfterPointerStopsMoving"

    const-string/jumbo v19, "Already_On"

    const-string/jumbo v20, "Yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "ClickAfterPointerStopsMovingOn"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get1(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "ClickAfterPointerStopsMoving"

    const-string/jumbo v19, "Already_On"

    const-string/jumbo v20, "No"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "ClickAfterPointerStopsMovingOn"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v17, "ClickAfterPointerStopsMovingOff"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-wrap0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "accessibility_autoclick_enabled"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get1(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v17

    if-eqz v17, :cond_2

    if-nez v12, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "ClickAfterPointerStopsMoving"

    const-string/jumbo v19, "Already_Off"

    const-string/jumbo v20, "Yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "ClickAfterPointerStopsMovingOff"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get1(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "ClickAfterPointerStopsMoving"

    const-string/jumbo v19, "Already_Off"

    const-string/jumbo v20, "No"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "ClickAfterPointerStopsMovingOff"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v17, "UniversalSwitch"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v8

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    if-ge v6, v4, :cond_17

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/accessibilityservice/AccessibilityServiceInfo;

    if-nez v7, :cond_19

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    if-eqz v11, :cond_1b

    invoke-virtual {v11}, Landroid/preference/Preference;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_19
    invoke-virtual {v7}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v13, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v17, "com.samsung.android.universalswitch"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    new-instance v3, Landroid/content/ComponentName;

    iget-object v0, v13, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v3, v9, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    :cond_1a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
