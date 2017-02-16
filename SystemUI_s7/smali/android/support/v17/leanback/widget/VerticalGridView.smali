.class public Landroid/support/v17/leanback/widget/VerticalGridView;
.super Landroid/support/v17/leanback/widget/BaseGridView;
.source "VerticalGridView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/BaseGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/VerticalGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setOrientation(I)V

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/VerticalGridView;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic focusSearch(I)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getChildDrawingOrder(II)I
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildDrawingOrder(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSelectedPosition()I
    .locals 1

    invoke-super {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->getSelectedPosition()I

    move-result v0

    return v0
.end method

.method public bridge synthetic hasOverlappingRendering()Z
    .locals 1

    invoke-super {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->hasOverlappingRendering()Z

    move-result v0

    return v0
.end method

.method protected initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/VerticalGridView;->initBaseGridViewAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v1, Landroid/support/v17/leanback/R$styleable;->lbVerticalGridView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setColumnWidth(Landroid/content/res/TypedArray;)V

    sget v1, Landroid/support/v17/leanback/R$styleable;->lbVerticalGridView_numberOfColumns:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setNumColumns(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public bridge synthetic onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/BaseGridView;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onRtlPropertiesChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->onRtlPropertiesChanged(I)V

    return-void
.end method

.method public setColumnWidth(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/VerticalGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setRowHeight(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestLayout()V

    return-void
.end method

.method setColumnWidth(Landroid/content/res/TypedArray;)V
    .locals 4

    sget v2, Landroid/support/v17/leanback/R$styleable;->lbVerticalGridView_columnWidth:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    if-eqz v1, :cond_0

    sget v2, Landroid/support/v17/leanback/R$styleable;->lbVerticalGridView_columnWidth:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setColumnWidth(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setGravity(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->setGravity(I)V

    return-void
.end method

.method public setNumColumns(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/VerticalGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setNumRows(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestLayout()V

    return-void
.end method

.method public bridge synthetic setOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->setOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V

    return-void
.end method

.method public bridge synthetic setRecyclerListener(Landroid/support/v7/widget/RecyclerView$RecyclerListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->setRecyclerListener(Landroid/support/v7/widget/RecyclerView$RecyclerListener;)V

    return-void
.end method

.method public bridge synthetic setSelectedPosition(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    return-void
.end method

.method public bridge synthetic setSelectedPositionSmooth(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->setSelectedPositionSmooth(I)V

    return-void
.end method

.method public bridge synthetic setWindowAlignment(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->setWindowAlignment(I)V

    return-void
.end method
