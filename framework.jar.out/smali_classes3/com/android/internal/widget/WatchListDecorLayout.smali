.class public Lcom/android/internal/widget/WatchListDecorLayout;
.super Landroid/widget/FrameLayout;
.source "WatchListDecorLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field private mBottomPanel:Landroid/view/View;

.field private mForegroundPaddingBottom:I

.field private mForegroundPaddingLeft:I

.field private mForegroundPaddingRight:I

.field private mForegroundPaddingTop:I

.field private mListView:Landroid/widget/ListView;

.field private final mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Landroid/view/ViewTreeObserver;

.field private mPendingScroll:I

.field private mTopPanel:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    return-void
.end method

.method private applyMeasureToChild(Landroid/view/View;II)V
    .locals 10

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    const/4 v7, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v5, v7, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingLeftWithForeground()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingRightWithForeground()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v5, v6

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_0
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v5, v7, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingTopWithForeground()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingBottomWithForeground()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingLeftWithForeground()I

    move-result v5

    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingRightWithForeground()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v5, v6}, Lcom/android/internal/widget/WatchListDecorLayout;->getChildMeasureSpec(III)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingTopWithForeground()I

    move-result v5

    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingBottomWithForeground()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p3, v5, v6}, Lcom/android/internal/widget/WatchListDecorLayout;->getChildMeasureSpec(III)I

    move-result v0

    goto :goto_1
.end method

.method private getPaddingBottomWithForeground()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingBottom:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingBottom:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private getPaddingLeftWithForeground()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingLeft:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingLeft:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private getPaddingRightWithForeground()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingRight:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingRight:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private getPaddingTopWithForeground()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingTop:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingTop:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private measureAndGetHeight(Landroid/view/View;II)I
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/internal/widget/WatchListDecorLayout;->applyMeasureToChild(Landroid/view/View;II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getMeasureAllChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/internal/widget/WatchListDecorLayout;->applyMeasureToChild(Landroid/view/View;II)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private setScrolling(Landroid/view/View;F)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/WatchListDecorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Landroid/widget/ListView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "only one ListView child allowed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setNestedScrollingEnabled(Z)V

    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v1, v3, 0x70

    const/16 v3, 0x30

    if-ne v1, v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    if-nez v3, :cond_3

    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    goto :goto_1

    :cond_3
    const/16 v3, 0x50

    if-ne v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    if-nez v3, :cond_1

    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    goto :goto_1

    :cond_4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    iput-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_0
    iput-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 19

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getChildCount()I

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v3, v5, :cond_3

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v3, v5, :cond_4

    const/16 v16, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v10, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/widget/WatchListDecorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getMeasureAllChildren()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_2

    :cond_0
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/WatchListDecorLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v5, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    iget v5, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v5, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v5

    iget v5, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v5

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v9, v3}, Lcom/android/internal/widget/WatchListDecorLayout;->combineMeasuredStates(II)I

    move-result v9

    if-eqz v16, :cond_2

    iget v3, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    iget v3, v13, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    const/16 v16, 0x1

    goto :goto_0

    :cond_4
    const/16 v16, 0x0

    goto :goto_0

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingLeftWithForeground()I

    move-result v3

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingRightWithForeground()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v15, v3

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingTopWithForeground()I

    move-result v3

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingBottomWithForeground()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v14, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v15

    :cond_6
    move/from16 v0, p1

    invoke-static {v15, v0, v9}, Lcom/android/internal/widget/WatchListDecorLayout;->resolveSizeAndState(III)I

    move-result v3

    shl-int/lit8 v5, v9, 0x10

    move/from16 v0, p2

    invoke-static {v14, v0, v5}, Lcom/android/internal/widget/WatchListDecorLayout;->resolveSizeAndState(III)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/internal/widget/WatchListDecorLayout;->setMeasuredDimension(II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->scrollListBy(I)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v5, v1, v2}, Lcom/android/internal/widget/WatchListDecorLayout;->measureAndGetHeight(Landroid/view/View;II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v5, v1, v2}, Lcom/android/internal/widget/WatchListDecorLayout;->measureAndGetHeight(Landroid/view/View;II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    move/from16 v0, v18

    if-ne v0, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v3

    move/from16 v0, v17

    if-eq v0, v3, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v5

    sub-int v5, v5, v18

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v6

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v3, v5, v0, v6, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v3, 0x1

    if-le v10, v3, :cond_c

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v10, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    if-eq v4, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    if-eq v4, v3, :cond_b

    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v4, v1, v2}, Lcom/android/internal/widget/WatchListDecorLayout;->applyMeasureToChild(Landroid/view/View;II)V

    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method public onScrollChanged()V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    invoke-direct {p0, v2, v5}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    invoke-direct {p0, v2, v5}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    goto :goto_1
.end method

.method public setForegroundGravity(I)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getForegroundGravity()I

    move-result v2

    if-eq v2, p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getForegroundGravity()I

    move-result v2

    const/16 v3, 0x77

    if-ne v2, v3, :cond_1

    if-eqz v0, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iput v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v4, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    iput v4, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    iput v4, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    iput v4, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    goto :goto_0
.end method
