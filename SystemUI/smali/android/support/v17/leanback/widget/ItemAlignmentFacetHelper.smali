.class Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;
.super Ljava/lang/Object;
.source "ItemAlignmentFacetHelper.java"


# static fields
.field private static sRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAlignmentPosition(Landroid/view/View;Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;I)I
    .locals 8

    const/4 v7, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    move-object v2, p0

    iget v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mViewId:I

    if-eqz v3, :cond_0

    iget v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mViewId:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, p0

    :cond_0
    iget v0, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffset:I

    if-nez p2, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    if-ne v2, p0, :cond_4

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalWidth(Landroid/view/View;)I

    move-result v3

    :goto_0
    sub-int v0, v3, v0

    iget-boolean v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetWithPadding:Z

    if-eqz v3, :cond_1

    iget v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    :cond_1
    :goto_1
    iget v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_2

    if-ne v2, p0, :cond_6

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalWidth(Landroid/view/View;)I

    move-result v3

    :goto_2
    int-to-float v3, v3

    iget v4, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    float-to-int v3, v3

    sub-int/2addr v0, v3

    :cond_2
    if-eq p0, v2, :cond_3

    sget-object v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iput v0, v3, Landroid/graphics/Rect;->right:I

    check-cast p0, Landroid/view/ViewGroup;

    sget-object v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    sget-object v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalRightInset()I

    move-result v4

    add-int v0, v3, v4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_0

    :cond_5
    iget v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_2

    :cond_7
    iget-boolean v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetWithPadding:Z

    if-eqz v3, :cond_8

    iget v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_a

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    :cond_8
    :goto_4
    iget v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_9

    if-ne v2, p0, :cond_b

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalWidth(Landroid/view/View;)I

    move-result v3

    :goto_5
    int-to-float v3, v3

    iget v4, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    float-to-int v3, v3

    add-int/2addr v0, v3

    :cond_9
    if-eq p0, v2, :cond_3

    sget-object v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iput v0, v3, Landroid/graphics/Rect;->left:I

    check-cast p0, Landroid/view/ViewGroup;

    sget-object v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    sget-object v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalLeftInset()I

    move-result v4

    sub-int v0, v3, v4

    goto :goto_3

    :cond_a
    iget v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    goto :goto_4

    :cond_b
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_5

    :cond_c
    iget-boolean v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetWithPadding:Z

    if-eqz v3, :cond_d

    iget v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_10

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v0, v3

    :cond_d
    :goto_6
    iget v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_e

    if-ne v2, p0, :cond_11

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalHeight(Landroid/view/View;)I

    move-result v3

    :goto_7
    int-to-float v3, v3

    iget v4, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    float-to-int v3, v3

    add-int/2addr v0, v3

    :cond_e
    if-eq p0, v2, :cond_f

    sget-object v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iput v0, v3, Landroid/graphics/Rect;->top:I

    check-cast p0, Landroid/view/ViewGroup;

    sget-object v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    sget-object v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalTopInset()I

    move-result v4

    sub-int v0, v3, v4

    :cond_f
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->isAlignedToTextViewBaseLine()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v3

    add-int/2addr v0, v3

    goto/16 :goto_3

    :cond_10
    iget v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_d

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    goto :goto_6

    :cond_11
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    goto :goto_7
.end method
