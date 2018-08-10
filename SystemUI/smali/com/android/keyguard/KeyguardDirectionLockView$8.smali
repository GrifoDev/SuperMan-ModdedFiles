.class Lcom/android/keyguard/KeyguardDirectionLockView$8;
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

    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardDirectionLockView;->-wrap2(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x23

    if-ne v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v5, v8}, Lcom/android/keyguard/KeyguardDirectionLockView;->-set4(Lcom/android/keyguard/KeyguardDirectionLockView;Z)Z

    iget-object v5, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get8(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v5, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get8(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get8(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get0(Lcom/android/keyguard/KeyguardDirectionLockView;)I

    move-result v5

    if-lt v2, v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get31(Lcom/android/keyguard/KeyguardDirectionLockView;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Lcom/android/keyguard/KeyguardDirectionLockView;->-set9(Lcom/android/keyguard/KeyguardDirectionLockView;I)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get3(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v5

    invoke-interface {v5, v4, v8, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get22(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/systemui/KnoxStateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardDirectionLockView;->-wrap3(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardDirectionLockView;->-wrap0(Lcom/android/keyguard/KeyguardDirectionLockView;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/keyguard/KeyguardDirectionLockView;->-set2(Lcom/android/keyguard/KeyguardDirectionLockView;Ljava/lang/String;)Ljava/lang/String;

    if-lez v3, :cond_4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get0(Lcom/android/keyguard/KeyguardDirectionLockView;)I

    move-result v5

    if-lt v2, v5, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get24(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    :goto_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v5, v0, v1}, Lcom/android/keyguard/KeyguardDirectionLockView;->-wrap6(Lcom/android/keyguard/KeyguardDirectionLockView;J)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get21(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateAllBiometricsListeningState()V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardDirectionLockView;->reset()V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get24(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get26(Lcom/android/keyguard/KeyguardDirectionLockView;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get1(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get29(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/speech/tts/TextToSpeech;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get13(Lcom/android/keyguard/KeyguardDirectionLockView;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get14(Lcom/android/keyguard/KeyguardDirectionLockView;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v5, v6, v8, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_5
    iget-object v5, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get28(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get13(Lcom/android/keyguard/KeyguardDirectionLockView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get28(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardMessageArea;->displayFailedAnimation()V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get32(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/os/Vibrator;

    move-result-object v5

    sget-object v6, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_NOTIFICATION:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v7, 0xc371

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v8, v9, v6}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    goto/16 :goto_0

    :cond_6
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x25

    if-ne v5, v6, :cond_1

    const-string/jumbo v5, "KeyguardDirectionLock"

    const-string/jumbo v6, "verifyPasswordAndUnlock"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get3(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v5

    invoke-interface {v5, v4, v7, v8}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v5, v8}, Lcom/android/keyguard/KeyguardDirectionLockView;->-set9(Lcom/android/keyguard/KeyguardDirectionLockView;I)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get3(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v5

    invoke-interface {v5, v7, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto/16 :goto_0
.end method
