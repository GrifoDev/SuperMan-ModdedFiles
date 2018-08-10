.class public Landroid/support/design/internal/BaselineLayout;
.super Landroid/view/ViewGroup;
.source "BaselineLayout.java"


# instance fields
.field private mBaseline:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/internal/BaselineLayout;->mBaseline:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/internal/BaselineLayout;->mBaseline:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/internal/BaselineLayout;->mBaseline:I

    return-void
.end method


# virtual methods
.method public getBaseline()I
    .locals 1

    iget v0, p0, Landroid/support/design/internal/BaselineLayout;->mBaseline:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 13

    invoke-virtual {p0}, Landroid/support/design/internal/BaselineLayout;->getChildCount()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/design/internal/BaselineLayout;->getPaddingLeft()I

    move-result v7

    sub-int v11, p4, p2

    invoke-virtual {p0}, Landroid/support/design/internal/BaselineLayout;->getPaddingRight()I

    move-result v12

    sub-int v8, v11, v12

    sub-int v6, v8, v7

    invoke-virtual {p0}, Landroid/support/design/internal/BaselineLayout;->getPaddingTop()I

    move-result v9

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    invoke-virtual {p0, v5}, Landroid/support/design/internal/BaselineLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_0

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int v11, v6, v10

    div-int/lit8 v11, v11, 0x2

    add-int v1, v7, v11

    iget v11, p0, Landroid/support/design/internal/BaselineLayout;->mBaseline:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1

    iget v11, p0, Landroid/support/design/internal/BaselineLayout;->mBaseline:I

    add-int/2addr v11, v9

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v12

    sub-int v2, v11, v12

    :goto_2
    add-int v11, v1, v10

    add-int v12, v2, v4

    invoke-virtual {v0, v1, v2, v11, v12}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_1
    move v2, v9

    goto :goto_2

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    const/4 v11, -0x1

    invoke-virtual {p0}, Landroid/support/design/internal/BaselineLayout;->getChildCount()I

    move-result v3

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    invoke-virtual {p0, v4}, Landroid/support/design/internal/BaselineLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, p1, p2}, Landroid/support/design/internal/BaselineLayout;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v0

    if-eq v0, v11, :cond_1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v9, v0

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v9

    invoke-static {v2, v9}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    goto :goto_1

    :cond_2
    if-eq v5, v11, :cond_3

    invoke-virtual {p0}, Landroid/support/design/internal/BaselineLayout;->getPaddingBottom()I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int v9, v5, v6

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v5, p0, Landroid/support/design/internal/BaselineLayout;->mBaseline:I

    :cond_3
    invoke-virtual {p0}, Landroid/support/design/internal/BaselineLayout;->getSuggestedMinimumHeight()I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0}, Landroid/support/design/internal/BaselineLayout;->getSuggestedMinimumWidth()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8, p1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v9

    shl-int/lit8 v10, v2, 0x10

    invoke-static {v7, p2, v10}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v10

    invoke-virtual {p0, v9, v10}, Landroid/support/design/internal/BaselineLayout;->setMeasuredDimension(II)V

    return-void
.end method
