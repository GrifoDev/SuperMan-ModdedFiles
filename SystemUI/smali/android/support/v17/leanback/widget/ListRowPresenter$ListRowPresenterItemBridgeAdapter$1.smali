.class Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter$1;
.super Ljava/lang/Object;
.source "ListRowPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;->onBind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;

.field final synthetic val$viewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter$1;->this$1:Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;

    iput-object p2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter$1;->val$viewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter$1;->this$1:Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;->mRowViewHolder:Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter$1;->val$viewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter$1;->this$1:Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;->mRowViewHolder:Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter$1;->this$1:Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;->mRowViewHolder:Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    move-result-object v2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter$1;->val$viewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    iget-object v3, v1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v4, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter$1;->this$1:Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;

    iget-object v5, v1, Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;->mRowViewHolder:Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter$1;->this$1:Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;->mRowViewHolder:Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mRow:Landroid/support/v17/leanback/widget/Row;

    check-cast v1, Landroid/support/v17/leanback/widget/ListRow;

    invoke-interface {v2, v3, v4, v5, v1}, Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;->onItemClicked(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
