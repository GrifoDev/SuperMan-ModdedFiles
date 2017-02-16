.class Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;
.super Lcom/android/phone/IAnswerMemoRecorderServiceCallback$Stub;
.source "AnswerMemoRecorderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecorderServiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;


# direct methods
.method private constructor <init>(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-direct {p0}, Lcom/android/phone/IAnswerMemoRecorderServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
    .param p2, "x1"    # Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$1;

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;-><init>(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)V

    return-void
.end method


# virtual methods
.method public messageCallback(I)V
    .locals 5
    .param p1, "msg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 352
    const/16 v0, 0x64

    .line 353
    .local v0, "INFO_STATE_CHANGED":I
    packed-switch p1, :pswitch_data_0

    .line 389
    :goto_0
    return-void

    .line 356
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    # getter for: Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;
    invoke-static {v2}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$300(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/phone/IAnswerMemoRecorderService;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 357
    const-string v2, "AnswerMemoRecorderManager"

    const-string v3, "IAnswerMemoRecorderServiceCallback : INFO_STATE_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    iget-object v3, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    # getter for: Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;
    invoke-static {v3}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$300(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/phone/IAnswerMemoRecorderService;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/phone/IAnswerMemoRecorderService;->isVoiceRecording()Z

    move-result v3

    # setter for: Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z
    invoke-static {v2, v3}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$402(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Z)Z

    .line 360
    iget-object v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    iget-object v3, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    # getter for: Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;
    invoke-static {v3}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$300(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/phone/IAnswerMemoRecorderService;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/phone/IAnswerMemoRecorderService;->isPaused()Z

    move-result v3

    # setter for: Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsPaused:Z
    invoke-static {v2, v3}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$502(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Z)Z

    .line 365
    :goto_1
    iget-object v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    # getter for: Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v2}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$600(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/incallui/InCallActivity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 366
    const-string v2, "AnswerMemoRecorderManager"

    const-string v3, "IAnswerMemoRecorderServiceCallback : mInCallActivity is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 368
    iget-object v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v3

    # setter for: Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v2, v3}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$602(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Lcom/android/incallui/InCallActivity;)Lcom/android/incallui/InCallActivity;

    .line 371
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    # getter for: Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v2}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$600(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/incallui/InCallActivity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 372
    iget-object v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    # getter for: Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v2}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$600(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/incallui/InCallActivity;

    move-result-object v2

    new-instance v3, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback$1;

    invoke-direct {v3, p0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback$1;-><init>(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;)V

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 379
    :cond_1
    const-string v2, "AnswerMemoRecorderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IAnswerMemoRecorderServiceCallback : isVoiceRecording="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    .line 381
    # getter for: Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z
    invoke-static {v4}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$400(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsPaused="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    # getter for: Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsPaused:Z
    invoke-static {v4}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$500(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 379
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 382
    :catch_0
    move-exception v1

    .line 383
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AnswerMemoRecorderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVoiceRecording() -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 362
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    const/4 v3, 0x0

    # setter for: Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z
    invoke-static {v2, v3}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$402(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Z)Z

    .line 363
    iget-object v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    const/4 v3, 0x0

    # setter for: Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsPaused:Z
    invoke-static {v2, v3}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$502(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 353
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
