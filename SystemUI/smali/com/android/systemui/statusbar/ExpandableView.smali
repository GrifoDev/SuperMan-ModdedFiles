.class public abstract Lcom/android/systemui/statusbar/ExpandableView;
.super Landroid/widget/FrameLayout;
.source "ExpandableView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;
    }
.end annotation


# static fields
.field private static mClipRect:Landroid/graphics/Rect;


# instance fields
.field private mActualHeight:I

.field private mChangingPosition:Z

.field protected mClipBottomAmount:I

.field private mClipToActualHeight:Z

.field protected mClipTopAmount:I

.field private mDark:Z

.field private mInShelf:Z

.field private mMatchParentViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMinClipTopAmount:I

.field protected mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

.field private mTransformingInShelf:Z

.field private mTransientContainer:Landroid/view/ViewGroup;

.field private mWillBeGone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/ExpandableView;->mClipRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mMinClipTopAmount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipToActualHeight:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mChangingPosition:Z

    return-void
.end method

.method private updateClipping()V
    .locals 5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipToActualHeight:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v0

    sget-object v1, Lcom/android/systemui/statusbar/ExpandableView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getExtraBottomPadding()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipBottomAmount:I

    sub-int/2addr v3, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v1, Lcom/android/systemui/statusbar/ExpandableView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setClipBounds(Landroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method


# virtual methods
.method public areChildrenExpanded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createNewViewState(Lcom/android/systemui/statusbar/stack/StackScrollState;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;-><init>()V

    return-object v0
.end method

.method public getActualHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mActualHeight:I

    return v0
.end method

.method public getBoundsOnScreen(Landroid/graphics/Rect;Z)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method

.method public getClipBottomAmount()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipBottomAmount:I

    return v0
.end method

.method public getClipTopAmount()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipTopAmount:I

    return v0
.end method

.method public getCollapsedHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method

.method public getExtraBottomPadding()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIncreasedPaddingAmount()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMaxContentHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getOutlineAlpha()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOutlineTranslation()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPinnedHeadsUpHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getShadowAlpha()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTransientContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mTransientContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getTranslation()F
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationX()F

    move-result v0

    return v0
.end method

.method public hasNoContentHeight()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 3

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->hasOverlappingRendering()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getHeight()I

    move-result v2

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isAboveShelf()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChangingPosition()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mChangingPosition:Z

    return v0
.end method

.method public isChildInGroup()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isContentExpandable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDark()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mDark:Z

    return v0
.end method

.method public isGroupExpanded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGroupExpansionChanging()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInShelf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mInShelf:Z

    return v0
.end method

.method public isSummaryWithChildren()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTransformingIntoShelf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mTransformingInShelf:Z

    return v0
.end method

.method public isTransparent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public mustStayOnScreen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyHeightChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;->onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    :cond_0
    return-void
.end method

.method public onHeightReset()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;->onReset(Lcom/android/systemui/statusbar/ExpandableView;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableView;->updateClipping()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 19

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    const v15, 0x7fffffff

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    if-eqz v9, :cond_0

    if-eqz v8, :cond_0

    invoke-static {v8, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    :cond_0
    const/high16 v17, -0x80000000

    move/from16 v0, v17

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/ExpandableView;->getChildCount()I

    move-result v5

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v5, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/ExpandableView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    move v7, v13

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    if-ltz v17, :cond_2

    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v0, v15, :cond_3

    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v0, v17

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    :cond_2
    :goto_2
    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->getChildMeasureSpec(III)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v3, v0, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_1

    :cond_3
    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v0, v17

    if-ne v9, v0, :cond_6

    move v14, v8

    :goto_3
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v0, v17

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->getChildMeasureSpec(III)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v3, v0, v13}, Landroid/view/View;->measure(II)V

    goto :goto_4

    :cond_6
    invoke-static {v15, v12}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setMeasuredDimension(II)V

    return-void
.end method

.method public abstract performAddAnimation(JJ)V
.end method

.method public abstract performRemoveAnimation(JFLjava/lang/Runnable;)V
.end method

.method public pointInView(FFF)Z
    .locals 5

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipTopAmount:I

    int-to-float v1, v3

    iget v3, p0, Lcom/android/systemui/statusbar/ExpandableView;->mActualHeight:I

    int-to-float v0, v3

    neg-float v3, p3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_0

    sub-float v3, v1, p3

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/ExpandableView;->mRight:I

    iget v4, p0, Lcom/android/systemui/statusbar/ExpandableView;->mLeft:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v3, p3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    add-float v3, v0, p3

    cmpg-float v3, p2, v3

    if-gez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public setActualHeight(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    return-void
.end method

.method public setActualHeight(IZ)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mActualHeight:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableView;->updateClipping()V

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableView;->notifyHeightChanged(Z)V

    :cond_0
    return-void
.end method

.method public setActualHeightAnimating(Z)V
    .locals 0

    return-void
.end method

.method public setBelowSpeedBump(Z)V
    .locals 0

    return-void
.end method

.method public setChangingPosition(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mChangingPosition:Z

    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipBottomAmount:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableView;->updateClipping()V

    return-void
.end method

.method public setClipToActualHeight(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipToActualHeight:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableView;->updateClipping()V

    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipTopAmount:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableView;->updateClipping()V

    return-void
.end method

.method public setDark(ZZJ)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mDark:Z

    return-void
.end method

.method public setDimmed(ZZ)V
    .locals 0

    return-void
.end method

.method public setFakeShadowIntensity(FFII)V
    .locals 0

    return-void
.end method

.method public setHideSensitive(ZZJJ)V
    .locals 0

    return-void
.end method

.method public setHideSensitiveForIntrinsicHeight(Z)V
    .locals 0

    return-void
.end method

.method public setInShelf(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mInShelf:Z

    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setMinClipTopAmount(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mMinClipTopAmount:I

    return-void
.end method

.method public setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    return-void
.end method

.method public setShadowAlpha(F)V
    .locals 0

    return-void
.end method

.method public setTransformingInShelf(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mTransformingInShelf:Z

    return-void
.end method

.method public setTransientContainer(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mTransientContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public setTranslation(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationX(F)V

    return-void
.end method

.method public setWillBeGone(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mWillBeGone:Z

    return-void
.end method

.method public willBeGone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mWillBeGone:Z

    return v0
.end method
