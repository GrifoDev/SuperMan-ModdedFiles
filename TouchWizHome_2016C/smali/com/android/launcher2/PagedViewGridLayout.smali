.class public Lcom/android/launcher2/PagedViewGridLayout;
.super Landroid/widget/GridLayout;
.source "PagedViewGridLayout.java"

# interfaces
.implements Lcom/android/launcher2/Page;


# instance fields
.field private mCellCountX:I

.field private mCellCountY:I

.field private mPageType:I

.field private mViewRecycler:Lcom/android/launcher2/ViewRecycler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedViewGridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Lcom/android/launcher2/PagedViewGridLayout;->mPageType:I

    iput p2, p0, Lcom/android/launcher2/PagedViewGridLayout;->mCellCountX:I

    iput p3, p0, Lcom/android/launcher2/PagedViewGridLayout;->mCellCountY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/PagedViewGridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher2/PagedViewGridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/PagedViewGridLayout;->mPageType:I

    iput v1, p0, Lcom/android/launcher2/PagedViewGridLayout;->mCellCountX:I

    iput v1, p0, Lcom/android/launcher2/PagedViewGridLayout;->mCellCountY:I

    return-void
.end method


# virtual methods
.method public disableHardwareLayers()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewGridLayout;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedViewGridLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public enableHardwareLayers()V
    .locals 2

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewGridLayout;->getLayerType()I

    move-result v0

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/PagedViewGridLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method getCellCountX()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PagedViewGridLayout;->mCellCountX:I

    return v0
.end method

.method getCellCountY()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PagedViewGridLayout;->mCellCountY:I

    return v0
.end method

.method public getChildOnPageAt(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageItemCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageType()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PagedViewGridLayout;->mPageType:I

    return v0
.end method

.method public indexOfChildOnPage(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewGridLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-super {p0, p1}, Landroid/widget/GridLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewGridLayout;->getPageItemCount()I

    move-result v2

    if-lez v2, :cond_1

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedViewGridLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    int-to-float v5, v0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    :cond_0
    const/4 v3, 0x1

    :cond_1
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public removeAllViews()V
    .locals 7

    iget-object v4, p0, Lcom/android/launcher2/PagedViewGridLayout;->mViewRecycler:Lcom/android/launcher2/ViewRecycler;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v0

    new-array v1, v0, [Landroid/view/ViewGroup;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/widget/GridLayout;->removeAllViews()V

    array-length v5, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v3, v1, v4

    iget-object v6, p0, Lcom/android/launcher2/PagedViewGridLayout;->mViewRecycler:Lcom/android/launcher2/ViewRecycler;

    invoke-interface {v6, v3}, Lcom/android/launcher2/ViewRecycler;->recycle(Landroid/view/ViewGroup;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-super {p0}, Landroid/widget/GridLayout;->removeAllViews()V

    :cond_2
    return-void
.end method

.method public removeAllViewsOnPage()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewGridLayout;->removeAllViews()V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewGridLayout;->disableHardwareLayers()V

    return-void
.end method

.method public removeViewOnPageAt(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/PagedViewGridLayout;->mViewRecycler:Lcom/android/launcher2/ViewRecycler;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewGridLayout;->removeViewAt(I)V

    iget-object v1, p0, Lcom/android/launcher2/PagedViewGridLayout;->mViewRecycler:Lcom/android/launcher2/ViewRecycler;

    invoke-interface {v1, v0}, Lcom/android/launcher2/ViewRecycler;->recycle(Landroid/view/ViewGroup;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewGridLayout;->removeViewAt(I)V

    goto :goto_0
.end method

.method public setAccessibilityEnabled(Z)V
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewGridLayout;->setImportantForAccessibility(I)V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :try_start_0
    instance-of v5, v4, Lcom/android/launcher2/PagedViewWidget;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/android/launcher2/PagedViewWidget;

    invoke-virtual {v4, v0}, Lcom/android/launcher2/PagedViewWidget;->setImportantForAccessibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public setPageType(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/PagedViewGridLayout;->mPageType:I

    return-void
.end method

.method public setViewRecycler(Lcom/android/launcher2/ViewRecycler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/PagedViewGridLayout;->mViewRecycler:Lcom/android/launcher2/ViewRecycler;

    return-void
.end method
