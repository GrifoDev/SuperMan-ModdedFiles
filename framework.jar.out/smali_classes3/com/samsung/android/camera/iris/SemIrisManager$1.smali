.class Lcom/samsung/android/camera/iris/SemIrisManager$1;
.super Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;
.source "SemIrisManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/iris/SemIrisManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/camera/iris/SemIrisManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/iris/SemIrisManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcquired(JI)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get3(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x65

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAuthenticationFailed(J)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get3(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAuthenticationSucceeded(JLcom/samsung/android/camera/iris/Iris;[B)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get3(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get3(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onEnrollResult(JIII)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get3(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/camera/iris/Iris;

    const/4 v1, 0x0

    move v2, p4

    move v3, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/camera/iris/Iris;-><init>(Ljava/lang/CharSequence;IIJ)V

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v6, v1, p5, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onError(JI)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get3(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x68

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onIRImage(J[BII)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get3(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1, p4, p5, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onRemoved(JII)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get3(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x69

    invoke-virtual {v0, v2, p3, p4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
