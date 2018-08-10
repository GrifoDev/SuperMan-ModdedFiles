.class Landroid/support/v17/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter$1;
.super Ljava/lang/Object;
.source "VerticalGridPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter;->onBind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v17/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter;

.field final synthetic val$itemViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter;Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter$1;->this$1:Landroid/support/v17/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter;

    iput-object p2, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter$1;->val$itemViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter$1;->this$1:Landroid/support/v17/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter;->this$0:Landroid/support/v17/leanback/widget/VerticalGridPresenter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter$1;->this$1:Landroid/support/v17/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter;->this$0:Landroid/support/v17/leanback/widget/VerticalGridPresenter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter$1;->val$itemViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter$1;->val$itemViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3, v3}, Landroid/support/v17/leanback/widget/OnItemViewClickedListener;->onItemClicked(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
