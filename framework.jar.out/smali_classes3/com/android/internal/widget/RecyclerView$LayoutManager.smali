.class public abstract Lcom/android/internal/widget/RecyclerView$LayoutManager;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;,
        Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;
    }
.end annotation


# instance fields
.field mAutoMeasure:Z

.field mChildHelper:Lcom/android/internal/widget/ChildHelper;

.field private mHeight:I

.field private mHeightMode:I

.field mIsAttachedToWindow:Z

.field private mItemPrefetchEnabled:Z

.field private mMeasurementCacheEnabled:Z

.field mPrefetchMaxCountObserved:I

.field mPrefetchMaxObservedInInitialPrefetch:Z

.field mRecyclerView:Lcom/android/internal/widget/RecyclerView;

.field mRequestedSimpleAnimations:Z

.field mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

.field private mWidth:I

.field private mWidthMode:I


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/widget/RecyclerView$LayoutManager;Lcom/android/internal/widget/RecyclerView$SmoothScroller;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onSmoothScrollerStopped(Lcom/android/internal/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    return-void
.end method

.method private addViewInt(Landroid/view/View;IZ)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-nez p3, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/ViewInfoStore;->addToDisappearedInLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->unScrap()V

    :goto_1
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, p1, p2, v4, v5}, Lcom/android/internal/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    :cond_2
    :goto_2
    iget-boolean v3, v2, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    iput-boolean v5, v2, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    :cond_3
    return-void

    :cond_4
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/ViewInfoStore;->removeFromDisappearedInLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ne p2, v6, :cond_7

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result p2

    :cond_7
    if-ne v0, v6, :cond_8

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v5, p1}, Lcom/android/internal/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8
    if-eq v0, p2, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, v0, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->moveView(II)V

    goto :goto_2

    :cond_9
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, p1, p2, v5}, Lcom/android/internal/widget/ChildHelper;->addView(Landroid/view/View;IZ)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->onChildAttachedToWindow(Landroid/view/View;)V

    goto :goto_2
.end method

