.class Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecorderServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;


# direct methods
.method private constructor <init>(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;-><init>(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    new-instance v1, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;

    iget-object v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;-><init>(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$1;)V

    invoke-static {v0, v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$102(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Lcom/android/phone/IAnswerMemoRecorderServiceCallback;)Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-static {p2}, Lcom/android/phone/IAnswerMemoRecorderService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/phone/IAnswerMemoRecorderService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$302(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Lcom/android/phone/IAnswerMemoRecorderService;)Lcom/android/phone/IAnswerMemoRecorderService;

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-static {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$300(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/phone/IAnswerMemoRecorderService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-static {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$300(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/phone/IAnswerMemoRecorderService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-static {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$100(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/phone/IAnswerMemoRecorderService;->registerCallback(Lcom/android/phone/IAnswerMemoRecorderServiceCallback;)V

    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-static {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$300(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/phone/IAnswerMemoRecorderService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/phone/IAnswerMemoRecorderService;->isVoiceRecording()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$402(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Z)Z

    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-static {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$300(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/phone/IAnswerMemoRecorderService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/phone/IAnswerMemoRecorderService;->isPaused()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$502(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Z)Z

    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-static {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$600(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "AnswerMemoRecorderManager"

    const-string v1, "RecorderServiceConnection : mInCallActivity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$602(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Lcom/android/incallui/InCallActivity;)Lcom/android/incallui/InCallActivity;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-static {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$400(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-static {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$600(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-static {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$600(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/incallui/InCallActivity;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection$1;-><init>(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;)V

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-static {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$400(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->updateAnswerMemoRecordTime()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AnswerMemoRecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerCallback() -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-static {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$300(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/phone/IAnswerMemoRecorderService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-static {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$300(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/phone/IAnswerMemoRecorderService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-static {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$100(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/phone/IAnswerMemoRecorderService;->unregisterCallback(Lcom/android/phone/IAnswerMemoRecorderServiceCallback;)V

    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$102(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Lcom/android/phone/IAnswerMemoRecorderServiceCallback;)Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$302(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Lcom/android/phone/IAnswerMemoRecorderService;)Lcom/android/phone/IAnswerMemoRecorderService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnswerMemoRecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterCallback() -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
