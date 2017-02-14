.class Lcom/samsung/android/settings/display/SecDisplaySettings$20;
.super Landroid/os/Handler;
.source "SecDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v6, 0x1

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get18(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getInitFinish()Z

    move-result v4

    if-eqz v4, :cond_17

    const-string/jumbo v4, "DisplayBrightnessLevel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Level"

    const-string/jumbo v6, "Exist"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Display"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get2(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get18(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    div-int/lit8 v4, v0, 0x64

    if-ne v4, v2, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Level"

    const-string/jumbo v6, "AlreadySet"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Level"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Display"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Level"

    const-string/jumbo v6, "Exist"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Display"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get18(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4, v2, v6}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBixbyBrightness(IZ)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Level"

    const-string/jumbo v6, "AlreadySet"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Level"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Display"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v4, "DisplayBrightnessUp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get18(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get18(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    if-ne v0, v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Brightness"

    const-string/jumbo v6, "AlreadyMax"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Display"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_6
    add-int/lit16 v0, v0, 0x3e8

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get18(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v4

    div-int/lit8 v5, v0, 0x64

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBixbyBrightness(IZ)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Brightness"

    const-string/jumbo v6, "AlreadyMax"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Display"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v4, "DisplayBrightnessDown"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get18(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-gtz v0, :cond_9

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Brightness"

    const-string/jumbo v6, "AlreadyMin"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Display"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_9
    add-int/lit16 v0, v0, -0x3e8

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get18(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v4

    div-int/lit8 v5, v0, 0x64

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBixbyBrightness(IZ)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Brightness"

    const-string/jumbo v6, "AlreadyMin"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Display"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v4, "DisplayBrightnessMax"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get18(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get18(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    if-ne v0, v4, :cond_c

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Brightness"

    const-string/jumbo v6, "AlreadyMax"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Display"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_c
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get18(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBixbyBrightness(IZ)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Brightness"

    const-string/jumbo v6, "AlreadyMax"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Display"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_d
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v4, "DisplayBrightnessMin"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get18(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-gtz v0, :cond_f

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Brightness"

    const-string/jumbo v6, "AlreadyMin"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Display"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_f
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get18(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4, v8, v6}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBixbyBrightness(IZ)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Brightness"

    const-string/jumbo v6, "AlreadyMin"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Display"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_10
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_11
    const-string/jumbo v4, "DisplayBrightnessAutoOn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get18(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setAutoBrightness(Z)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "State"

    const-string/jumbo v6, "AlreadyON"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Display"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_12
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_13
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "State"

    const-string/jumbo v6, "AlreadyON"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Display"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_14
    const-string/jumbo v4, "DisplayBrightnessAutoOff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get18(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setAutoBrightness(Z)Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "State"

    const-string/jumbo v6, "AlreadyOFF"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Display"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_15
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_16
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "State"

    const-string/jumbo v6, "AlreadyOFF"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Display"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_17
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get2(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x64

    invoke-virtual {v4, p1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