.method public static chooseSize(III)I
    .locals 3

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2

    :sswitch_0
    return v1

    :sswitch_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private detachViewInternal(ILandroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ChildHelper;->detachViewFromParent(I)V

    return-void
.end method

.method public static getChildMeasureSpec(IIIIZ)I
    .locals 7

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    sub-int v3, p0, p2

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p4, :cond_3

    if-ltz p3, :cond_1

    move v1, p3

    const/high16 v0, 0x40000000    # 2.0f

    :cond_0
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    return v3

    :cond_1
    if-ne p3, v6, :cond_2

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v1, v2

    move v0, p1

    goto :goto_0

    :sswitch_1
    const/4 v1, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-ne p3, v5, :cond_0

    const/4 v1, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    if-ltz p3, :cond_4

    move v1, p3

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    :cond_4
    if-ne p3, v6, :cond_5

    move v1, v2

    move v0, p1

    goto :goto_0

    :cond_5
    if-ne p3, v5, :cond_0

    move v1, v2

    const/high16 v3, -0x80000000

    if-eq p1, v3, :cond_6

    const/high16 v3, 0x40000000    # 2.0f

    if-ne p1, v3, :cond_7

    :cond_6
    const/high16 v0, -0x80000000

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getChildMeasureSpec(IIIZ)I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    sub-int v3, p0, p1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    if-ltz p2, :cond_1

    move v1, p2

    const/high16 v0, 0x40000000    # 2.0f

    :cond_0
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    return v3

    :cond_1
    const/4 v1, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-ltz p2, :cond_3

    move v1, p2

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    if-ne p2, v3, :cond_4

    move v1, v2

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    :cond_4
    const/4 v3, -0x2

    if-ne p2, v3, :cond_0

    move v1, v2

    const/high16 v0, -0x80000000

    goto :goto_0
.end method

.method public static getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v1, Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;

    invoke-direct {v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;-><init>()V

    sget-object v2, Lcom/android/internal/R$styleable;->RecyclerView:[I

    invoke-virtual {p0, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method private static isMeasurementUpToDate(III)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    return v3

    :cond_0
    sparse-switch v0, :sswitch_data_0

    return v3

    :sswitch_0
    return v2

    :sswitch_1
    if-lt v1, p0, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    :sswitch_2
    if-ne v1, p0, :cond_2

    :goto_1
    return v2

    :cond_2
    move v2, v3

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private onSmoothScrollerStopped(Lcom/android/internal/widget/RecyclerView$SmoothScroller;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    :cond_0
    return-void
.end method

.method private scrapOrRecycleView(Lcom/android/internal/widget/RecyclerView$Recycler;ILandroid/view/View;)V
    .locals 2

    invoke-static {p3}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/RecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ViewInfoStore;->onViewDetached(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method


# virtual methods
.method public addDisappearingView(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    return-void
.end method

.method public addDisappearingView(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    return-void
.end method

.method public assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->assertInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public attachView(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    return-void
.end method

.method public attachView(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;ILcom/android/internal/widget/RecyclerView$LayoutParams;)V

    return-void
.end method

.method public attachView(Landroid/view/View;ILcom/android/internal/widget/RecyclerView$LayoutParams;)V
    .locals 3

    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ViewInfoStore;->addToDisappearedInLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v2

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ViewInfoStore;->removeFromDisappearedInLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method public calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-nez v1, :cond_0

    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canScrollVertically()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checkLayoutParams(Lcom/android/internal/widget/RecyclerView$LayoutParams;)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public collectAdjacentPrefetchPositions(IILcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 0

    return-void
.end method

.method public collectInitialPrefetchPositions(ILcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 0

    return-void
.end method

.method public computeHorizontalScrollExtent(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public computeHorizontalScrollOffset(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public computeHorizontalScrollRange(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollExtent(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollOffset(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollRange(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public detachAndScrapAttachedViews(Lcom/android/internal/widget/RecyclerView$Recycler;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Lcom/android/internal/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public detachAndScrapView(Landroid/view/View;Lcom/android/internal/widget/RecyclerView$Recycler;)V
    .locals 2

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Lcom/android/internal/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    return-void
.end method

.method public detachAndScrapViewAt(ILcom/android/internal/widget/RecyclerView$Recycler;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Lcom/android/internal/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    return-void
.end method

.method public detachView(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public detachViewAt(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    return-void
.end method

.method dispatchAttachedToWindow(Lcom/android/internal/widget/RecyclerView;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Lcom/android/internal/widget/RecyclerView;)V

    return-void
.end method

.method dispatchDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$Recycler;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$Recycler;)V

    return-void
.end method

.method public endAnimation(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->endAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v2

    :cond_2
    return-object v0
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    :cond_2
    return-object v0

    :cond_3
    return-object v5
.end method

.method public abstract generateDefaultLayoutParams()Lcom/android/internal/widget/RecyclerView$LayoutParams;
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/android/internal/widget/RecyclerView$LayoutParams;
    .locals 1

    new-instance v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/RecyclerView$LayoutParams;
    .locals 1

    instance-of v0, p1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    check-cast p1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutParams;-><init>(Lcom/android/internal/widget/RecyclerView$LayoutParams;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getBottomDecorationHeight(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClipToPadding()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getColumnCountForAccessibility(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-nez v1, :cond_1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    :cond_2
    return v0
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/internal/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getDecoratedLeft(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedMeasuredHeight(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v0, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedMeasuredWidth(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v0, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedRight(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedTop(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return-object v2

    :cond_2
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mHeight:I

    return v0
.end method

.method public getHeightMode()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mHeightMode:I

    return v0
.end method

.method public getItemCount()I
    .locals 2

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getAdapter()Lcom/android/internal/widget/RecyclerView$Adapter;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    :goto_1
    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getItemViewType(Landroid/view/View;)I
    .locals 1

    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutDirection()I

    move-result v0

    return v0
.end method

.method public getLeftDecorationWidth(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaddingEnd()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getPaddingEnd()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaddingLeft()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaddingRight()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaddingStart()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getPaddingStart()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaddingTop()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPosition(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    return v0
.end method

.method public getRightDecorationWidth(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getRowCountForAccessibility(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-nez v1, :cond_1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    :cond_2
    return v0
.end method

.method public getSelectionModeForAccessibility(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTopDecorationHeight(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 8

    const/4 v5, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v1, v3, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    invoke-virtual {p3, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v3, Lcom/android/internal/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    iget v4, v2, Landroid/graphics/RectF;->top:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v2, Landroid/graphics/RectF;->right:F

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-virtual {p3, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p3, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p3, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mWidth:I

    return v0
.end method

.method public getWidthMode()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mWidthMode:I

    return v0
.end method

.method hasFlexibleChildInBothOrientations()Z
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v4, :cond_0

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v4, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v5
.end method

.method public hasFocus()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->hasFocus()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ignoreView(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "View should be fully attached to be ignored"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ViewInfoStore;->removeViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public isAttachedToWindow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    return v0
.end method

.method public isAutoMeasureEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    return v0
.end method

.method public isFocused()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->isFocused()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isItemPrefetchEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    return v0
.end method

.method public isLayoutHierarchical(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMeasurementCacheEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrolling()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public layoutDecorated(Landroid/view/View;IIII)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v0, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int v3, p4, v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v4, p5, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v0, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p2

    iget v3, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p3

    iget v4, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int v4, p4, v4

    iget v5, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v5, p5, v5

    iget v6, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public measureChild(Landroid/view/View;II)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    add-int/2addr p2, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    add-int/2addr p3, v4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, p2

    iget v7, v2, Lcom/android/internal/widget/RecyclerView$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, p3

    iget v7, v2, Lcom/android/internal/widget/RecyclerView$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILcom/android/internal/widget/RecyclerView$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v3, v0}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    add-int/2addr p2, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    add-int/2addr p3, v4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v2, Lcom/android/internal/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    iget v7, v2, Lcom/android/internal/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    add-int/2addr v6, p2

    iget v7, v2, Lcom/android/internal/widget/RecyclerView$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v2, Lcom/android/internal/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    iget v7, v2, Lcom/android/internal/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    add-int/2addr v6, p3

    iget v7, v2, Lcom/android/internal/widget/RecyclerView$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILcom/android/internal/widget/RecyclerView$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v3, v0}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method

.method public moveView(II)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot move a child from non-existing index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->offsetChildrenHorizontal(I)V

    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->offsetChildrenVertical(I)V

    :cond_0
    return-void
.end method

.method public onAdapterChanged(Lcom/android/internal/widget/RecyclerView$Adapter;Lcom/android/internal/widget/RecyclerView$Adapter;)V
    .locals 0

    return-void
.end method

.method public onAddFocusables(Lcom/android/internal/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/RecyclerView;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow(Lcom/android/internal/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$Recycler;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;)V

    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    :cond_2
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    :cond_3
    return-void
.end method

.method onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfo(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    const/4 v3, -0x1

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/16 v1, 0x2000

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/16 v1, 0x1000

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getRowCountForAccessibility(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v1

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->isLayoutHierarchical(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Z

    move-result v3

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getSelectionModeForAccessibility(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method

.method onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    :goto_1
    move v3, v1

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v6

    invoke-virtual {p4, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onItemsAdded(Lcom/android/internal/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method

.method public onItemsChanged(Lcom/android/internal/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public onItemsMoved(Lcom/android/internal/widget/RecyclerView;III)V
    .locals 0

    return-void
.end method

.method public onItemsRemoved(Lcom/android/internal/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method

.method public onItemsUpdated(Lcom/android/internal/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method

.method public onItemsUpdated(Lcom/android/internal/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onItemsUpdated(Lcom/android/internal/widget/RecyclerView;II)V

    return-void
.end method

.method public onLayoutChildren(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)V
    .locals 2

    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLayoutCompleted(Lcom/android/internal/widget/RecyclerView$State;)V
    .locals 0

    return-void
.end method

.method public onMeasure(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;II)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p3, p4}, Lcom/android/internal/widget/RecyclerView;->defaultOnMeasure(II)V

    return-void
.end method

.method public onRequestChildFocus(Lcom/android/internal/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->isSmoothScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRequestChildFocus(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Lcom/android/internal/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->performAccessibilityAction(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;ILandroid/os/Bundle;)Z
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-nez v2, :cond_0

    return v4

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    sparse-switch p3, :sswitch_data_0

    :cond_1
    :goto_0
    if-nez v1, :cond_4

    if-nez v0, :cond_4

    return v4

    :sswitch_0
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v2, v6}, Lcom/android/internal/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    neg-int v1, v2

    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v2, v6}, Lcom/android/internal/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    neg-int v0, v2

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v3

    sub-int v1, v2, v3

    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v3

    sub-int v0, v2, v3

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/widget/RecyclerView;->scrollBy(II)V

    return v5

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->performAccessibilityActionForItem(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityActionForItem(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public postOnAnimation(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->removeViewAt(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeAndRecycleAllViews(Lcom/android/internal/widget/RecyclerView$Recycler;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILcom/android/internal/widget/RecyclerView$Recycler;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method removeAndRecycleScrapInt(Lcom/android/internal/widget/RecyclerView$Recycler;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->getScrapCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_3

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->getScrapViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v5}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v4, v1, v5}, Lcom/android/internal/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->endAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->clearScrap()V

    if-lez v2, :cond_4

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    :cond_4
    return-void
.end method

.method public removeAndRecycleView(Landroid/view/View;Lcom/android/internal/widget/RecyclerView$Recycler;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeView(Landroid/view/View;)V

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    return-void
.end method

.method public removeAndRecycleViewAt(ILcom/android/internal/widget/RecyclerView$Recycler;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    invoke-virtual {p2, v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeDetachedView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ChildHelper;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ChildHelper;->removeViewAt(I)V

    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Lcom/android/internal/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v16

    sub-int v13, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v16

    sub-int v11, v15, v16

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v15

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollX()I

    move-result v16

    sub-int v2, v15, v16

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v15

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollY()I

    move-result v16

    sub-int v4, v15, v16

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v15

    add-int v3, v2, v15

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v15

    add-int v1, v4, v15

    sub-int v15, v2, v12

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v8

    sub-int v15, v4, v14

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    sub-int v15, v3, v13

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v9

    sub-int v15, v1, v11

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    if-eqz v9, :cond_1

    move v5, v9

    :goto_0
    if-eqz v10, :cond_4

    move v6, v10

    :goto_1
    if-nez v5, :cond_0

    if-eqz v6, :cond_6

    :cond_0
    if-eqz p4, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/widget/RecyclerView;->scrollBy(II)V

    :goto_2
    const/4 v15, 0x1

    return v15

    :cond_1
    sub-int v15, v3, v13

    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    :cond_2
    if-eqz v8, :cond_3

    move v5, v8

    goto :goto_0

    :cond_3
    sub-int v15, v2, v12

    invoke-static {v15, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_0

    :cond_4
    sub-int v15, v4, v14

    invoke-static {v15, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_1

    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_2

    :cond_6
    const/4 v15, 0x0

    return v15
.end method

.method public requestLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public requestSimpleAnimationsInNextLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    return-void
.end method

.method public scrollHorizontallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 0

    return-void
.end method

.method public scrollVerticallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAutoMeasureEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    return-void
.end method

.method setExactMeasureSpecsFrom(Lcom/android/internal/widget/RecyclerView;)V
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    return-void
.end method

.method public final setItemPrefetchEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    :cond_0
    return-void
.end method

.method setMeasureSpecs(II)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mWidth:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mWidthMode:I

    iget v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mWidthMode:I

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mWidth:I

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mHeight:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mHeightMode:I

    iget v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mHeightMode:I

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/internal/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mHeight:I

    :cond_1
    return-void
.end method

.method public setMeasuredDimension(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView;->-wrap3(Lcom/android/internal/widget/RecyclerView;II)V

    return-void
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    add-int v2, v4, v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    add-int v1, v4, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getMinimumWidth()I

    move-result v4

    invoke-static {p2, v2, v4}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getMinimumHeight()I

    move-result v4

    invoke-static {p3, v1, v4}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setMeasuredDimension(II)V

    return-void
.end method

.method setMeasuredDimensionFromChildren(II)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v8, p1, p2}, Lcom/android/internal/widget/RecyclerView;->defaultOnMeasure(II)V

    return-void

    :cond_0
    const v6, 0x7fffffff

    const v7, 0x7fffffff

    const/high16 v4, -0x80000000

    const/high16 v5, -0x80000000

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v8, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v8, v0, Landroid/graphics/Rect;->left:I

    if-ge v8, v6, :cond_1

    iget v6, v0, Landroid/graphics/Rect;->left:I

    :cond_1
    iget v8, v0, Landroid/graphics/Rect;->right:I

    if-le v8, v4, :cond_2

    iget v4, v0, Landroid/graphics/Rect;->right:I

    :cond_2
    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-ge v8, v7, :cond_3

    iget v7, v0, Landroid/graphics/Rect;->top:I

    :cond_3
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    if-le v8, v5, :cond_4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v8, v8, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v6, v7, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v8, v8, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v8, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    return-void
.end method

.method public setMeasurementCacheEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    return-void
.end method

.method setRecyclerView(Lcom/android/internal/widget/RecyclerView;)V
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    iput v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mWidth:I

    iput v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mHeight:I

    :goto_0
    iput v2, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mWidthMode:I

    iput v2, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mHeightMode:I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mWidth:I

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mHeight:I

    goto :goto_0
.end method

.method shouldMeasureChild(Landroid/view/View;IILcom/android/internal/widget/RecyclerView$LayoutParams;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Lcom/android/internal/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v0, p2, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p4, Lcom/android/internal/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {v0, p3, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method shouldMeasureTwice()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method shouldReMeasureChild(Landroid/view/View;IILcom/android/internal/widget/RecyclerView$LayoutParams;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p4, Lcom/android/internal/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v0, p2, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p4, Lcom/android/internal/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {v0, p3, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public smoothScrollToPosition(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;I)V
    .locals 2

    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "You must override smoothScrollToPosition to support smooth scrolling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startSmoothScroll(Lcom/android/internal/widget/RecyclerView$SmoothScroller;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->stop()V

    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->start(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public stopIgnoringView(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->stopIgnoring()V

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->resetInternal()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    return-void
.end method

.method stopSmoothScroller()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->stop()V

    :cond_0
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
