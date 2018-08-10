.class public final Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;
.super Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
.source "DetailsOverviewRowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$1;,
        Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$2;,
        Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$3;,
        Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$4;,
        Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$5;
    }
.end annotation


# instance fields
.field mActionBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

.field final mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

.field final mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

.field final mDetailsDescriptionFrame:Landroid/widget/FrameLayout;

.field public final mDetailsDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

.field final mHandler:Landroid/os/Handler;

.field final mImageView:Landroid/widget/ImageView;

.field final mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field final mListener:Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

.field mNumItems:I

.field final mOverviewFrame:Landroid/widget/FrameLayout;

.field final mOverviewView:Landroid/view/ViewGroup;

.field final mRightPanel:Landroid/view/ViewGroup;

.field final mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field mShowMoreLeft:Z

.field mShowMoreRight:Z

.field final mUpdateDrawableCallback:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;Landroid/view/View;Landroid/support/v17/leanback/widget/Presenter;)V
    .locals 3

    iput-object p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;

    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$1;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$1;-><init>(Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mUpdateDrawableCallback:Ljava/lang/Runnable;

    new-instance v1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$2;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$2;-><init>(Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mListener:Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

    new-instance v1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$3;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$3;-><init>(Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    new-instance v1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$4;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$4;-><init>(Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    new-instance v1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$5;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$5;-><init>(Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    sget v1, Landroid/support/v17/leanback/R$id;->details_frame:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    sget v1, Landroid/support/v17/leanback/R$id;->details_overview:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mOverviewView:Landroid/view/ViewGroup;

    sget v1, Landroid/support/v17/leanback/R$id;->details_overview_image:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    sget v1, Landroid/support/v17/leanback/R$id;->details_overview_right_panel:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mRightPanel:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mRightPanel:Landroid/view/ViewGroup;

    sget v2, Landroid/support/v17/leanback/R$id;->details_overview_description:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mRightPanel:Landroid/view/ViewGroup;

    sget v2, Landroid/support/v17/leanback/R$id;->details_overview_actions:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/HorizontalGridView;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setHasOverlappingRendering(Z)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setOnChildSelectedListener(Landroid/support/v17/leanback/widget/OnChildSelectedListener;)V

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$dimen;->lb_details_overview_actions_fade_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setFadingRightEdgeLength(I)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setFadingLeftEdgeLength(I)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p3, v1}, Landroid/support/v17/leanback/widget/Presenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private showMoreLeft(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mShowMoreLeft:Z

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setFadingLeftEdge(Z)V

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mShowMoreLeft:Z

    :cond_0
    return-void
.end method

.method private showMoreRight(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mShowMoreRight:Z

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setFadingRightEdge(Z)V

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mShowMoreRight:Z

    :cond_0
    return-void
.end method


# virtual methods
.method bindActions(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->getItemCount()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mNumItems:I

    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mShowMoreRight:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mShowMoreLeft:Z

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->showMoreLeft(Z)V

    return-void
.end method

.method checkFirstAndLastPosition(Z)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget v4, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mNumItems:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/HorizontalGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getWidth()I

    move-result v4

    if-le v3, v4, :cond_2

    const/4 v1, 0x1

    :goto_0
    iget-object v3, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

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
    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->showMoreRight(Z)V

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->showMoreLeft(Z)V

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

.method dispatchItemSelection(Landroid/view/View;)V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->isSelected()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v2

    invoke-interface {v1, v3, v3, p0, v2}, Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getSelectedPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v4

    invoke-interface {v1, v2, v3, p0, v4}, Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    goto :goto_1
.end method
