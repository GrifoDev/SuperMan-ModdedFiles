.class public Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;
.super Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
.source "FullWidthDetailsOverviewRowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder$1;,
        Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder$2;,
        Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder$3;,
        Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder$4;,
        Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder$DetailsOverviewRowListener;
    }
.end annotation


# instance fields
.field mActionBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

.field final mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

.field final mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

.field final mDetailsDescriptionFrame:Landroid/view/ViewGroup;

.field final mDetailsDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

.field final mDetailsLogoViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

.field final mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field mNumItems:I

.field final mOverviewFrame:Landroid/widget/FrameLayout;

.field final mOverviewRoot:Landroid/view/ViewGroup;

.field protected final mRowListener:Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

.field final mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field mState:I

.field final mUpdateDrawableCallback:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;Landroid/view/View;Landroid/support/v17/leanback/widget/Presenter;Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->createRowListener()Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mRowListener:Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

    iput v3, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mState:I

    new-instance v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder$1;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder$1;-><init>(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mUpdateDrawableCallback:Ljava/lang/Runnable;

    new-instance v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder$2;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder$2;-><init>(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    new-instance v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder$3;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder$3;-><init>(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    new-instance v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder$4;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder$4;-><init>(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    sget v1, Landroid/support/v17/leanback/R$id;->details_root:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mOverviewRoot:Landroid/view/ViewGroup;

    sget v1, Landroid/support/v17/leanback/R$id;->details_frame:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    sget v1, Landroid/support/v17/leanback/R$id;->details_overview_description:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionFrame:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    sget v2, Landroid/support/v17/leanback/R$id;->details_overview_actions:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/HorizontalGridView;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v1, v3}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setHasOverlappingRendering(Z)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setOnChildSelectedListener(Landroid/support/v17/leanback/widget/OnChildSelectedListener;)V

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$dimen;->lb_details_overview_actions_fade_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setFadingRightEdgeLength(I)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setFadingLeftEdgeLength(I)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionFrame:Landroid/view/ViewGroup;

    invoke-virtual {p3, v1}, Landroid/support/v17/leanback/widget/Presenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionFrame:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mOverviewRoot:Landroid/view/ViewGroup;

    invoke-virtual {p4, v1}, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsLogoViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mOverviewRoot:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsLogoViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method bindActions(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->getItemCount()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mNumItems:I

    return-void
.end method

.method checkFirstAndLastPosition(Z)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget v4, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mNumItems:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/HorizontalGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getWidth()I

    move-result v4

    if-le v3, v4, :cond_2

    const/4 v1, 0x1

    :goto_0
    iget-object v3, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v3, v5}, Landroid/support/v17/leanback/widget/HorizontalGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-gez v3, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected createRowListener()Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder$DetailsOverviewRowListener;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder$DetailsOverviewRowListener;-><init>(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;)V

    return-object v0
.end method

.method dispatchItemSelection(Landroid/view/View;)V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->isSelected()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v2

    invoke-interface {v1, v3, v3, p0, v2}, Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getSelectedPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v4

    invoke-interface {v1, v2, v3, p0, v4}, Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final getActionsRow()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    return-object v0
.end method

.method public final getDetailsDescriptionFrame()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionFrame:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final getLogoViewHolder()Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsLogoViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    return-object v0
.end method

.method public final getOverviewView()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getState()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mState:I

    return v0
.end method

.method onBind()V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->bindActions(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mRowListener:Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->addListener(Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;)V

    return-void
.end method

.method onUnbind()V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mRowListener:Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->removeListener(Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;)V

    sget-object v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->sHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mUpdateDrawableCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
