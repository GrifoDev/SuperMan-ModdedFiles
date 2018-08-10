.class public Landroid/support/v17/leanback/widget/ThumbsBar;
.super Landroid/widget/LinearLayout;
.source "ThumbsBar.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field final mBitmaps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mHeroThumbHeight:I

.field mHeroThumbWidth:I

.field mMeasuredMargin:I

.field mMinimalMargin:I

.field mNumOfThumbs:I

.field mThumbHeight:I

.field mThumbWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/ThumbsBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/16 v2, 0xf0

    const/16 v1, 0xa0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x10

    iput v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mMinimalMargin:I

    iput v1, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbWidth:I

    iput v1, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbHeight:I

    iput v2, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mHeroThumbWidth:I

    iput v2, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mHeroThumbHeight:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mBitmaps:Landroid/util/SparseArray;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ThumbsBar;->setNumberOfThumbs(I)V

    return-void
.end method


# virtual methods
.method public clearThumbBitmaps()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/ThumbsBar;->setThumbBitmap(ILandroid/graphics/Bitmap;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mBitmaps:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method protected createThumbView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getHeroIndex()I
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getThumbBitmap(I)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mBitmaps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getHeroIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v3, v7, v8

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v4, v7, v8

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getPaddingTop()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v5, v3, v7, v4, v8}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getPaddingTop()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v1, v7, v8

    add-int/lit8 v6, v2, -0x1

    :goto_0
    if-ltz v6, :cond_0

    iget v7, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mMeasuredMargin:I

    sub-int/2addr v3, v7

    invoke-virtual {p0, v6}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v3, v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v1, v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v1

    invoke-virtual {v0, v7, v8, v3, v9}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v3, v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v6, v2, 0x1

    :goto_1
    iget v7, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    if-ge v6, v7, :cond_1

    iget v7, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mMeasuredMargin:I

    add-int/2addr v4, v7

    invoke-virtual {p0, v6}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v1, v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v1

    invoke-virtual {v0, v4, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getMeasuredWidth()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    iget v3, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mHeroThumbWidth:I

    sub-int v3, v1, v3

    iget v4, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbWidth:I

    iget v5, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v4, v5

    sub-int v0, v3, v4

    iget v3, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mMinimalMargin:I

    iget v4, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    if-ge v0, v3, :cond_0

    iget v3, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/ThumbsBar;->setNumberOfThumbs(I)V

    goto :goto_0

    :cond_0
    iget v3, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    if-lez v3, :cond_1

    iget v2, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    add-int/lit8 v2, v2, -0x1

    div-int v2, v0, v2

    :cond_1
    iput v2, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mMeasuredMargin:I

    return-void
.end method

.method public setNumberOfThumbs(I)V
    .locals 7

    if-gez p1, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    :cond_0
    and-int/lit8 v5, p1, 0x1

    if-nez v5, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    iput p1, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v5

    iget v6, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    if-le v5, v6, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/ThumbsBar;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v5

    iget v6, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    if-ge v5, v6, :cond_3

    invoke-virtual {p0, p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->createThumbView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbWidth:I

    iget v6, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbHeight:I

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v3}, Landroid/support/v17/leanback/widget/ThumbsBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getHeroIndex()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_5

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    if-ne v1, v2, :cond_4

    iget v5, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mHeroThumbWidth:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v5, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mHeroThumbHeight:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget v5, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbWidth:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v5, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbHeight:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_3

    :cond_5
    return-void
.end method

.method public setThumbBitmap(ILandroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mBitmaps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
