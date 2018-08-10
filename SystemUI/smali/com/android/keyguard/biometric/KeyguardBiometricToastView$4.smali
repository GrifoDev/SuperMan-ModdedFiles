.class Lcom/android/keyguard/biometric/KeyguardBiometricToastView$4;
.super Ljava/lang/Object;
.source "KeyguardBiometricToastView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->changeTextAnim(FFLandroid/view/View;JJLcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

.field final synthetic val$type:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$4;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    iput-object p2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$4;->val$type:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 5

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$4;->val$type:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    sget-object v1, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;->Authenticating:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$4;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$4;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$4;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$4;->val$type:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    sget-object v1, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;->Authenticating:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$4;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$4;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$4;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
