.class Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Span"
.end annotation


# instance fields
.field mCachedEnd:I

.field mCachedStart:I

.field mDeletedSize:I

.field final mIndex:I

.field mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;


# virtual methods
.method appendToSpan(Landroid/view/View;)V
    .locals 4

    const/high16 v3, -0x80000000

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    iput-object p0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    :cond_2
    return-void
.end method

.method cacheReferenceLineAndClear(ZI)V
    .locals 3

    const/high16 v2, -0x80000000

    if-eqz p1, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->clear()V

    if-ne v0, v2, :cond_1

    return-void

    :cond_0
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    if-ge v0, v1, :cond_3

    :cond_2
    return-void

    :cond_3
    if-nez p1, :cond_4

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    if-gt v0, v1, :cond_2

    :cond_4
    if-eq p2, v2, :cond_5

    add-int/2addr v0, p2

    :cond_5
    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    return-void
.end method

.method calculateCachedEnd()V
    .locals 5

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    iget-boolean v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v3, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->getGapForSpan(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    :cond_0
    return-void
.end method

.method calculateCachedStart()V
    .locals 5

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iget-boolean v3, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->getGapForSpan(I)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    :cond_0
    return-void
.end method

.method clear()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->invalidateCache()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    return-void
.end method

.method public findFirstPartiallyVisibleItemPosition()I
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyVisibleChild(IIZ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyVisibleChild(IIZ)I

    move-result v0

    goto :goto_0
.end method

.method public findLastPartiallyVisibleItemPosition()I
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyVisibleChild(IIZ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyVisibleChild(IIZ)I

    move-result v0

    goto :goto_0
.end method

.method findOnePartiallyOrCompletelyVisibleChild(IIZZZ)I
    .locals 10

    iget-object v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v9}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    iget-object v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v9}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    if-le p2, p1, :cond_0

    const/4 v7, 0x1

    :goto_0
    move v6, p1

    :goto_1
    if-eq v6, p2, :cond_b

    iget-object v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v9, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v9, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    if-eqz p5, :cond_2

    if-gt v3, v5, :cond_1

    const/4 v4, 0x1

    :goto_2
    if-eqz p5, :cond_5

    if-lt v1, v8, :cond_4

    const/4 v2, 0x1

    :goto_3
    if-eqz v4, :cond_a

    if-eqz v2, :cond_a

    if-eqz p3, :cond_7

    if-eqz p4, :cond_7

    if-lt v3, v8, :cond_a

    if-gt v1, v5, :cond_a

    iget-object v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v9, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v9

    return v9

    :cond_0
    const/4 v7, -0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    if-ge v3, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    if-le v1, v8, :cond_6

    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    :cond_7
    if-eqz p4, :cond_8

    iget-object v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v9, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v9

    return v9

    :cond_8
    if-lt v3, v8, :cond_9

    if-le v1, v5, :cond_a

    :cond_9
    iget-object v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v9, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v9

    return v9

    :cond_a
    add-int/2addr v6, v7

    goto :goto_1

    :cond_b
    const/4 v9, -0x1

    return v9
.end method

.method findOnePartiallyVisibleChild(IIZ)I
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyOrCompletelyVisibleChild(IIZZZ)I

    move-result v0

    return v0
.end method

.method public getDeletedSize()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    return v0
.end method

.method getEndLine()I
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->calculateCachedEnd()V

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return v0
.end method

.method getEndLine(I)I
    .locals 3

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return v1

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return p1

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->calculateCachedEnd()V

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return v1
.end method

.method public getFocusableViewAfter(II)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    const/4 v4, -0x1

    if-ne p2, v4, :cond_3

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-gt v4, p1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-ge v4, p1, :cond_0

    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_1
    if-ltz v1, :cond_0

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-ge v4, p1, :cond_0

    :cond_4
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-le v4, p1, :cond_0

    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    return-object v0
.end method

.method getStartLine()I
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->calculateCachedStart()V

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    return v0
.end method

.method getStartLine(I)I
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return p1

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->calculateCachedStart()V

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    return v0
.end method

.method invalidateCache()V
    .locals 1

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return-void
.end method

.method onOffset(I)V
    .locals 2

    const/high16 v1, -0x80000000

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    :cond_1
    return-void
.end method

.method popEnd()V
    .locals 6

    const/high16 v5, -0x80000000

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    const/4 v3, 0x0

    iput-object v3, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iput v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    :cond_2
    iput v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return-void
.end method

.method popStart()V
    .locals 5

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    iput v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    :cond_2
    iput v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    return-void
.end method

.method prependToSpan(Landroid/view/View;)V
    .locals 4

    const/high16 v3, -0x80000000

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    iput-object p0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    :cond_2
    return-void
.end method

.method setLine(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return-void
.end method
