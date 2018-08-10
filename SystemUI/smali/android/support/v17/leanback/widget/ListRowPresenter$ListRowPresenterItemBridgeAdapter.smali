.class Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;
.super Landroid/support/v17/leanback/widget/ItemBridgeAdapter;
.source "ListRowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ListRowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListRowPresenterItemBridgeAdapter"
.end annotation


# instance fields
.field mRowViewHolder:Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

.field final synthetic this$0:Landroid/support/v17/leanback/widget/ListRowPresenter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/ListRowPresenter;Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;->this$0:Landroid/support/v17/leanback/widget/ListRowPresenter;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;-><init>()V

    iput-object p2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;->mRowViewHolder:Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    return-void
.end method


# virtual methods
.method public onAddPresenter(Landroid/support/v17/leanback/widget/Presenter;I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;->mRowViewHolder:Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/HorizontalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;->this$0:Landroid/support/v17/leanback/widget/ListRowPresenter;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/ListRowPresenter;->getRecycledPoolSize(Landroid/support/v17/leanback/widget/Presenter;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    return-void
.end method

.method public onAttachedToWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;->this$0:Landroid/support/v17/leanback/widget/ListRowPresenter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;->mRowViewHolder:Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    iget-object v2, p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/ListRowPresenter;->applySelectLevelToChild(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;->mRowViewHolder:Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->syncActivatedStatus(Landroid/view/View;)V

    return-void
.end method

.method public onBind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;->mRowViewHolder:Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    new-instance v1, Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter$1;-><init>(Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 2

    iget-object v0, p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->setTransitionGroup(Landroid/view/ViewGroup;Z)V

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;->this$0:Landroid/support/v17/leanback/widget/ListRowPresenter;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;->this$0:Landroid/support/v17/leanback/widget/ListRowPresenter;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->onViewCreated(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onUnbind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;->mRowViewHolder:Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
