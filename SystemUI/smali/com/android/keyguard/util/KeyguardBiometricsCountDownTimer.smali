.class public Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "KeyguardBiometricsCountDownTimer.java"


# instance fields
.field private mBiemetricMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

.field private mContext:Landroid/content/Context;

.field private mFailedAttempts:I


# direct methods
.method public constructor <init>(Landroid/content/Context;JJLcom/android/keyguard/KeyguardMessageArea;)V
    .locals 4

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;->mFailedAttempts:I

    iput-object p1, p0, Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;->mContext:Landroid/content/Context;

    iput-object p6, p0, Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;->mBiemetricMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedBiometricUnlockAttempts(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;->mFailedAttempts:I

    const-string/jumbo v0, "KeyguardBiometricsCountDownTimer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "KeyguardBiometricsCountDownTimer( millisInFuture = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , countDownInterval = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , mFailedAttempts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;->mFailedAttempts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const-string/jumbo v0, "KeyguardBiometricsCountDownTimer"

    const-string/jumbo v1, "onFinish()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;->mBiemetricMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;->mBiemetricMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateAllBiometricsListeningState()V

    return-void
.end method

.method public onTick(J)V
    .locals 7

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;->mFailedAttempts:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const v4, 0x7f10000d

    invoke-virtual {v2, v4, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;->mBiemetricMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;->mBiemetricMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "KeyguardBiometricsCountDownTimer"

    const-string/jumbo v3, "onTick ( mBiemetricMessageArea is null )"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "KeyguardBiometricsCountDownTimer"

    const-string/jumbo v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;->mBiemetricMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;->mBiemetricMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;->mBiemetricMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;->cancel()V

    return-void
.end method
