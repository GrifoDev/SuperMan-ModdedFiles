.class Lcom/samsung/android/directpeninput/SemDirectPenInput$1;
.super Lcom/samsung/android/directpeninput/ISemDirectPenInputClient$Stub;
.source "SemDirectPenInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/directpeninput/SemDirectPenInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;


# direct methods
.method constructor <init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$1;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/ISemDirectPenInputClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResultReceived(ILandroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "DirectPenInput"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mServiceCallback onResultReceived() clientID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$1;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-wrap0(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$1;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-get0(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onTextDeleted(III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "DirectPenInput"

    const-string/jumbo v2, "mServiceCallback onTextDeleted()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$1;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-wrap0(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$1;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-get0(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onTextInserted(IILjava/lang/CharSequence;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "DirectPenInput"

    const-string/jumbo v2, "mServiceCallback onTextInserted()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$1;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-wrap0(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$1;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-get0(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2, p4, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onUpdateDialog(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "DirectPenInput"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mServiceCallback onUpdateDialog() clientID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$1;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-wrap0(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$1;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-get0(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
