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

.method public setNumColumns(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/VerticalGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setNumRows(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestLayout()V

    return-void
.end method
