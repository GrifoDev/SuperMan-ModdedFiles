.class Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;
.super Ljava/lang/Object;
.source "KeyguardPatternView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPatternView;


# direct methods
.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;IZIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->onPatternChecked(IZIZ)V

    return-void
.end method

.method private constructor <init>(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    return-void
.end method

.method private onPatternChecked(IZIZ)V
    .locals 10

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    if-ne v4, p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    const-string/jumbo v4, "SecurityPatternView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onPatternChecked "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " timeoutMs "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_4

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardPatternView;->-get2(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, p1, v5, v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardPatternView;->-get8(Lcom/android/keyguard/KeyguardPatternView;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardPatternView;->-get13(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardPatternView;->-get16(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/SecLockPatternView;

    move-result-object v4

    sget-object v5, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v4, v5}, Lcom/android/keyguard/SecLockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardPatternView;->-get2(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardPatternView;->-get7(Lcom/android/keyguard/KeyguardPatternView;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardPatternView;->-get20(Lcom/android/keyguard/KeyguardPatternView;)Landroid/os/Vibrator;

    move-result-object v4

    sget-object v5, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v6, 0xc36b

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8, v5}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    :cond_5
    const-wide/16 v0, 0x0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardPatternView;->-get16(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/SecLockPatternView;

    move-result-object v4

    sget-object v5, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v4, v5}, Lcom/android/keyguard/SecLockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    if-eqz p4, :cond_8

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardPatternView;->-get2(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, p1, v5, p3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardPatternView;->-get14(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/systemui/KnoxStateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardPatternView;->-get14(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/systemui/KnoxStateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/KnoxStateMonitor;->isDisableDeviceByMultifactor()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_6
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardPatternView;->-wrap1(Lcom/android/keyguard/KeyguardPatternView;)V

    :cond_7
    :goto_2
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-virtual {v4, p1}, Lcom/android/keyguard/KeyguardPatternView;->reportAuditLog(I)V

    :cond_8
    if-nez p3, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardPatternView;->-get13(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getAddRemainingAttempt(I)I

    move-result v3

    if-lez v3, :cond_c

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardPatternView;->-get19(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardPatternView;->-get4(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f120529

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardPatternView;->-get4(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/high16 v8, 0x7f100000

    invoke-virtual {v6, v8, v3, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardPatternView;->-get19(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardMessageArea;->displayFailedAnimation()V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardPatternView;->-get16(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/SecLockPatternView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardPatternView;->-get3(Lcom/android/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/keyguard/SecLockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_9
    if-nez p3, :cond_a

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardPatternView;->-get9(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardHintTextArea;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_a

    sget-boolean v4, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardPatternView;->isHintText()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardPatternView;->-get9(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    goto/16 :goto_2

    :cond_a
    if-lez p3, :cond_7

    sget-boolean v4, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardPatternView;->isHintText()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardPatternView;->-get9(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_b
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardPatternView;->-get15(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4, p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v4, v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->-wrap3(Lcom/android/keyguard/KeyguardPatternView;J)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardPatternView;->-get13(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateAllBiometricsListeningState()V

    goto/16 :goto_2

    :cond_c
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardPatternView;->-get19(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    const v6, 0x7f120529

    invoke-static {v5, v6}, Lcom/android/keyguard/KeyguardPatternView;->-wrap0(Lcom/android/keyguard/KeyguardPatternView;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-get2(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    return-void
.end method

.method public onPatternCleared()V
    .locals 0

    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->-get16(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/SecLockPatternView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/SecLockPatternView;->disableInput()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->-get17(Lcom/android/keyguard/KeyguardPatternView;)Landroid/os/AsyncTask;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->-get17(Lcom/android/keyguard/KeyguardPatternView;)Landroid/os/AsyncTask;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->-get16(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/SecLockPatternView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/SecLockPatternView;->enableInput()V

    invoke-direct {p0, v0, v2, v2, v2}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->onPatternChecked(IZIZ)V

    return-void

    :cond_1
    const-string/jumbo v1, "SecurityPatternView"

    const-string/jumbo v2, "onPatternDetected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->-get4(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->-get4(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/LatencyTracker;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/keyguard/LatencyTracker;->onActionStart(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->-get4(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/LatencyTracker;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/keyguard/LatencyTracker;->onActionStart(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardPatternView;->-get15(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    new-instance v3, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;

    invoke-direct {v3, p0, v0}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;-><init>(Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;I)V

    invoke-static {v2, p1, v0, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardPatternView;->-set5(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->-get2(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_3
    return-void
.end method

.method public onPatternStart()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-get16(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/SecLockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->-get3(Lcom/android/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/SecLockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-get19(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/KeyguardPatternView;->-wrap5(Lcom/android/keyguard/KeyguardPatternView;II)V

    return-void
.end method
