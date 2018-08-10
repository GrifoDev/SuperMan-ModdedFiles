.class Lcom/android/keyguard/KeyguardAbsKeyInputView$4;
.super Landroid/os/CountDownTimer;
.source "KeyguardAbsKeyInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardAbsKeyInputView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field attempt:I

.field attemptRemainingBeforeWipe:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;JJ)V
    .locals 2

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getAddRemainingAttempt(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;->attemptRemainingBeforeWipe:I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;->attempt:I

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    sget-boolean v1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->isHintText()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->-get4(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_0
    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SAMSUNG_ACCOUNT_RECOVERY:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->-get5(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    sget-object v2, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->ForgotLockPattern:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->-wrap2(Lcom/android/keyguard/KeyguardAbsKeyInputView;Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string/jumbo v2, ""

    invoke-interface {v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceRecognitionListeningState()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIrisListeningState()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIBListeningState()V

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetState()V

    return-void
.end method

.method public onTick(J)V
    .locals 11

    const/16 v9, 0x3c

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v4, 0x3e8

    div-long v4, p1, v4

    long-to-float v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    div-int/lit8 v3, v1, 0x3c

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    const-string/jumbo v2, ""

    iget v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;->attemptRemainingBeforeWipe:I

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

    iget v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;->attempt:I

    iget v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;->attemptRemainingBeforeWipe:I

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/KeyguardTextBuilder;->getWarningAutoWipeMessage(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-le v1, v9, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->-get1(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    new-array v6, v7, [Ljava/lang/Object;

    add-int/lit8 v7, v0, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const v7, 0x7f100009

    invoke-virtual {v4, v7, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v3, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :cond_3
    if-gt v1, v9, :cond_1

    if-lez v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->-get1(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const v6, 0x7f10000a

    invoke-virtual {v4, v6, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
