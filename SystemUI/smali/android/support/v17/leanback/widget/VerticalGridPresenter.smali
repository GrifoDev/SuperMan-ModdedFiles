.class public Landroid/support/v17/leanback/widget/VerticalGridPresenter;
.super Landroid/support/v17/leanback/widget/Presenter;
.source "VerticalGridPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter;,
        Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;
    }
.end annotation


# instance fields
.field private mFocusZoomFactor:I

.field private mKeepChildForeground:Z

.field private mNumColumns:I

.field private mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

.field private mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

.field private mRoundedCornersEnabled:Z

.field private mShadowEnabled:Z

.field mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

.field private mShadowOverlayWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

.field private mUseFocusDimmer:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Presenter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mNumColumns:I

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mShadowEnabled:Z

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mKeepChildForeground:Z

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mRoundedCornersEnabled:Z

    iput p1, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mFocusZoomFactor:I

    iput-boolean p2, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mUseFocusDimmer:Z

    return-void
.end method


# virtual methods
.method public final areChildRoundedCornersEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mRoundedCornersEnabled:Z

    return v0
.end method

.method protected createGridViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$layout;->lb_vertical_grid:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    sget v1, Landroid/support/v17/leanback/R$id;->browse_grid:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-direct {v2, v1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;-><init>(Landroid/support/v17/leanback/widget/VerticalGridView;)V

    return-object v2
.end method

.method protected createShadowOverlayOptions()Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;
    .locals 1

    sget-object v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;->DEFAULT:Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;

    return-object v0
.end method

.method public final getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/OnItemViewClickedListener;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    return-object v0
.end method

.method public final getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    return-object v0
.end method

.method public final getShadowEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mShadowEnabled:Z

    return v0
.end method

.method protected initializeGridViewHolder(Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;)V
    .locals 6

    const/4 v2, 0x1

    iget v3, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mNumColumns:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Number of columns must be set"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v3

    iget v4, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mNumColumns:I

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/VerticalGridView;->setNumColumns(I)V

    iput-boolean v2, p1, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mInitialized:Z

    iget-object v3, p1, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    if-nez v3, :cond_1

    new-instance v3, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    invoke-direct {v3}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;-><init>()V

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mUseFocusDimmer:Z

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->needsOverlay(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->needsDefaultShadow()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->needsShadow(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->areChildRoundedCornersEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->needsRoundedCorner(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->isUsingZOrder(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->preferZOrder(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mKeepChildForeground:Z

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->keepForegroundDrawable(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->createShadowOverlayOptions()Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->options(Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->build(Landroid/content/Context;)Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->needsWrapper()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Landroid/support/v17/leanback/widget/ItemBridgeAdapterShadowOverlayWrapper;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    invoke-direct {v3, v4}, Landroid/support/v17/leanback/widget/ItemBridgeAdapterShadowOverlayWrapper;-><init>(Landroid/support/v17/leanback/widget/ShadowOverlayHelper;)V

    iput-object v3, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mShadowOverlayWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    :cond_1
    iget-object v3, p1, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mShadowOverlayWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setWrapper(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;)V

    iget-object v3, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    iget-object v4, p1, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->prepareParentForShadow(Landroid/view/ViewGroup;)V

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->getShadowType()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    :goto_0
    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setFocusDrawingOrderEnabled(Z)V

    iget-object v2, p1, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    iget v3, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mFocusZoomFactor:I

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mUseFocusDimmer:Z

    invoke-static {v2, v3, v4}, Landroid/support/v17/leanback/widget/FocusHighlightHelper;->setupBrowseItemFocusHighlight(Landroid/support/v17/leanback/widget/ItemBridgeAdapter;IZ)V

    move-object v1, p1

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v2

    new-instance v3, Landroid/support/v17/leanback/widget/VerticalGridPresenter$1;

    invoke-direct {v3, p0, p1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$1;-><init>(Landroid/support/v17/leanback/widget/VerticalGridPresenter;Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setOnChildSelectedListener(Landroid/support/v17/leanback/widget/OnChildSelectedListener;)V

    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
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

.method final needsDefaultShadow()Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->isUsingDefaultShadow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->getShadowEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    iget-object v1, v0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    check-cast p2, Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v1, p2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    iget-object v2, v0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;
    .locals 3

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->createGridViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mInitialized:Z

    new-instance v1, Landroid/support/v17/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter;-><init>(Landroid/support/v17/leanback/widget/VerticalGridPresenter;)V

    iput-object v1, v0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->initializeGridViewHolder(Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;)V

    iget-boolean v1, v0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mInitialized:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "super.initializeGridViewHolder() must be called"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method public onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 3

    const/4 v2, 0x0

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    iget-object v1, v0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method selectChildView(Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    move-result-object v1

    invoke-interface {v1, v4, v4, v4, v4}, Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    move-result-object v1

    iget-object v2, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v3, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4, v4}, Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public setEntranceTransitionState(Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;Z)V
    .locals 2

    iget-object v1, p1, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setChildrenVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
