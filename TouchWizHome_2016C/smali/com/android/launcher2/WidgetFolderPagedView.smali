.class public Lcom/android/launcher2/WidgetFolderPagedView;
.super Lcom/android/launcher2/PagedViewWithDraggableItems;
.source "WidgetFolderPagedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/WidgetFolderPagedView$WidgetViewBuilder;
    }
.end annotation


# static fields
.field private static final PAGE_BG_ALPHA_VALUE:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field private static final TRANSITION_BOUNCE_MIN_SCALE:F = 0.98f

.field private static final TRANSITION_MIN_SCALE:F = 0.99f

.field private static mSineIO70Interpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActionUpOnScroll:Z

.field private mCurrentOrientation:I

.field private mMaxItemsPerPage:I

.field private mPageCacheSize:I

.field private mRequestedOrientation:I

.field private mScaleFactor:F

.field private mWidgetFolderAvailableItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetViewBuilder:Lcom/android/launcher2/WidgetFolderPagedView$WidgetViewBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/launcher2/WidgetFolderPagedView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/WidgetFolderPagedView;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/launcher2/utils/interpolator/SineInOut70;

    invoke-direct {v0}, Lcom/android/launcher2/utils/interpolator/SineInOut70;-><init>()V

    sput-object v0, Lcom/android/launcher2/WidgetFolderPagedView;->mSineIO70Interpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/WidgetFolderPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/WidgetFolderPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/PagedViewWithDraggableItems;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mScaleFactor:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mActionUpOnScroll:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mPageCacheSize:I

    iput v1, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mCellCountX:I

    iput v1, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mCellCountY:I

    iget v0, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mCellCountX:I

    iget v1, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mCellCountY:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mMaxItemsPerPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mRequestedOrientation:I

    iput v0, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mCurrentOrientation:I

    const v0, 0x800033

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WidgetFolderPagedView;->setForegroundGravity(I)V

    return-void
.end method

