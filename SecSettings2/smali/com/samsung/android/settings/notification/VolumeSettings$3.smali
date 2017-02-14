.class Lcom/samsung/android/settings/notification/VolumeSettings$3;
.super Landroid/os/Handler;
.source "VolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/VolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/VolumeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/VolumeSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-virtual {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    if-nez v13, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getInitFinish()Z

    move-result v13

    if-eqz v13, :cond_15

    const-string/jumbo v13, "VolumeRingtoneLevel"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v13

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    const-string/jumbo v15, "Exists"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getMax()I

    move-result v13

    mul-int/2addr v13, v11

    div-int/lit8 v7, v13, 0x64

    if-ltz v11, :cond_3

    const/16 v13, 0x64

    if-le v11, v13, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    const-string/jumbo v15, "Valid"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_1

    :catch_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    const-string/jumbo v15, "Valid"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    if-ne v7, v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    const-string/jumbo v15, "AlreadySet"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v13, v7, v14, v15}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    const-string/jumbo v15, "AlreadySet"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v13, "VolumeRingtoneUp"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/SeekBar;->getMax()I

    move-result v14

    if-ne v13, v14, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "RingtoneVolume"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_8
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v13, 0x0

    const/16 v14, 0x16

    invoke-direct {v3, v13, v14}, Landroid/view/KeyEvent;-><init>(II)V

    new-instance v4, Landroid/view/KeyEvent;

    const/4 v13, 0x1

    const/16 v14, 0x16

    invoke-direct {v4, v13, v14}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    const/16 v14, 0x3e8

    if-le v13, v14, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "RingtoneVolume"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v13, "VolumeRingtoneDown"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    if-nez v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "RingtoneVolume"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_c
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v13, 0x0

    const/16 v14, 0x15

    invoke-direct {v3, v13, v14}, Landroid/view/KeyEvent;-><init>(II)V

    new-instance v4, Landroid/view/KeyEvent;

    const/4 v13, 0x1

    const/16 v14, 0x15

    invoke-direct {v4, v13, v14}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    const/16 v14, 0x1f4

    if-ge v13, v14, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v13

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "RingtoneVolume"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v13, "VolumeRingtoneMax"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/SeekBar;->getMax()I

    move-result v14

    if-ne v13, v14, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "RingtoneVolume"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getMax()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v13, v6, v14, v15}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v13

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "RingtoneVolume"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_12
    const-string/jumbo v13, "VolumeRingtoneMin"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    if-nez v13, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "RingtoneVolume"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :goto_2
    const-string/jumbo v13, "VolumeSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Ringtone volume newValue is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v15}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/SeekBar;->getProgress()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v13

    if-eqz v13, :cond_14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "RingtoneVolume"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_2

    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v13

    const-wide/16 v14, 0x64

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getInitFinish()Z

    move-result v13

    if-eqz v13, :cond_20

    const-string/jumbo v13, "VolumeMediaLevel"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getMax()I

    move-result v13

    mul-int/2addr v13, v10

    div-int/lit8 v7, v13, 0x64

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    if-ne v13, v7, :cond_17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    const-string/jumbo v15, "AlreadySet"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_16
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    :catch_1
    move-exception v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    const-string/jumbo v15, "Valid"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v13, v7, v14, v15}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    const-string/jumbo v15, "AlreadySet"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    :cond_18
    const-string/jumbo v13, "VolumeMediaUp"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/SeekBar;->getMax()I

    move-result v14

    if-ne v13, v14, :cond_19

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "MediaVolume"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    :cond_19
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v13, 0x0

    const/16 v14, 0x16

    invoke-direct {v3, v13, v14}, Landroid/view/KeyEvent;-><init>(II)V

    new-instance v4, Landroid/view/KeyEvent;

    const/4 v13, 0x1

    const/16 v14, 0x16

    invoke-direct {v4, v13, v14}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "MediaVolume"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    :cond_1a
    const-string/jumbo v13, "VolumeMediaDown"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    if-nez v13, :cond_1b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "MediaVolume"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    :cond_1b
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v13, 0x0

    const/16 v14, 0x15

    invoke-direct {v3, v13, v14}, Landroid/view/KeyEvent;-><init>(II)V

    new-instance v4, Landroid/view/KeyEvent;

    const/4 v13, 0x1

    const/16 v14, 0x15

    invoke-direct {v4, v13, v14}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "MediaVolume"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    :cond_1c
    const-string/jumbo v13, "VolumeMediaMax"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getMax()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    if-ne v13, v6, :cond_1d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "MediaVolume"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    :cond_1d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v13, v6, v14, v15}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "MediaVolume"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    :cond_1e
    const-string/jumbo v13, "VolumeMediaMin"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    if-nez v13, :cond_1f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "MediaVolume"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    :cond_1f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "MediaVolume"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    :cond_20
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v13

    const-wide/16 v14, 0x64

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getInitFinish()Z

    move-result v13

    if-eqz v13, :cond_28

    const-string/jumbo v13, "VolumeAlarmLevel"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_22

    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getMax()I

    move-result v13

    mul-int/2addr v13, v9

    div-int/lit8 v7, v13, 0x64

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v13, v7, v14, v15}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_21
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    :catch_2
    move-exception v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    const-string/jumbo v15, "Valid"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_22
    const-string/jumbo v13, "VolumeAlarmUp"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_24

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v13, 0x0

    const/16 v14, 0x16

    invoke-direct {v3, v13, v14}, Landroid/view/KeyEvent;-><init>(II)V

    new-instance v4, Landroid/view/KeyEvent;

    const/4 v13, 0x1

    const/16 v14, 0x16

    invoke-direct {v4, v13, v14}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    const/16 v14, 0x3e8

    if-le v13, v14, :cond_23

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_23
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_4

    :cond_24
    const-string/jumbo v13, "VolumeAlarmDown"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_26

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v13, 0x0

    const/16 v14, 0x15

    invoke-direct {v3, v13, v14}, Landroid/view/KeyEvent;-><init>(II)V

    new-instance v4, Landroid/view/KeyEvent;

    const/4 v13, 0x1

    const/16 v14, 0x15

    invoke-direct {v4, v13, v14}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    const/16 v14, 0x1f4

    if-ge v13, v14, :cond_25

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_25
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_4

    :cond_26
    const-string/jumbo v13, "VolumeAlarmMax"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_27

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getMax()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v13, v6, v14, v15}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_4

    :cond_27
    const-string/jumbo v13, "VolumeAlarmMin"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_21

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_4

    :cond_28
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v13

    const-wide/16 v14, 0x64

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getInitFinish()Z

    move-result v13

    if-eqz v13, :cond_35

    const-string/jumbo v13, "VolumeSystemLevel"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2b

    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getMax()I

    move-result v13

    mul-int/2addr v13, v12

    div-int/lit8 v7, v13, 0x64

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    if-ne v13, v7, :cond_2a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    const-string/jumbo v15, "AlreadySet"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_29
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    :catch_3
    move-exception v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    const-string/jumbo v15, "Valid"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_2a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v13, v7, v14, v15}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    const-string/jumbo v15, "AlreadySet"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_5

    :cond_2b
    const-string/jumbo v13, "VolumeSystemUp"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/SeekBar;->getMax()I

    move-result v14

    if-ne v13, v14, :cond_2c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "SystemVolume"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_5

    :cond_2c
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v13, 0x0

    const/16 v14, 0x16

    invoke-direct {v3, v13, v14}, Landroid/view/KeyEvent;-><init>(II)V

    new-instance v4, Landroid/view/KeyEvent;

    const/4 v13, 0x1

    const/16 v14, 0x16

    invoke-direct {v4, v13, v14}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    const/16 v14, 0x3e8

    if-le v13, v14, :cond_2d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_2d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "SystemVolume"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_5

    :cond_2e
    const-string/jumbo v13, "VolumeSystemDown"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_31

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    if-nez v13, :cond_2f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "SystemVolume"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_5

    :cond_2f
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v13, 0x0

    const/16 v14, 0x15

    invoke-direct {v3, v13, v14}, Landroid/view/KeyEvent;-><init>(II)V

    new-instance v4, Landroid/view/KeyEvent;

    const/4 v13, 0x1

    const/16 v14, 0x15

    invoke-direct {v4, v13, v14}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    const/16 v14, 0x1f4

    if-ge v13, v14, :cond_30

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_30
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "SystemVolume"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_5

    :cond_31
    const-string/jumbo v13, "VolumeSystemMax"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_33

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getMax()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    if-ne v13, v6, :cond_32

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "SystemVolume"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_5

    :cond_32
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v13, v6, v14, v15}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "SystemVolume"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_5

    :cond_33
    const-string/jumbo v13, "VolumeSystemMin"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_29

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    if-nez v13, :cond_34

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "SystemVolume"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_5

    :cond_34
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "SystemVolume"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "VolumeSetting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_5

    :cond_35
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v13

    const-wide/16 v14, 0x64

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
