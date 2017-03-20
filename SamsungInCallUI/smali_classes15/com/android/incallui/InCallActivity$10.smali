.class Lcom/android/incallui/InCallActivity$10;
.super Landroid/os/Handler;
.source "InCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 531
    iput-object p1, p0, Lcom/android/incallui/InCallActivity$10;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 534
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 536
    :sswitch_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$10;->this$0:Lcom/android/incallui/InCallActivity;

    # getter for: Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z
    invoke-static {v0}, Lcom/android/incallui/InCallActivity;->access$500(Lcom/android/incallui/InCallActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$10;->this$0:Lcom/android/incallui/InCallActivity;

    # invokes: Lcom/android/incallui/InCallActivity;->handleShowGreenBarMessage()V
    invoke-static {v0}, Lcom/android/incallui/InCallActivity;->access$1000(Lcom/android/incallui/InCallActivity;)V

    goto :goto_0

    .line 539
    :sswitch_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$10;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->dismissPostCharPauseDialog()V

    goto :goto_0

    .line 542
    :sswitch_2
    const-string v0, "TURN_ON_SCREEN_FOR_NEW_INCOMING"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 543
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$10;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SystemServiceUtils;->forceWakeUpScreen(Landroid/content/Context;)V

    goto :goto_0

    .line 548
    :sswitch_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->updatePhotoringState()V

    goto :goto_0

    .line 551
    :sswitch_4
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "feature_hktw"

    .line 552
    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    const-string v0, "Update notification once again to display correct icon in multisim models"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 554
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->updateNotification()V

    goto :goto_0

    .line 558
    :sswitch_5
    const-string v0, "RECORD_INFO_STATE_CHANGED"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 560
    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    goto :goto_0

    .line 564
    :sswitch_6
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isGuidancePlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->playGuidance()V

    goto :goto_0

    .line 569
    :sswitch_7
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$10;->this$0:Lcom/android/incallui/InCallActivity;

    # getter for: Lcom/android/incallui/InCallActivity;->mNeedToInitialize:Z
    invoke-static {v0}, Lcom/android/incallui/InCallActivity;->access$1100(Lcom/android/incallui/InCallActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    const-string v0, "perf - INITIALIZE_INCALL"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 571
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$10;->this$0:Lcom/android/incallui/InCallActivity;

    # invokes: Lcom/android/incallui/InCallActivity;->initializeInCall()V
    invoke-static {v0}, Lcom/android/incallui/InCallActivity;->access$1200(Lcom/android/incallui/InCallActivity;)V

    goto/16 :goto_0

    .line 575
    :sswitch_8
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$10;->this$0:Lcom/android/incallui/InCallActivity;

    # invokes: Lcom/android/incallui/InCallActivity;->startLockScreenDuringCallService()V
    invoke-static {v0}, Lcom/android/incallui/InCallActivity;->access$1300(Lcom/android/incallui/InCallActivity;)V

    goto/16 :goto_0

    .line 534
    nop

    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_0
        0xa1 -> :sswitch_2
        0xa2 -> :sswitch_1
        0xa3 -> :sswitch_3
        0xa4 -> :sswitch_4
        0xa5 -> :sswitch_6
        0xa6 -> :sswitch_7
        0xa7 -> :sswitch_8
        0xc9 -> :sswitch_5
    .end sparse-switch
.end method