.method private addWidgetItem(Lcom/android/launcher2/AvailableWidget;)V
    .locals 13

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderPagedView;->getItemCount()I

    move-result v8

    iget v10, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mMaxItemsPerPage:I

    div-int v7, v8, v10

    invoke-direct {p0, v7}, Lcom/android/launcher2/WidgetFolderPagedView;->getOrCreatePageForItem(I)Landroid/widget/GridLayout;

    move-result-object v5

    if-nez v5, :cond_1

    sget-object v10, Lcom/android/launcher2/WidgetFolderPagedView;->TAG:Ljava/lang/String;

    const-string v11, "addWidgetItem : page is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v10, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mWidgetViewBuilder:Lcom/android/launcher2/WidgetFolderPagedView$WidgetViewBuilder;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mWidgetViewBuilder:Lcom/android/launcher2/WidgetFolderPagedView$WidgetViewBuilder;

    invoke-interface {v10, p1}, Lcom/android/launcher2/WidgetFolderPagedView$WidgetViewBuilder;->buildView(Lcom/android/launcher2/AvailableWidget;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/PagedViewWidget;

    if-eqz v9, :cond_8

    iget v10, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mCellCountX:I

    rem-int v2, v8, v10

    iget v10, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mMaxItemsPerPage:I

    rem-int v10, v8, v10

    iget v12, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mCellCountX:I

    div-int v3, v10, v12

    new-instance v4, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v4}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    const v10, 0x800033

    invoke-virtual {v4, v10}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    invoke-static {}, Lcom/android/launcher2/Utilities;->isLayoutRtl()Z

    move-result v10

    if-eqz v10, :cond_5

    if-lez v2, :cond_4

    iget-object v10, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mWidgetViewBuilder:Lcom/android/launcher2/WidgetFolderPagedView$WidgetViewBuilder;

    invoke-interface {v10}, Lcom/android/launcher2/WidgetFolderPagedView$WidgetViewBuilder;->getCellGapX()I

    move-result v10

    :goto_1
    iput v10, v4, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    :goto_2
    if-lez v3, :cond_2

    iget-object v10, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mWidgetViewBuilder:Lcom/android/launcher2/WidgetFolderPagedView$WidgetViewBuilder;

    invoke-interface {v10}, Lcom/android/launcher2/WidgetFolderPagedView$WidgetViewBuilder;->getCellGapY()I

    move-result v11

    :cond_2
    iput v11, v4, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    const v10, 0x7f11001d

    invoke-virtual {v9, v10}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    sget-boolean v10, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    if-eqz v10, :cond_7

    const v10, 0x7f020074

    invoke-virtual {v6, v10}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_3
    invoke-virtual {v5, v9, v4}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v10, v8, 0x1

    iget v11, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mMaxItemsPerPage:I

    rem-int/2addr v10, v11

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mWidgetFolderAvailableItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v8, v10, :cond_0

    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/launcher2/WidgetFolderPagedView;->getPageIndex(Landroid/widget/GridLayout;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WidgetFolderPagedView;->getItemsAt(I)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v10, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mWidgetViewBuilder:Lcom/android/launcher2/WidgetFolderPagedView$WidgetViewBuilder;

    invoke-interface {v10, v1, v5, v0}, Lcom/android/launcher2/WidgetFolderPagedView$WidgetViewBuilder;->onPageAdded(Ljava/util/ArrayList;Landroid/widget/GridLayout;I)V

    goto :goto_0

    :cond_4
    move v10, v11

    goto :goto_1

    :cond_5
    if-lez v2, :cond_6

    iget-object v10, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mWidgetViewBuilder:Lcom/android/launcher2/WidgetFolderPagedView$WidgetViewBuilder;

    invoke-interface {v10}, Lcom/android/launcher2/WidgetFolderPagedView$WidgetViewBuilder;->getCellGapX()I

    move-result v10

    :goto_4
    iput v10, v4, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    :cond_6
    move v10, v11

    goto :goto_4

    :cond_7
    const v10, 0x7f020073

    invoke-virtual {v6, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_8
    sget-object v10, Lcom/android/launcher2/WidgetFolderPagedView;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addWidgetItem : build view fail - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private changeOrientationIfRequired(Landroid/content/res/Configuration;)V
    .locals 3

    sget-boolean v1, Lcom/android/launcher2/Launcher;->mChangeMobileKeyboard:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mCurrentOrientation:I

    iget v2, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mRequestedOrientation:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mRequestedOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderPagedView;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mRequestedOrientation:I

    iput v1, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mCurrentOrientation:I

    invoke-super {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderPagedView;->handleScrollOnOrientationChange()V

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0399

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mPageSpacingHint:I

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderPagedView;->syncPages()V

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderPagedView;->requestLayout()V

    goto :goto_0
.end method

.method private createPage()Landroid/widget/GridLayout;
    .locals 8

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f040050

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    iget v3, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mCellCountX:I

    invoke-virtual {v0, v3}, Landroid/widget/GridLayout;->setColumnCount(I)V

    iget-object v3, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mWidgetFolderAvailableItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-double v4, v3

    iget v3, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mCellCountX:I

    int-to-double v6, v3

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    iget v3, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mCellCountY:I

    if-le v2, v3, :cond_0

    iget v2, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mCellCountY:I

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/GridLayout;->setRowCount(I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WidgetFolderPagedView;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private getOrCreatePageForItem(I)Landroid/widget/GridLayout;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/WidgetFolderPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolderPagedView;->createPage()Landroid/widget/GridLayout;

    move-result-object v0

    goto :goto_0
.end method

.method private moveToCurrentPage(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderPagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/WidgetFolderPagedView;->setCurrentPageIfNotSnapping(I)V

    return-void
.end method


# virtual methods
.method public bind(Ljava/util/ArrayList;Lcom/android/launcher2/WidgetFolderPagedView$WidgetViewBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;",
            "Lcom/android/launcher2/WidgetFolderPagedView$WidgetViewBuilder;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mWidgetFolderAvailableItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mWidgetFolderAvailableItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mWidgetFolderAvailableItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mMaxItemsPerPage:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mPageCacheSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mPageCacheSize:I

    :cond_0
    iput-object p2, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mWidgetViewBuilder:Lcom/android/launcher2/WidgetFolderPagedView$WidgetViewBuilder;

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderPagedView;->setDataIsReady()V

    return-void
.end method

.method public clearAndRemoveAllViews()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderPagedView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WidgetFolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Page;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/WidgetFolderPagedView;->clearLayout(Lcom/android/launcher2/Page;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderPagedView;->removeAllViews()V

    return-void
.end method

.method protected freezeTransform(Landroid/view/View;F)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderPagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/WidgetFolderPagedView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/WidgetFolderPagedView;->indexToPage(I)I

    move-result v2

    if-ne v2, v0, :cond_3

    const/4 v2, 0x0

    cmpg-float v2, p2, v2

    if-gez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderPagedView;->getScrollX()I

    move-result v2

    int-to-float v1, v2

    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderPagedView;->isFastScrolling()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderPagedView;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mMaxScrollX:I

    sub-int/2addr v2, v3

    int-to-float v1, v2

    goto :goto_2
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderPagedView;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getItemCount()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderPagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    if-gez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/WidgetFolderPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridLayout;

    invoke-virtual {v1}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v1

    iget v2, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mMaxItemsPerPage:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getItemsAt(I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mMaxItemsPerPage:I

    mul-int v0, p1, v2

    :goto_0
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mMaxItemsPerPage:I

    mul-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mWidgetFolderAvailableItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mWidgetFolderAvailableItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getPageCacheSize()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mPageCacheSize:I

    return v0
.end method

.method public getPageIndex(Landroid/widget/GridLayout;)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/GridLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/WidgetFolderPagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mRequestedOrientation:I

    invoke-direct {p0, p1}, Lcom/android/launcher2/WidgetFolderPagedView;->changeOrientationIfRequired(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mScaleFactor:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mActionUpOnScroll:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mActionUpOnScroll:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher2/WidgetFolderPagedView;->changeOrientationIfRequired(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method protected overScroll(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/WidgetFolderPagedView;->acceleratedOverScroll(F)V

    return-void
.end method

.method public setGridSize(II)V
    .locals 2

    iput p1, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mCellCountX:I

    iput p2, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mCellCountY:I

    iget v0, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mCellCountX:I

    iget v1, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mCellCountY:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mMaxItemsPerPage:I

    return-void
.end method

.method public syncPageItems(IZ)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/WidgetFolderPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->setAlpha(F)V

    return-void
.end method

.method public syncPages()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderPagedView;->clearAndRemoveAllViews()V

    iget v2, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mCurrentOrientation:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mCurrentOrientation:I

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mCurrentOrientation:I

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mWidgetFolderAvailableItems:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mWidgetFolderAvailableItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AvailableWidget;

    invoke-direct {p0, v1}, Lcom/android/launcher2/WidgetFolderPagedView;->addWidgetItem(Lcom/android/launcher2/AvailableWidget;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderPagedView;->getComingPage()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher2/WidgetFolderPagedView;->moveToCurrentPage(I)V

    return-void
.end method

.method protected updatePageTransform(Landroid/view/View;F)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderPagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/WidgetFolderPagedView;->zoomoutTransform(Landroid/view/View;F)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/WidgetFolderPagedView;->freezeTransform(Landroid/view/View;F)V

    goto :goto_0
.end method

.method protected updatePageTransformZoomEffect(Landroid/view/View;F)V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    cmpl-float v4, p2, v7

    if-gtz v4, :cond_0

    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float v4, p2, v4

    if-ltz v4, :cond_0

    const v4, 0x3dcccccd    # 0.1f

    sget-object v5, Lcom/android/launcher2/WidgetFolderPagedView;->mSineIO70Interpolator:Landroid/view/animation/Interpolator;

    const/high16 v6, 0x41500000    # 13.0f

    div-float v6, p2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderPagedView;->maxOverScroll()F

    move-result v5

    div-float/2addr v4, v5

    sub-float v2, v7, v4

    const v4, 0x3f7ae148    # 0.98f

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderPagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/WidgetFolderPagedView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/WidgetFolderPagedView;->indexToPage(I)I

    move-result v4

    if-ne v4, v1, :cond_4

    const/4 v4, 0x0

    cmpg-float v4, p2, v4

    if-gez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderPagedView;->getScrollX()I

    move-result v4

    int-to-float v3, v4

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v8

    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v8

    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    div-float v4, p2, v8

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v7, v4

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    cmpg-float v4, v2, v7

    if-gez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderPagedView;->isFastScrolling()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    sub-float v4, v7, v2

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderPagedView;->getScrollX()I

    move-result v4

    iget v5, p0, Lcom/android/launcher2/WidgetFolderPagedView;->mMaxScrollX:I

    sub-int/2addr v4, v5

    int-to-float v3, v4

    goto :goto_2
.end method

.method protected zoomoutTransform(Landroid/view/View;F)V
    .locals 16

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/WidgetFolderPagedView;->getPageCount()I

    move-result v8

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/WidgetFolderPagedView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    sget-boolean v13, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v13, :cond_2

    sub-int v13, v8, v4

    add-int/lit8 v3, v13, -0x1

    :goto_1
    if-nez v3, :cond_3

    const/4 v13, 0x0

    cmpg-float v13, p2, v13

    if-gez v13, :cond_3

    const/4 v6, 0x1

    :goto_2
    add-int/lit8 v13, v8, -0x1

    if-ne v3, v13, :cond_4

    const/4 v13, 0x0

    cmpl-float v13, p2, v13

    if-lez v13, :cond_4

    const/4 v7, 0x1

    :goto_3
    const/high16 v13, -0x40800000    # -1.0f

    cmpg-float v13, p2, v13

    if-gez v13, :cond_5

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    :cond_5
    const/high16 v13, 0x3f800000    # 1.0f

    cmpg-float v13, p2, v13

    if-gtz v13, :cond_c

    if-nez v6, :cond_6

    if-eqz v7, :cond_7

    :cond_6
    invoke-virtual/range {p0 .. p2}, Lcom/android/launcher2/WidgetFolderPagedView;->updatePageTransformZoomEffect(Landroid/view/View;F)V

    goto :goto_0

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/WidgetFolderPagedView;->getCurrentPage()I

    move-result v13

    if-ne v13, v4, :cond_a

    const/4 v5, 0x1

    :goto_5
    const v13, 0x3f7d70a4    # 0.99f

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x41000000    # 8.0f

    div-float v15, p2, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    sub-float/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/WidgetFolderPagedView;->mActionUpOnScroll:Z

    if-nez v13, :cond_8

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/WidgetFolderPagedView;->mScaleFactor:F

    const v14, 0x3f7d70a4    # 0.99f

    invoke-static {v13, v14}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/WidgetFolderPagedView;->mScaleFactor:F

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/WidgetFolderPagedView;->mActionUpOnScroll:Z

    if-nez v13, :cond_9

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/WidgetFolderPagedView;->mScaleFactor:F

    :cond_9
    int-to-float v13, v9

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v11

    mul-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float v12, v13, v14

    int-to-float v13, v10

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v11

    mul-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float v2, v13, v14

    const/4 v13, 0x0

    cmpg-float v13, p2, v13

    if-gez v13, :cond_b

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v12, v13

    sub-float v13, v2, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setTranslationX(F)V

    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setScaleX(F)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_4

    :cond_a
    const/4 v5, 0x0

    goto :goto_5

    :cond_b
    neg-float v13, v2

    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v12, v14

    add-float/2addr v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_6

    :cond_c
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_4
.end method
