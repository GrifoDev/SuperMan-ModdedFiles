.class Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;
.super Ljava/lang/Object;
.source "AnswerMemoRecorderManager.java"

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

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
    .param p2, "x1"    # Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$1;

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;-><init>(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 300
    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    new-instance v2, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;

    iget-object v3, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;-><init>(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$1;)V

    # setter for: Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;
    invoke-static {v1, v2}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$102(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Lcom/android/phone/IAnswerMemoRecorderServiceCallback;)Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    .line 301
    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    .line 302
    invoke-static {p2}, Lcom/android/phone/IAnswerMemoRecorderService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/phone/IAnswerMemoRecorderService;

    move-result-object v2

    .line 301
    # setter for: Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;
    invoke-static {v1, v2}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$302(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Lcom/android/phone/IAnswerMemoRecorderService;)Lcom/android/phone/IAnswerMemoRecorderService;

    .line 304
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    # getter for: Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;
    invoke-static {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$300(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/phone/IAnswerMemoRecorderService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 305
    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    # getter for: Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;
    invoke-static {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$300(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/phone/IAnswerMemoRecorderService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    # getter for: Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;
    invoke-static {v2}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$100(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/phone/IAnswerMemoRecorderService;->registerCallback(Lcom/android/phone/IAnswerMemoRecorderServiceCallback;)V

    .line 306
    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    iget-object v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    # getter for: Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;
    invoke-static {v2}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$300(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/phone/IAnswerMemoRecorderService;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/phone/IAnswerMemoRecorderService;->isVoiceRecording()Z

    move-result v2

    # setter for: Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z
    invoke-static {v1, v2}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$402(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Z)Z

    .line 307
    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    iget-object v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    # getter for: Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;
    invoke-static {v2}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$300(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/phone/IAnswerMemoRecorderService;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/phone/IAnswerMemoRecorderService;->isPaused()Z

    move-result v2

    # setter for: Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsPaused:Z
    invoke-static {v1, v2}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$502(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Z)Z

    .line 311
    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    # getter for: Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$600(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 312
    const-string v1, "AnswerMemoRecorderManager"

    const-string v2, "RecorderServiceConnection : mInCallActivity is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v2

    # setter for: Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v1, v2}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$602(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Lcom/android/incallui/InCallActivity;)Lcom/android/incallui/InCallActivity;

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    # getter for: Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z
    invoke-static {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$400(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    # getter for: Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$600(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 318
    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    # getter for: Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$600(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/incallui/InCallActivity;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection$1;-><init>(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;)V

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 331
    :cond_1
    :goto_0
    return-void

    .line 324
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    # getter for: Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z
    invoke-static {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$400(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 325
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupService;->updateAnswerMemoRecordTime()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AnswerMemoRecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerCallback() -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 335
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    # getter for: Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;
    invoke-static {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$300(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/phone/IAnswerMemoRecorderService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    # getter for: Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;
    invoke-static {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$300(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/phone/IAnswerMemoRecorderService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    # getter for: Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;
    invoke-static {v2}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$100(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/phone/IAnswerMemoRecorderService;->unregisterCallback(Lcom/android/phone/IAnswerMemoRecorderServiceCallback;)V

    .line 337
    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    const/4 v2, 0x0

    # setter for: Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;
    invoke-static {v1, v2}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$102(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Lcom/android/phone/IAnswerMemoRecorderServiceCallback;)Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    .line 338
    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    const/4 v2, 0x0

    # setter for: Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;
    invoke-static {v1, v2}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->access$302(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Lcom/android/phone/IAnswerMemoRecorderService;)Lcom/android/phone/IAnswerMemoRecorderService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AnswerMemoRecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterCallback() -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
