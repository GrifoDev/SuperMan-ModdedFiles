.class Lcom/android/keyguard/biometric/KeyguardBiometricToastView$5;
.super Ljava/lang/Object;
.source "KeyguardBiometricToastView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->disappearAnimation(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$5;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const-string/jumbo v0, "KeyguardBiometricToastView"

    const-string/jumbo v1, "disappearAnimation cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$5;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->-wrap3(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;Z)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$5;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string/jumbo v0, "KeyguardBiometricToastView"

    const-string/jumbo v1, "disappearAnimation end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$5;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->-wrap3(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;Z)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$5;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->setVisibility(I)V

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
