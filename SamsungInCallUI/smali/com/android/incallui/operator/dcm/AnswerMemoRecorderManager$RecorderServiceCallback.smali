.class Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;
.super Lcom/android/phone/IAnswerMemoRecorderServiceCallback$Stub;


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

    iput-object p1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-direct {p0}, Lcom/android/phone/IAnswerMemoRecorderServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;-><init>(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)V

    return-void
.end method


# virtual methods
.method public messageCallback(I)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-static {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$300(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/phone/IAnswerMemoRecorderService;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "AnswerMemoRecorderManager"

    const-string v1, "IAnswerMemoRecorderServiceCallback : INFO_STATE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-static {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$300(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/phone/IAnswerMemoRecorderService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/phone/IAnswerMemoRecorderService;->isVoiceRecording()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$402(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Z)Z

    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-static {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$300(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/phone/IAnswerMemoRecorderService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/phone/IAnswerMemoRecorderService;->isPaused()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$502(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Z)Z

    :goto_1
    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-static {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$600(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "AnswerMemoRecorderManager"

    const-string v1, "IAnswerMemoRecorderServiceCallback : mInCallActivity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$602(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Lcom/android/incallui/InCallActivity;)Lcom/android/incallui/InCallActivity;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-static {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$600(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-static {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$600(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/incallui/InCallActivity;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback$1;-><init>(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    const-string v0, "AnswerMemoRecorderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAnswerMemoRecorderServiceCallback : isVoiceRecording="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-static {v2}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$400(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsPaused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-static {v2}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$500(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AnswerMemoRecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVoiceRecording() -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$402(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Z)Z

    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$502(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
