.class Landroid/hardware/fingerprint/FingerprintManager$1;
.super Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcquired(JII)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get5(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v0, v2, p3, p4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAuthenticationFailed(J)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get5(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;I)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get5(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onEnrollResult(JIII)V
    .locals 7

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get5(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    const/4 v1, 0x0

    move v2, p4

    move v3, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v6, v1, p5, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onEnumerated(JIII)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get5(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x6a

    invoke-virtual {v0, v2, p3, p4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onError(JII)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get5(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x68

    invoke-virtual {v0, v2, p3, p4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onRemoved(JIII)V
    .locals 7

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get5(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    const/4 v1, 0x0

    move v2, p4

    move v3, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    const/16 v1, 0x69

    const/4 v2, 0x0

    invoke-virtual {v6, v1, p5, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
