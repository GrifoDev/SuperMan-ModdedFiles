.class Lcom/android/launcher2/DeleteDrawable$3;
.super Ljava/lang/Object;
.source "DeleteDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DeleteDrawable;->startShakeAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DeleteDrawable;

.field final synthetic val$set:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DeleteDrawable;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/DeleteDrawable$3;->this$0:Lcom/android/launcher2/DeleteDrawable;

    iput-object p2, p0, Lcom/android/launcher2/DeleteDrawable$3;->val$set:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable$3;->this$0:Lcom/android/launcher2/DeleteDrawable;

    const/4 v1, 0x1

    # setter for: Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/DeleteDrawable;->access$502(Lcom/android/launcher2/DeleteDrawable;Z)Z

    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable$3;->this$0:Lcom/android/launcher2/DeleteDrawable;

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable$3;->val$set:Landroid/animation/AnimatorSet;

    # setter for: Lcom/android/launcher2/DeleteDrawable;->mCurrentAnimator:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/android/launcher2/DeleteDrawable;->access$402(Lcom/android/launcher2/DeleteDrawable;Landroid/animation/Animator;)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable$3;->this$0:Lcom/android/launcher2/DeleteDrawable;

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable$3;->this$0:Lcom/android/launcher2/DeleteDrawable;

    # getter for: Lcom/android/launcher2/DeleteDrawable;->mCurrentAnimator:Landroid/animation/Animator;
    invoke-static {v1}, Lcom/android/launcher2/DeleteDrawable;->access$400(Lcom/android/launcher2/DeleteDrawable;)Landroid/animation/Animator;

    move-result-object v1

    # setter for: Lcom/android/launcher2/DeleteDrawable;->mShakeAnimator:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/android/launcher2/DeleteDrawable;->access$602(Lcom/android/launcher2/DeleteDrawable;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method
