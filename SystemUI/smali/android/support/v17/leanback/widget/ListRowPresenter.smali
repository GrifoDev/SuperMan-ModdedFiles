.class public Landroid/support/v17/leanback/widget/ListRowPresenter;
.super Landroid/support/v17/leanback/widget/RowPresenter;
.source "ListRowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;,
        Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;,
        Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;
    }
.end annotation


# static fields
.field private static sExpandedRowNoHovercardBottomPadding:I

.field private static sExpandedSelectedRowTopPadding:I

.field private static sSelectedRowTopPadding:I


# instance fields
.field private mBrowseRowsFadingEdgeLength:I

.field private mExpandedRowHeight:I

.field private mFocusZoomFactor:I

.field private mHoverCardPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

.field private mKeepChildForeground:Z

.field private mNumRows:I

.field private mRecycledPoolSize:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/support/v17/leanback/widget/Presenter;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRoundedCornersEnabled:Z

.field private mRowHeight:I

.field private mShadowEnabled:Z

.field mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

.field private mShadowOverlayWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

.field private mUseFocusDimmer:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/ListRowPresenter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/ListRowPresenter;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/RowPresenter;-><init>()V

    iput v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mNumRows:I

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mBrowseRowsFadingEdgeLength:I

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mRoundedCornersEnabled:Z

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mKeepChildForeground:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mRecycledPoolSize:Ljava/util/HashMap;

    invoke-static {p1}, Landroid/support/v17/leanback/widget/FocusHighlightHelper;->isValidZoomIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unhandled zoom factor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mFocusZoomFactor:I

    iput-boolean p2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mUseFocusDimmer:Z

    return-void
.end method

.method private getSpaceUnderBaseline(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)I
    .locals 2

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getHeaderViewHolder()Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->getHeaderPresenter()Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->getHeaderPresenter()Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->getSpaceUnderBaseline(Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;)I

    move-result v1

    return v1

    :cond_0
    iget-object v1, v0, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static initStatics(Landroid/content/Context;)V
    .locals 2

    sget v0, Landroid/support/v17/leanback/widget/ListRowPresenter;->sSelectedRowTopPadding:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_browse_selected_row_top_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Landroid/support/v17/leanback/widget/ListRowPresenter;->sSelectedRowTopPadding:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_browse_expanded_selected_row_top_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Landroid/support/v17/leanback/widget/ListRowPresenter;->sExpandedSelectedRowTopPadding:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_browse_expanded_row_no_hovercard_bottom_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Landroid/support/v17/leanback/widget/ListRowPresenter;->sExpandedRowNoHovercardBottomPadding:I

    :cond_0
    return-void
.end method

