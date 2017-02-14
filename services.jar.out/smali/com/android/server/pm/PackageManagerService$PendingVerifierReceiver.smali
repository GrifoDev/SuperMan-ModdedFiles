.class Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingVerifierReceiver"
.end annotation


# instance fields
.field private mState:Lcom/android/server/pm/PackageVerificationState;

.field private mSufficientVerifierTimeout:Z

.field private mUid:I

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageVerificationState;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mUid:I

    iput-boolean p4, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mSufficientVerifierTimeout:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "VERIFY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive for RequiredVerifier id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageVerificationState;->getVerificationId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    monitor-enter v3

    :try_start_0
    new-instance v1, Lcom/android/server/pm/PackageVerificationResponse;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-wrap16(Lcom/android/server/pm/PackageManagerService;)I

    move-result v2

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mUid:I

    invoke-direct {v1, v2, v4}, Lcom/android/server/pm/PackageVerificationResponse;-><init>(II)V

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mUid:I

    invoke-virtual {v2, v4}, Lcom/android/server/pm/PackageVerificationState;->isCurrentVerifier(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageVerificationState;->timeoutExtended()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mSufficientVerifierTimeout:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageVerificationState;->isSufficientVerificationComplete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    :goto_1
    monitor-exit v3

    return-void

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    const/16 v4, 0x10

    invoke-virtual {v2, v4, v1}, Lcom/android/server/pm/PackageVerificationState;->addHandlerMessage(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageVerificationState;->getVerificationId()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v4, "VERIFY"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendMessageDelayed(CHECK_PENDING_VERIFICATION, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageVerificationState;->getVerificationId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->-wrap25(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-wrap25(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    const/16 v4, 0x14

    invoke-virtual {v2, v4, v1}, Lcom/android/server/pm/PackageVerificationState;->addHandlerMessage(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v4, 0x14

    invoke-virtual {v2, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageVerificationState;->getVerificationId()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v4, "VERIFY"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendMessageDelayed(SUFFICIENT_VERIFICATION_TIMEOUT, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageVerificationState;->getVerificationId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->-wrap25(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-wrap25(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method
