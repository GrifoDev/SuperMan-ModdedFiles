.class Lcom/android/launcher2/DeleteDrawable$2;
.super Ljava/lang/Object;
.source "DeleteDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DeleteDrawable;->startBulgeAnimation()V
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

    iput-object p1, p0, Lcom/android/launcher2/DeleteDrawable$2;->this$0:Lcom/android/launcher2/DeleteDrawable;

    iput-object p2, p0, Lcom/android/launcher2/DeleteDrawable$2;->val$set:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable$2;->this$0:Lcom/android/launcher2/DeleteDrawable;

    # getter for: Lcom/android/launcher2/DeleteDrawable;->mBulgeAnimationListener:Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;
    invoke-static {v0}, Lcom/android/launcher2/DeleteDrawable;->access$000(Lcom/android/launcher2/DeleteDrawable;)Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable$2;->this$0:Lcom/android/launcher2/DeleteDrawable;

    # getter for: Lcom/android/launcher2/DeleteDrawable;->mBulgeAnimationListener:Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;
    invoke-static {v0}, Lcom/android/launcher2/DeleteDrawable;->access$000(Lcom/android/launcher2/DeleteDrawable;)Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;->onBulgeAnimationEnded()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable$2;->this$0:Lcom/android/launcher2/DeleteDrawable;

    const/4 v1, 0x0

    # setter for: Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/DeleteDrawable;->access$102(Lcom/android/launcher2/DeleteDrawable;Z)Z

    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable$2;->this$0:Lcom/android/launcher2/DeleteDrawable;

    const/4 v1, 0x0

    # setter for: Lcom/android/launcher2/DeleteDrawable;->mTrashCanOffsetY:F
    invoke-static {v0, v1}, Lcom/android/launcher2/DeleteDrawable;->access$202(Lcom/android/launcher2/DeleteDrawable;F)F

    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable$2;->this$0:Lcom/android/launcher2/DeleteDrawable;

    # invokes: Lcom/android/launcher2/DeleteDrawable;->stopCurrentAnimation()V
    invoke-static {v0}, Lcom/android/launcher2/DeleteDrawable;->access$300(Lcom/android/launcher2/DeleteDrawable;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable$2;->this$0:Lcom/android/launcher2/DeleteDrawable;

    # getter for: Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z
    invoke-static {v0}, Lcom/android/launcher2/DeleteDrawable;->access$100(Lcom/android/launcher2/DeleteDrawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable$2;->this$0:Lcom/android/launcher2/DeleteDrawable;

    # getter for: Lcom/android/launcher2/DeleteDrawable;->mBulgeAnimationListener:Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;
    invoke-static {v0}, Lcom/android/launcher2/DeleteDrawable;->access$000(Lcom/android/launcher2/DeleteDrawable;)Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable$2;->this$0:Lcom/android/launcher2/DeleteDrawable;

    # getter for: Lcom/android/launcher2/DeleteDrawable;->mBulgeAnimationListener:Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;
    invoke-static {v0}, Lcom/android/launcher2/DeleteDrawable;->access$000(Lcom/android/launcher2/DeleteDrawable;)Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;->onBulgeAnimationStarted()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable$2;->this$0:Lcom/android/launcher2/DeleteDrawable;

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable$2;->val$set:Landroid/animation/AnimatorSet;

    # setter for: Lcom/android/launcher2/DeleteDrawable;->mCurrentAnimator:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/android/launcher2/DeleteDrawable;->access$402(Lcom/android/launcher2/DeleteDrawable;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method
