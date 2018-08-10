.class public final Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;
.super Landroid/support/v17/leanback/widget/Parallax$IntProperty;
.source "RecyclerViewParallax.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/RecyclerViewParallax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChildPositionProperty"
.end annotation


# instance fields
.field mAdapterPosition:I

.field mFraction:F

.field mOffset:I

.field mViewId:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/Parallax$IntProperty;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public adapterPosition(I)Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mAdapterPosition:I

    return-object p0
.end method

.method public fraction(F)Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mFraction:F

    return-object p0
.end method

.method updateValue(Landroid/support/v17/leanback/widget/RecyclerViewParallax;)V
    .locals 13

    const v11, 0x7fffffff

    const/4 v10, 0x0

    iget-object v3, p1, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v3, :cond_1

    const/4 v8, 0x0

    :goto_0
    if-nez v8, :cond_4

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v9

    if-nez v9, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->getIndex()I

    move-result v9

    invoke-virtual {p1, v9, v11}, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->setIntPropertyValue(II)V

    return-void

    :cond_1
    iget v9, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mAdapterPosition:I

    invoke-virtual {v3, v9}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v8

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    iget v9, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mAdapterPosition:I

    if-ge v1, v9, :cond_3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->getIndex()I

    move-result v9

    invoke-virtual {p1, v9, v11}, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->setIntPropertyValue(II)V

    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->getIndex()I

    move-result v9

    const/high16 v10, -0x80000000

    invoke-virtual {p1, v9, v10}, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->setIntPropertyValue(II)V

    goto :goto_1

    :cond_4
    iget-object v9, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v11, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mViewId:I

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_5

    return-void

    :cond_5
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-direct {v2, v10, v10, v9, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4, v2}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-eq v4, v3, :cond_8

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-ne v9, v3, :cond_7

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->isAnimating()Z

    move-result v9

    :goto_3
    if-nez v9, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v9

    add-float/2addr v5, v9

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v9

    add-float/2addr v6, v9

    :cond_6
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    goto :goto_2

    :cond_7
    move v9, v10

    goto :goto_3

    :cond_8
    float-to-int v9, v5

    float-to-int v10, v6

    invoke-virtual {v2, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    iget-boolean v9, p1, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mIsVertical:Z

    if-eqz v9, :cond_9

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->getIndex()I

    move-result v9

    iget v10, v2, Landroid/graphics/Rect;->top:I

    iget v11, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mOffset:I

    add-int/2addr v10, v11

    iget v11, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mFraction:F

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    add-int/2addr v10, v11

    invoke-virtual {p1, v9, v10}, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->setIntPropertyValue(II)V

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->getIndex()I

    move-result v9

    iget v10, v2, Landroid/graphics/Rect;->left:I

    iget v11, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mOffset:I

    add-int/2addr v10, v11

    iget v11, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mFraction:F

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    add-int/2addr v10, v11

    invoke-virtual {p1, v9, v10}, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->setIntPropertyValue(II)V

    goto/16 :goto_1
.end method

.method public viewId(I)Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mViewId:I

    return-object p0
.end method
