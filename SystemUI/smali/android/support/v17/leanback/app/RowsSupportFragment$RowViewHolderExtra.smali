.class final Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;
.super Ljava/lang/Object;
.source "RowsSupportFragment.java"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/RowsSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RowViewHolderExtra"
.end annotation


# instance fields
.field final mRowPresenter:Landroid/support/v17/leanback/widget/RowPresenter;

.field final mRowViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

.field final mSelectAnimator:Landroid/animation/TimeAnimator;

.field mSelectAnimatorDurationInUse:I

.field mSelectAnimatorInterpolatorInUse:Landroid/view/animation/Interpolator;

.field mSelectLevelAnimDelta:F

.field mSelectLevelAnimStart:F

.field final synthetic this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/RowsSupportFragment;Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/animation/TimeAnimator;

    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/RowPresenter;

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowPresenter:Landroid/support/v17/leanback/widget/RowPresenter;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    return-void
.end method


# virtual methods
.method animateSelect(ZZ)V
    .locals 3

    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v1}, Landroid/animation/TimeAnimator;->end()V

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    int-to-float v0, v1

    if-eqz p2, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowPresenter:Landroid/support/v17/leanback/widget/RowPresenter;

    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2, v0}, Landroid/support/v17/leanback/widget/RowPresenter;->setSelectLevel(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;F)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowPresenter:Landroid/support/v17/leanback/widget/RowPresenter;

    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/RowPresenter;->getSelectLevel(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget v1, v1, Landroid/support/v17/leanback/app/RowsSupportFragment;->mSelectAnimatorDuration:I

    iput v1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimatorDurationInUse:I

    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/RowsSupportFragment;->mSelectAnimatorInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimatorInterpolatorInUse:Landroid/view/animation/Interpolator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowPresenter:Landroid/support/v17/leanback/widget/RowPresenter;

    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/RowPresenter;->getSelectLevel(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)F

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectLevelAnimStart:F

    iget v1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectLevelAnimStart:F

    sub-float v1, v0, v1

    iput v1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectLevelAnimDelta:F

    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v1}, Landroid/animation/TimeAnimator;->start()V

    goto :goto_1
.end method

.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->updateSelect(JJ)V

    :cond_0
    return-void
.end method

.method updateSelect(JJ)V
    .locals 7

    iget v2, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimatorDurationInUse:I

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v2}, Landroid/animation/TimeAnimator;->end()V

    :goto_0
    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimatorInterpolatorInUse:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimatorInterpolatorInUse:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    :cond_0
    iget v2, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectLevelAnimStart:F

    iget v3, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectLevelAnimDelta:F

    mul-float/2addr v3, v0

    add-float v1, v2, v3

    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowPresenter:Landroid/support/v17/leanback/widget/RowPresenter;

    iget-object v3, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v2, v3, v1}, Landroid/support/v17/leanback/widget/RowPresenter;->setSelectLevel(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;F)V

    return-void

    :cond_1
    long-to-double v2, p1

    iget v4, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimatorDurationInUse:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    double-to-float v0, v2

    goto :goto_0
.end method
