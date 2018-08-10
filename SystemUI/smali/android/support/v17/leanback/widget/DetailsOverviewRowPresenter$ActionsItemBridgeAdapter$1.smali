.class Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter$1;
.super Ljava/lang/Object;
.source "DetailsOverviewRowPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter;->onBind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter;

.field final synthetic val$ibvh:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter;Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter$1;->this$1:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter;

    iput-object p2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter$1;->val$ibvh:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter$1;->this$1:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter$1;->this$1:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter$1;->val$ibvh:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter$1;->val$ibvh:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter$1;->this$1:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter$1;->this$1:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;->onItemClicked(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter$1;->this$1:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter;->this$0:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->mActionClickedListener:Landroid/support/v17/leanback/widget/OnActionClickedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter$1;->this$1:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter;->this$0:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;

    iget-object v1, v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->mActionClickedListener:Landroid/support/v17/leanback/widget/OnActionClickedListener;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter$1;->val$ibvh:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/Action;

    invoke-interface {v1, v0}, Landroid/support/v17/leanback/widget/OnActionClickedListener;->onActionClicked(Landroid/support/v17/leanback/widget/Action;)V

    :cond_1
    return-void
.end method
