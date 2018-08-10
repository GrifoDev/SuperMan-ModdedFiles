.class Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;
.super Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceReceiver"
.end annotation


# instance fields
.field mIsDone:Z

.field private mIsReady:Z

.field private mTargetToken:Landroid/os/IBinder;

.field final synthetic this$1:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;->mTargetToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public constructor <init>(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;->mTargetToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public onAcquired(JII)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FPMS_COMPAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAcquired : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;->mIsDone:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;->mTargetToken:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;

    invoke-static {v1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->-get0(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;)Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const-string/jumbo v0, "FPMS_COMPAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAcquired : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Skips event dispatch because the tokens do not match."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v0, 0x6

    if-ne p3, v0, :cond_4

    const/16 v0, 0x2711

    if-ne p4, v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;->mIsReady:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "FPMS_COMPAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAcquired : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Skips event dispatch,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iput-boolean v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;->mIsReady:Z

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;

    invoke-static {v0}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->-get1(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;)Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$H;

    move-result-object v0

    invoke-virtual {v0, v3, p3, p4}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAuthenticationFailed(J)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;->mIsDone:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;->mTargetToken:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;

    invoke-static {v1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->-get0(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;)Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    const-string/jumbo v0, "FPMS_COMPAT"

    const-string/jumbo v1, "onAuthenticationFailed : Skips event dispatch because the tokens do not match."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;

    invoke-static {v0}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->-get1(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;)Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$H;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FPMS_COMPAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthenticationSucceeded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;->mIsDone:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;->mTargetToken:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;

    invoke-static {v1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->-get0(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;)Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const-string/jumbo v0, "FPMS_COMPAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthenticationSucceeded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Skips event dispatch because the tokens do not match."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;

    invoke-static {v0}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->-get1(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;)Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$H;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2, p3}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onEnrollResult(JIII)V
    .locals 0

    return-void
.end method

.method public onEnumerated(JIII)V
    .locals 0

    return-void
.end method

.method public onError(JII)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FPMS_COMPAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;->mIsDone:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;->mTargetToken:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;

    invoke-static {v1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->-get0(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;)Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const-string/jumbo v0, "FPMS_COMPAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Skips event dispatch because the tokens do not match."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$ServiceReceiver;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;

    invoke-static {v0}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->-get1(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;)Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$H;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p3, p4}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onRemoved(JIII)V
    .locals 0

    return-void
.end method
