.class Landroid/support/v17/leanback/app/HeadersFragment$1$1;
.super Ljava/lang/Object;
.source "HeadersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/HeadersFragment$1;->onCreate(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v17/leanback/app/HeadersFragment$1;

.field final synthetic val$viewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/HeadersFragment$1;Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/HeadersFragment$1$1;->this$1:Landroid/support/v17/leanback/app/HeadersFragment$1;

    iput-object p2, p0, Landroid/support/v17/leanback/app/HeadersFragment$1$1;->val$viewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/HeadersFragment$1$1;->this$1:Landroid/support/v17/leanback/app/HeadersFragment$1;

    iget-object v0, v0, Landroid/support/v17/leanback/app/HeadersFragment$1;->this$0:Landroid/support/v17/leanback/app/HeadersFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/HeadersFragment;->mOnHeaderClickedListener:Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderClickedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/HeadersFragment$1$1;->this$1:Landroid/support/v17/leanback/app/HeadersFragment$1;

    iget-object v0, v0, Landroid/support/v17/leanback/app/HeadersFragment$1;->this$0:Landroid/support/v17/leanback/app/HeadersFragment;

    iget-object v2, v0, Landroid/support/v17/leanback/app/HeadersFragment;->mOnHeaderClickedListener:Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderClickedListener;

    iget-object v0, p0, Landroid/support/v17/leanback/app/HeadersFragment$1$1;->val$viewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    iget-object v1, p0, Landroid/support/v17/leanback/app/HeadersFragment$1$1;->val$viewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/Row;

    invoke-interface {v2, v0, v1}, Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderClickedListener;->onHeaderClicked(Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V

    :cond_0
    return-void
.end method
