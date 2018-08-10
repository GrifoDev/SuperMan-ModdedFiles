.class Lcom/samsung/android/biometrics/SemBiometricsManager$1;
.super Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Stub;
.source "SemBiometricsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/SemBiometricsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/SemBiometricsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$1;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-direct {p0}, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcquired(JILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$1;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->-get3(Lcom/samsung/android/biometrics/SemBiometricsManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAuthenticationFailed(J)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$1;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->-get3(Lcom/samsung/android/biometrics/SemBiometricsManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAuthenticationSucceeded(JLandroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$1;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->-get3(Lcom/samsung/android/biometrics/SemBiometricsManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v2, v2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onError(JILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$1;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->-get3(Lcom/samsung/android/biometrics/SemBiometricsManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
