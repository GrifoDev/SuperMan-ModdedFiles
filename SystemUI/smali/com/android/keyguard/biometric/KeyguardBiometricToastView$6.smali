.class Lcom/android/keyguard/biometric/KeyguardBiometricToastView$6;
.super Ljava/lang/Object;
.source "KeyguardBiometricToastView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->updateAnimation(JLcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

.field final synthetic val$resId:I

.field final synthetic val$stringId:I

.field final synthetic val$type:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;IILcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$6;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    iput p2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$6;->val$stringId:I

    iput p3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$6;->val$resId:I

    iput-object p4, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$6;->val$type:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 9

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$6;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->-get5(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$6;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$6;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->-get1(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$6;->val$stringId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$6;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->-get4(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$6;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    iget v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$6;->val$resId:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->setIcon(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$6;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->-wrap4(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$6;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$6;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->-get2(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)Landroid/widget/LinearLayout;

    move-result-object v3

    const-wide/16 v4, 0x0

    iget-object v8, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$6;->val$type:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x96

    invoke-static/range {v0 .. v8}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->-wrap1(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;FFLandroid/view/View;JJLcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;)V

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