.method private setVerticalPadding(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)V
    .locals 6

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/ListRowPresenter;->getSpaceUnderBaseline(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Landroid/support/v17/leanback/widget/ListRowPresenter;->sExpandedSelectedRowTopPadding:I

    :goto_0
    sub-int v2, v3, v0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mHoverCardPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-nez v3, :cond_1

    sget v1, Landroid/support/v17/leanback/widget/ListRowPresenter;->sExpandedRowNoHovercardBottomPadding:I

    :goto_1
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/HorizontalGridView;

    move-result-object v3

    iget v4, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mPaddingLeft:I

    iget v5, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mPaddingRight:I

    invoke-virtual {v3, v4, v2, v5, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setPadding(IIII)V

    return-void

    :cond_0
    iget v3, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mPaddingTop:I

    goto :goto_0

    :cond_1
    iget v1, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mPaddingBottom:I

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_3

    sget v3, Landroid/support/v17/leanback/widget/ListRowPresenter;->sSelectedRowTopPadding:I

    iget v4, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mPaddingBottom:I

    sub-int v2, v3, v4

    sget v1, Landroid/support/v17/leanback/widget/ListRowPresenter;->sSelectedRowTopPadding:I

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    iget v1, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mPaddingBottom:I

    goto :goto_1
.end method

.method private setupFadingEffect(Landroid/support/v17/leanback/widget/ListRowView;)V
    .locals 4

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowView;->getGridView()Landroid/support/v17/leanback/widget/HorizontalGridView;

    move-result-object v0

    iget v2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mBrowseRowsFadingEdgeLength:I

    if-gez v2, :cond_0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme:[I

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme_browseRowsFadingEdgeLength:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mBrowseRowsFadingEdgeLength:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    iget v2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mBrowseRowsFadingEdgeLength:I

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setFadingLeftEdgeLength(I)V

    return-void
.end method

.method private updateFooterViewSwitcher(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)V
    .locals 5

    const/4 v2, 0x0

    iget-boolean v1, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mExpanded:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mSelected:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mHoverCardPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-eqz v1, :cond_0

    iget-object v3, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mHoverCardViewSwitcher:Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->view:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mHoverCardPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-virtual {v3, v1, v4}, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;->init(Landroid/view/ViewGroup;Landroid/support/v17/leanback/widget/PresenterSelector;)V

    :cond_0
    iget-object v1, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v3, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getSelectedPosition()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/support/v17/leanback/widget/HorizontalGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-nez v0, :cond_2

    move-object v1, v2

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/support/v17/leanback/widget/ListRowPresenter;->selectChildView(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;Landroid/view/View;Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mHoverCardPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mHoverCardViewSwitcher:Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;->unselect()V

    goto :goto_1
.end method


# virtual methods
.method protected applySelectLevelToChild(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->needsOverlay()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mColorDimmer:Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

    invoke-virtual {v1}, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    invoke-virtual {v1, p2, v0}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->setOverlayColor(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public final areChildRoundedCornersEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mRoundedCornersEnabled:Z

    return v0
.end method

.method protected createRowViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v17/leanback/widget/ListRowPresenter;->initStatics(Landroid/content/Context;)V

    new-instance v0, Landroid/support/v17/leanback/widget/ListRowView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/ListRowView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->setupFadingEffect(Landroid/support/v17/leanback/widget/ListRowView;)V

    iget v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mRowHeight:I

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ListRowView;->getGridView()Landroid/support/v17/leanback/widget/HorizontalGridView;

    move-result-object v1

    iget v2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mRowHeight:I

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setRowHeight(I)V

    :cond_0
    new-instance v1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ListRowView;->getGridView()Landroid/support/v17/leanback/widget/HorizontalGridView;

    move-result-object v2

    invoke-direct {v1, v0, v2, p0}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;-><init>(Landroid/view/View;Landroid/support/v17/leanback/widget/HorizontalGridView;Landroid/support/v17/leanback/widget/ListRowPresenter;)V

    return-object v1
.end method

.method protected createShadowOverlayOptions()Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;
    .locals 1

    sget-object v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;->DEFAULT:Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;

    return-object v0
.end method

.method protected dispatchItemSelectedListener(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 6

    move-object v1, p1

    check-cast v1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    iget-object v2, v1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v3, v1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getSelectedPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/HorizontalGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->dispatchItemSelectedListener(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v3

    iget-object v4, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v5

    invoke-interface {v2, v3, v4, v1, v5}, Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public freeze(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 3

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    iget-object v1, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setScrollEnabled(Z)V

    return-void
.end method

.method public getExpandedRowHeight()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mExpandedRowHeight:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mExpandedRowHeight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mRowHeight:I

    goto :goto_0
.end method

.method public getRecycledPoolSize(Landroid/support/v17/leanback/widget/Presenter;)I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mRecycledPoolSize:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mRecycledPoolSize:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x18

    goto :goto_0
.end method

.method public getRowHeight()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mRowHeight:I

    return v0
.end method

.method public final getShadowEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowEnabled:Z

    return v0
.end method

.method protected initializeRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->initializeRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    move-object v1, p1

    check-cast v1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    iget-object v2, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    if-nez v2, :cond_0

    new-instance v2, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    invoke-direct {v2}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->needsDefaultListSelectEffect()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->needsOverlay(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->needsDefaultShadow()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->needsShadow(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->areChildRoundedCornersEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->needsRoundedCorner(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v2

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->isUsingZOrder(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->preferZOrder(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mKeepChildForeground:Z

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->keepForegroundDrawable(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->createShadowOverlayOptions()Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->options(Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->build(Landroid/content/Context;)Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->needsWrapper()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/support/v17/leanback/widget/ItemBridgeAdapterShadowOverlayWrapper;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    invoke-direct {v2, v3}, Landroid/support/v17/leanback/widget/ItemBridgeAdapterShadowOverlayWrapper;-><init>(Landroid/support/v17/leanback/widget/ShadowOverlayHelper;)V

    iput-object v2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    :cond_0
    new-instance v2, Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;

    invoke-direct {v2, p0, v1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;-><init>(Landroid/support/v17/leanback/widget/ListRowPresenter;Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)V

    iput-object v2, v1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    iget-object v2, v1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setWrapper(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    iget-object v3, v1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->prepareParentForShadow(Landroid/view/ViewGroup;)V

    iget-object v2, v1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    iget v3, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mFocusZoomFactor:I

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mUseFocusDimmer:Z

    invoke-static {v2, v3, v4}, Landroid/support/v17/leanback/widget/FocusHighlightHelper;->setupBrowseItemFocusHighlight(Landroid/support/v17/leanback/widget/ItemBridgeAdapter;IZ)V

    iget-object v3, v1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->getShadowType()I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setFocusDrawingOrderEnabled(Z)V

    iget-object v2, v1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    new-instance v3, Landroid/support/v17/leanback/widget/ListRowPresenter$1;

    invoke-direct {v3, p0, v1}, Landroid/support/v17/leanback/widget/ListRowPresenter$1;-><init>(Landroid/support/v17/leanback/widget/ListRowPresenter;Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setOnChildSelectedListener(Landroid/support/v17/leanback/widget/OnChildSelectedListener;)V

    iget-object v2, v1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    new-instance v3, Landroid/support/v17/leanback/widget/ListRowPresenter$2;

    invoke-direct {v3, p0, v1}, Landroid/support/v17/leanback/widget/ListRowPresenter$2;-><init>(Landroid/support/v17/leanback/widget/ListRowPresenter;Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setOnUnhandledKeyListener(Landroid/support/v17/leanback/widget/BaseGridView$OnUnhandledKeyListener;)V

    iget-object v2, v1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget v3, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mNumRows:I

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setNumRows(I)V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isUsingDefaultListSelectEffect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isUsingDefaultSelectEffect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUsingDefaultShadow()Z
    .locals 1

    invoke-static {}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->supportsShadow()Z

    move-result v0

    return v0
.end method

.method public isUsingZOrder(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Landroid/support/v17/leanback/system/Settings;->getInstance(Landroid/content/Context;)Landroid/support/v17/leanback/system/Settings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/system/Settings;->preferStaticShadows()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method final needsDefaultListSelectEffect()Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->isUsingDefaultListSelectEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->getSelectEffectEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final needsDefaultShadow()Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->isUsingDefaultShadow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->getShadowEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    move-object v1, p1

    check-cast v1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    move-object v0, p2

    check-cast v0, Landroid/support/v17/leanback/widget/ListRow;

    iget-object v2, v1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ListRow;->getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    iget-object v2, v1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v3, v1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v2, v1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ListRow;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onRowViewExpanded(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->onRowViewExpanded(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    move-object v1, p1

    check-cast v1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->getRowHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->getExpandedRowHeight()I

    move-result v3

    if-eq v2, v3, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->getExpandedRowHeight()I

    move-result v0

    :goto_0
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/HorizontalGridView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setRowHeight(I)V

    :cond_0
    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/ListRowPresenter;->setVerticalPadding(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)V

    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/ListRowPresenter;->updateFooterViewSwitcher(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->getRowHeight()I

    move-result v0

    goto :goto_0
.end method

.method protected onRowViewSelected(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->onRowViewSelected(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->setVerticalPadding(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)V

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->updateFooterViewSwitcher(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)V

    return-void
.end method

.method protected onSelectLevelChanged(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->onSelectLevelChanged(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    move-object v2, p1

    check-cast v2, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    const/4 v1, 0x0

    iget-object v3, v2, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, v2, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v3, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v17/leanback/widget/ListRowPresenter;->applySelectLevelToChild(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    iget-object v1, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v1, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->clear()V

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    return-void
.end method

.method selectChildView(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;Landroid/view/View;Z)V
    .locals 5

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    iget-boolean v1, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mSelected:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v1, p2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mHoverCardPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mHoverCardViewSwitcher:Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;

    iget-object v2, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v3, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    invoke-virtual {v1, v2, p2, v3}, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;->select(Landroid/support/v17/leanback/widget/HorizontalGridView;Landroid/view/View;Ljava/lang/Object;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v1

    iget-object v2, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v3, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    iget-object v4, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mRow:Landroid/support/v17/leanback/widget/Row;

    invoke-interface {v1, v2, v3, p1, v4}, Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mHoverCardPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mHoverCardViewSwitcher:Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;->unselect()V

    :cond_3
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mRow:Landroid/support/v17/leanback/widget/Row;

    invoke-interface {v1, v3, v3, p1, v2}, Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setEntranceTransitionState(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->setEntranceTransitionState(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    check-cast p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setChildrenVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
