.class final Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;
.super Landroid/support/v4/app/SharedElementCallback;
.source "DetailsOverviewSharedElementHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$TransitionTimeOutRunnable;
    }
.end annotation


# instance fields
.field mActivityToRunTransition:Landroid/app/Activity;

.field mRightPanelHeight:I

.field mRightPanelWidth:I

.field private mSavedMatrix:Landroid/graphics/Matrix;

.field private mSavedScaleType:Landroid/widget/ImageView$ScaleType;

.field mSharedElementName:Ljava/lang/String;

.field mStartedPostpone:Z

.field mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/SharedElementCallback;-><init>()V

    return-void
.end method

.method private changeImageViewScale(Landroid/view/View;)V
    .locals 4

    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v0, v2, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    invoke-static {v0}, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->updateImageViewAfterScaleTypeChange(Landroid/widget/ImageView;)V

    return-void
.end method

.method private hasImageViewScaleChange(Landroid/view/View;)Z
    .locals 1

    instance-of v0, p1, Landroid/widget/ImageView;

    return v0
.end method

.method private restoreImageViewScale()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mSavedScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v0, v1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mSavedScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mSavedScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mSavedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    iput-object v3, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mSavedScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-static {v0}, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->updateImageViewAfterScaleTypeChange(Landroid/widget/ImageView;)V

    :cond_1
    return-void
.end method

.method private saveImageViewScale()V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mSavedScaleType:Landroid/widget/ImageView$ScaleType;

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v0, v2, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mSavedScaleType:Landroid/widget/ImageView$ScaleType;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mSavedScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mSavedMatrix:Landroid/graphics/Matrix;

    :cond_1
    return-void
.end method

.method private static updateImageViewAfterScaleTypeChange(Landroid/widget/ImageView;)V
    .locals 4

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ImageView;->measure(II)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method


# virtual methods
.method onBindToDrawable(Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mRightPanel:Landroid/view/ViewGroup;

    new-instance v1, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$1;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$1;-><init>(Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mRightPanel:Landroid/view/ViewGroup;

    new-instance v1, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$2;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$2;-><init>(Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    if-eq v1, v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->restoreImageViewScale()V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setDescendantFocusability(I)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v1, v3}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setVisibility(I)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    const/high16 v2, 0x40000

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setDescendantFocusability(I)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x4

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v6, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v6, v6, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    if-eq v6, v2, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-direct {p0, v4}, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->hasImageViewScaleChange(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->saveImageViewScale()V

    invoke-direct {p0, v4}, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->changeImageViewScale(Landroid/view/View;)V

    :cond_3
    iget-object v6, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v1, v6, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1, v8, v8, v5, v0}, Landroid/view/View;->layout(IIII)V

    iget-object v6, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v3, v6, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mRightPanel:Landroid/view/ViewGroup;

    iget v6, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mRightPanelWidth:I

    if-eqz v6, :cond_4

    iget v6, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mRightPanelHeight:I

    if-eqz v6, :cond_4

    iget v6, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mRightPanelWidth:I

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v7, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mRightPanelHeight:I

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mRightPanelWidth:I

    add-int/2addr v7, v5

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mRightPanelHeight:I

    add-int/2addr v8, v9

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    :goto_0
    iget-object v6, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v6, v6, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v6, v10}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setVisibility(I)V

    iget-object v6, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v6, v6, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int v6, v5, v6

    invoke-virtual {v3, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_0
.end method

.method startPostponedEnterTransition()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mStartedPostpone:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mActivityToRunTransition:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompat;->startPostponedEnterTransition(Landroid/app/Activity;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mStartedPostpone:Z

    :cond_0
    return-void
.end method
