.class public abstract Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;
.super Landroid/support/v17/leanback/widget/RowPresenter;
.source "AbstractMediaItemPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;
    }
.end annotation


# static fields
.field static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mBackgroundColor:I

.field private mBackgroundColorSet:Z

.field private mMediaItemActionPresenter:Landroid/support/v17/leanback/widget/Presenter;

.field private mMediaRowSeparator:Z

.field private mThemeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/RowPresenter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mBackgroundColor:I

    new-instance v0, Landroid/support/v17/leanback/widget/MediaItemActionPresenter;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/MediaItemActionPresenter;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mMediaItemActionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iput p1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mThemeId:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->setHeaderPresenter(Landroid/support/v17/leanback/widget/RowHeaderPresenter;)V

    return-void
.end method

.method static calculateMediaItemNumberFlipperIndex(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)I
    .locals 4

    const/4 v0, -0x1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mRowPresenter:Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->getRowObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->getMediaPlayState(Ljava/lang/Object;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemNumberView:Landroid/widget/TextView;

    if-nez v2, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemNumberViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemNumberView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemPausedView:Landroid/view/View;

    if-nez v2, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemNumberViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemPausedView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemPlayingView:Landroid/view/View;

    if-nez v2, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemNumberViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemPlayingView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static updateSelector(Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;Z)Landroid/animation/ValueAnimator;
    .locals 17

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v8, 0x10e0000

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    new-instance v11, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v11}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-long v14, v9

    invoke-virtual {v2, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    return-object p2

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/animation/ValueAnimator;->cancel()V

    const/16 p2, 0x0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getAlpha()F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v2, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-long v14, v9

    invoke-virtual {v2, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    sget-object v2, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0, v8, v14}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    if-eqz p3, :cond_2

    const/4 v2, 0x1

    if-ne v12, v2, :cond_3

    sget-object v2, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getHeight()I

    move-result v14

    add-int/2addr v8, v14

    iput v8, v2, Landroid/graphics/Rect;->right:I

    sget-object v2, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getHeight()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v8, v14

    iput v8, v2, Landroid/graphics/Rect;->left:I

    :cond_2
    :goto_0
    sget-object v2, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sget-object v2, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sub-int/2addr v2, v6

    int-to-float v7, v2

    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v2, v4

    int-to-float v5, v2

    const/4 v2, 0x0

    cmpl-float v2, v5, v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    cmpl-float v2, v7, v2

    if-nez v2, :cond_4

    :goto_1
    return-object p2

    :cond_3
    sget-object v2, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getHeight()I

    move-result v14

    sub-int/2addr v8, v14

    iput v8, v2, Landroid/graphics/Rect;->left:I

    sget-object v2, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getHeight()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v8, v14

    iput v8, v2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    cmpl-float v2, v10, v2

    if-nez v2, :cond_5

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestLayout()V

    goto :goto_1

    :cond_5
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    int-to-long v14, v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$1;

    move-object/from16 v8, p0

    invoke-direct/range {v2 .. v8}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$1;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;IFIFLandroid/view/View;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual/range {p2 .. p2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected createRowViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v4, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mThemeId:I

    if-eqz v4, :cond_0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget v4, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mThemeId:I

    invoke-direct {v1, v0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    :cond_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Landroid/support/v17/leanback/R$layout;->lb_row_media_item:I

    invoke-virtual {v4, v5, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    new-instance v2, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    invoke-direct {v2, v3}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p0, v2, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mRowPresenter:Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mBackgroundColorSet:Z

    if-eqz v4, :cond_1

    iget-object v4, v2, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaRowView:Landroid/view/View;

    iget v5, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mBackgroundColor:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-object v2
.end method

.method public getActionPresenter()Landroid/support/v17/leanback/widget/Presenter;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mMediaItemActionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    return-object v0
.end method

.method protected getMediaPlayState(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasMediaRowSeparator()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mMediaRowSeparator:Z

    return v0
.end method

.method protected isClippingChildren()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isUsingDefaultSelectEffect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onBindMediaDetails(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;Ljava/lang/Object;)V
.end method

.method public onBindMediaPlayState(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)V
    .locals 2

    invoke-static {p1}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->calculateMediaItemNumberFlipperIndex(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p1, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemNumberViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p1, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemNumberViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    :cond_0
    return-void
.end method

.method protected onBindRowActions(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)V
    .locals 0

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->onBindRowActions()V

    return-void
.end method

.method protected onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->onBindRowActions(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)V

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->getMediaItemRowSeparator()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->hasMediaRowSeparator()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->onBindMediaPlayState(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)V

    check-cast p1, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->onBindMediaDetails(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method
