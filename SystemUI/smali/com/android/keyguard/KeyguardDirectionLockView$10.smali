.class Lcom/android/keyguard/KeyguardDirectionLockView$10;
.super Landroid/os/Handler;
.source "KeyguardDirectionLockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardDirectionLockView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardDirectionLockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$10;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardDirectionLockView$10;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardDirectionLockView;->-wrap3(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x23

    if-ne v6, v7, :cond_a

    const-string/jumbo v6, "KeyguardDirectionLockView"

    const-string/jumbo v7, "In handleMessage()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardDirectionLockView$10;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v6, v9}, Lcom/android/keyguard/KeyguardDirectionLockView;->-set3(Lcom/android/keyguard/KeyguardDirectionLockView;Z)Z

    iget-object v6, p0, Lcom/android/keyguard/KeyguardDirectionLockView$10;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get6(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v6, p0, Lcom/android/keyguard/KeyguardDirectionLockView$10;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get6(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardDirectionLockView$10;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get6(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardDirectionLockView$10;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get0(Lcom/android/keyguard/KeyguardDirectionLockView;)I

    move-result v6

    if-lt v1, v6, :cond_0

    iget-object v6, p0, Lcom/android/keyguard/KeyguardDirectionLockView$10;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get26(Lcom/android/keyguard/KeyguardDirectionLockView;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v6, v7}, Lcom/android/keyguard/KeyguardDirectionLockView;->-set7(Lcom/android/keyguard/KeyguardDirectionLockView;I)I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardDirectionLockView$10;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get2(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v6

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v7

    invoke-interface {v6, v7, v9, v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    :cond_0
    iget-object v6, p0, Lcom/android/keyguard/KeyguardDirectionLockView$10;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get3(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/keyguard/KeyguardDirectionLockView$10;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardDirectionLockView;->-wrap4(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/keyguard/KeyguardDirectionLockView$10;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get3(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    iget-object v6, p0, Lcom/android/keyguard/KeyguardDirectionLockView$10;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView$10;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v7, v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->-wrap1(Lcom/android/keyguard/KeyguardDirectionLockView;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/keyguard/KeyguardDirectionLockView;->-set1(Lcom/android/keyguard/KeyguardDirectionLockView;Ljava/lang/String;)Ljava/lang/String;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardDirectionLockView$10;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get2(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->getRemainingAttemptsBeforeWipe()I

    move-result v4

    const/4 v6, 0x5

    if-eq v0, v6, :cond_3

    const/16 v6, 0x9

    if-le v0, v6, :cond_4

    :cond_3
    if-eqz v4, :cond_4

    iget-object v6, p0, Lcom/android/keyguard/KeyguardDirectionLockView$10;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get3(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_4
    iget-object v6, p0, Lcom/android/keyguard/KeyguardDirectionLockView$10;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get22(Lcom/android/keyguard/KeyguardDirectionLockView;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardDirectionLockView$10;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get1(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/android/keyguard/KeyguardDirectionLockView$10;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get23(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView$10;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get11(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/view/animation/Animation;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/keyguard/KeyguardMessageArea;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardDirectionLockView$10;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get27(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/os/Vibrator;

    move-result-object v6

    sget-object v7, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_NOTIFICATION:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v8, 0xc371

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v9, v10, v7}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lcom/android/keyguard/KeyguardDirectionLockView$10;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get0(Lcom/android/keyguard/KeyguardDirectionLockView;)I

    move-result v6

    if-lt v1, v6, :cond_8

    iget-object v6, p0, Lcom/android/keyguard/KeyguardDirectionLockView$10;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get20(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(I)J

    move-result-wide v2

    :goto_2
    iget-object v6, p0, Lcom/android/keyguard/KeyguardDirectionLockView$10;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get20(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v7

    invoke-virtual {v6, v8, v7}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v6

    if-ne v6, v8, :cond_7

    iget-object v6, p0, Lcom/android/keyguard/KeyguardDirectionLockView$10;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get18(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_7
    iget-object v6, p0, Lcom/android/keyguard/KeyguardDirectionLockView$10;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v6, v2, v3}, Lcom/android/keyguard/KeyguardDirectionLockView;->-wrap7(Lcom/android/keyguard/KeyguardDirectionLockView;J)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardDirectionLockView$10;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardDirectionLockView;->reset()V

    goto/16 :goto_0

    :cond_8
    iget-object v6, p0, Lcom/android/keyguard/KeyguardDirectionLockView$10;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get20(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v2

    goto :goto_2

    :cond_9
    iget-object v6, p0, Lcom/android/keyguard/KeyguardDirectionLockView$10;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get24(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/speech/tts/TextToSpeech;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView$10;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get10(Lcom/android/keyguard/KeyguardDirectionLockView;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardDirectionLockView$10;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v8}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get13(Lcom/android/keyguard/KeyguardDirectionLockView;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v6, v7, v9, v8}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_1

    :cond_a
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x25

    if-ne v6, v7, :cond_1

    const-string/jumbo v6, "KeyguardDirectionLockView"

    const-string/jumbo v7, "verifyPasswordAndUnlock"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardDirectionLockView$10;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get2(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v6

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v7

    invoke-interface {v6, v7, v8, v9}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardDirectionLockView$10;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v6, v9}, Lcom/android/keyguard/KeyguardDirectionLockView;->-set7(Lcom/android/keyguard/KeyguardDirectionLockView;I)I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardDirectionLockView$10;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get2(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v6

    invoke-interface {v6, v8}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto/16 :goto_0
.end method
