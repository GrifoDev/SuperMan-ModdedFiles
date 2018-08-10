.class Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecoverAnimation"
.end annotation


# instance fields
.field final mActionState:I

.field final mAnimationType:I

.field mEnded:Z

.field private mFraction:F

.field public mIsPendingCleanup:Z

.field mOverridden:Z

.field final mStartDx:F

.field final mStartDy:F

.field final mTargetX:F

.field final mTargetY:F

.field private final mValueAnimator:Landroid/animation/ValueAnimator;

.field final mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

.field mX:F

.field mY:F

.field final synthetic this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/helper/ItemTouchHelper;Lcom/android/internal/widget/RecyclerView$ViewHolder;IIFFFF)V
    .locals 2

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    iput p4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    iput p3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mAnimationType:I

    iput-object p2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iput p5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    iput p6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    iput p7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetX:F

    iput p8, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetY:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation$1;-><init>(Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->setFraction(F)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->setFraction(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

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

.method public setDuration(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public setFraction(F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mFraction:F

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public update()V
    .locals 4

    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    iget v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    :goto_0
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    iget v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    :goto_1
    return-void

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    iget v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mFraction:F

    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetX:F

    iget v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    iget v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mFraction:F

    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetY:F

    iget v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    goto :goto_1
.end method
