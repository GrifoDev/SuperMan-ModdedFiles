.class final Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$1;
.super Ljava/lang/Object;
.source "AbstractMediaItemPresenter.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->updateSelector(Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;Z)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$deltaLeft:F

.field final synthetic val$deltaWidth:F

.field final synthetic val$lp:Landroid/view/ViewGroup$MarginLayoutParams;

.field final synthetic val$selectorView:Landroid/view/View;

.field final synthetic val$targetLeft:I

.field final synthetic val$targetWidth:I


# direct methods
.method constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;IFIFLandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$1;->val$lp:Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$1;->val$targetLeft:I

    iput p3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$1;->val$deltaLeft:F

    iput p4, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$1;->val$targetWidth:I

    iput p5, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$1;->val$deltaWidth:F

    iput-object p6, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$1;->val$selectorView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$1;->val$lp:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$1;->val$targetLeft:I

    int-to-float v2, v2

    iget v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$1;->val$deltaLeft:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$1;->val$lp:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$1;->val$targetWidth:I

    int-to-float v2, v2

    iget v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$1;->val$deltaWidth:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$1;->val$selectorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    return-void
.end method
