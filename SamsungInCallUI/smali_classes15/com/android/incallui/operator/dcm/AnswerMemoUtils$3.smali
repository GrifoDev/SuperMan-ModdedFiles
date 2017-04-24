.class final Lcom/android/incallui/operator/dcm/AnswerMemoUtils$3;
.super Ljava/lang/Object;
.source "AnswerMemoUtils.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->guidanceBeepSoundPlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 12

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 p1, 0x0

    const/4 v7, 0x0

    # setter for: Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v7}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->access$002(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    # setter for: Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mIsGuidancePlaying:Z
    invoke-static {v9}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->access$102(Z)Z

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "isGuidanceMsgPlaying"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v7, 0x1

    invoke-interface {v1, v7}, Lcom/android/incallui/CallCardUi;->setAMView(Z)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v3, "callmemo_enabled="

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const-string v7, "audio"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v7, "callmemo_enabled=recording"

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/service/SecCallPopupService;->startRecord()V

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v6

    if-eqz v6, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "recorderMgr.isRecording() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->log(Ljava/lang/String;)V

    :cond_3
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v6}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->getRecordTime()J

    move-result-wide v8

    sub-long v8, v4, v8

    const-wide/16 v10, 0x3e8

    cmp-long v7, v8, v10

    if-lez v7, :cond_4

    invoke-virtual {v6}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->stopRecord()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    if-eqz v6, :cond_4

    const-string v3, "callmemo_enabled="

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const-string v7, "audio"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v7, "callmemo_enabled=recording"

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const-string v7, "set callmemo_enabled= recording"

    invoke-static {v7}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->startRecord(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method
