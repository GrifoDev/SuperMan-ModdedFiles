.class Lcom/samsung/android/settings/notification/SoundModeSettings$3;
.super Ljava/lang/Object;
.source "SoundModeSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SoundModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SoundModeSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v17, "SoundMode"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v11, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f1219f4

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v17, "Mute"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f1219f0

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    :cond_0
    :goto_0
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SoundMode"

    const-string/jumbo v19, "Match"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SoundModeSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v17, "Vibrate"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f1219f2

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    :cond_3
    const-string/jumbo v17, "Sound"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/4 v11, 0x2

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v17

    move/from16 v0, v17

    if-ne v11, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SoundMode"

    const-string/jumbo v19, "AlreadySelected"

    const-string/jumbo v20, "yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SoundMode"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SoundModeSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SoundMode"

    const-string/jumbo v19, "AlreadySelected"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SoundMode"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SoundModeSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v17, "TemporaryMuteOn"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v17

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SoundMode"

    const-string/jumbo v19, "AlreadyMute"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SoundsModeSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get4(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "TemporaryMute"

    const-string/jumbo v19, "AlreadyOn"

    const-string/jumbo v20, "yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SoundsModeSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get4(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "TemporaryMute"

    const-string/jumbo v19, "AlreadyOn"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SoundsModeSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v17, "TemporaryMuteOff"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v17

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SoundMode"

    const-string/jumbo v19, "AlreadyMute"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SoundsModeSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get4(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v17

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "TemporaryMute"

    const-string/jumbo v19, "AlreadyOff"

    const-string/jumbo v20, "yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SoundsModeSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get4(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "TemporaryMute"

    const-string/jumbo v19, "AlreadyOff"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SoundsModeSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v17, "Mute"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_10
    const-string/jumbo v17, "MuteDuration"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v17

    if-eqz v17, :cond_11

    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get4(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v17

    if-nez v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get4(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v17, "SoundModeSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "recipientId="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, -0x1

    const/4 v9, -0x1

    const/4 v14, -0x1

    :try_start_0
    const-string/jumbo v17, " "

    const-string/jumbo v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v17, ","

    const-string/jumbo v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v17, "y"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    const-string/jumbo v17, "y"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    const-string/jumbo v18, "m"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string/jumbo v17, "m"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    const-string/jumbo v18, "d"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v17, "m"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    const-string/jumbo v18, "s"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const-string/jumbo v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_13

    if-nez v16, :cond_13

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v17

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-nez v17, :cond_13

    if-nez v4, :cond_13

    const-string/jumbo v17, "d"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    const-string/jumbo v18, "h"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v17, "h"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    const-string/jumbo v18, "m"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    :cond_13
    const-string/jumbo v17, "SoundModeSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "y,"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "m,"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "d,"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "h,"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "m"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v9, v0, :cond_15

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "MuteDuration"

    const-string/jumbo v19, "Exist"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "Mute"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_2

    :cond_15
    if-nez v7, :cond_16

    if-eqz v9, :cond_14

    :cond_16
    if-nez v14, :cond_14

    mul-int/lit8 v8, v7, 0x3c

    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v17

    add-int v18, v8, v9

    invoke-virtual/range {v17 .. v18}, Landroid/media/AudioManager;->setMuteInterval(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "MuteDuration"

    const-string/jumbo v19, "Exist"

    const-string/jumbo v20, "yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "MuteDuration"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v19, v0

    add-int v20, v8, v9

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-wrap1(Lcom/samsung/android/settings/notification/SoundModeSettings;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "Mute"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    new-instance v17, Landroid/os/Handler;

    invoke-direct/range {v17 .. v17}, Landroid/os/Handler;-><init>()V

    new-instance v18, Lcom/samsung/android/settings/notification/SoundModeSettings$3$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/notification/SoundModeSettings$3$1;-><init>(Lcom/samsung/android/settings/notification/SoundModeSettings$3;)V

    const-wide/16 v20, 0x64

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1
.end method
