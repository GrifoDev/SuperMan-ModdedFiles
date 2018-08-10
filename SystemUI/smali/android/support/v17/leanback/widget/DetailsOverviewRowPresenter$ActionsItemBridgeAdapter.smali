.class Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter;
.super Landroid/support/v17/leanback/widget/ItemBridgeAdapter;
.source "DetailsOverviewRowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionsItemBridgeAdapter"
.end annotation


# instance fields
.field mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

.field final synthetic this$0:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter;->this$0:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;-><init>()V

    iput-object p2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    return-void
.end method


# virtual methods
.method public onAttachedToWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 2

    iget-object v0, p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public onBind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter;->this$0:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->mActionClickedListener:Landroid/support/v17/leanback/widget/OnActionClickedListener;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    new-instance v2, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter$1;

    invoke-direct {v2, p0, p1}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter$1;-><init>(Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter;Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/Presenter;->setOnClickListener(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 2

    iget-object v0, p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->checkFirstAndLastPosition(Z)V

    return-void
.end method

.method public onUnbind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter;->this$0:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->mActionClickedListener:Landroid/support/v17/leanback/widget/OnActionClickedListener;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/Presenter;->setOnClickListener(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
