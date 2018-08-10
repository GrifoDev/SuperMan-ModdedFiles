.class Lcom/android/settings/fingerprint/RegisterFingerprint$3;
.super Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
.source "RegisterFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 3

    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEnrollmentError : errMsgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , errString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap14(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 3

    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEnrollmentHelp : helpMsgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , helpString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get22(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0, p1, p2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap1(Lcom/android/settings/fingerprint/RegisterFingerprint;ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onEnrollmentProgress(I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEnrollmentProgress : remaining = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get22(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get24(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set7(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get41(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f120b3b

    invoke-virtual {v1, v3, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get13(Lcom/android/settings/fingerprint/RegisterFingerprint;)Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setPercent(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get27(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f120b3a

    invoke-virtual {v1, v3, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap6(Lcom/android/settings/fingerprint/RegisterFingerprint;Ljava/lang/String;I)V

    :cond_2
    const/16 v0, 0x50

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get26(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get29(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get25(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/16 v1, 0x12d

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap13(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get8(Lcom/android/settings/fingerprint/RegisterFingerprint;)Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    move-result-object v0

    sget-object v1, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;->ENROLL:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get14(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    sget-object v1, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;->PAUSE:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set5(Lcom/android/settings/fingerprint/RegisterFingerprint;Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;)Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get14(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->requestPause()Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    const/16 v0, 0x64

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set9(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    sget-object v1, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;->NONE:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set5(Lcom/android/settings/fingerprint/RegisterFingerprint;Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;)Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap5(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    goto :goto_0
.end method
