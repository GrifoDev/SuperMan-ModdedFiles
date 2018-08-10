.class Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask$1;
.super Ljava/lang/Object;
.source "ListRowPresenter.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/ViewHolderTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->run(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final itemTask:Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;

.field final synthetic this$1:Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask$1;->this$1:Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask$1;->this$1:Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->mItemTask:Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask$1;->itemTask:Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;

    return-void
.end method


# virtual methods
.method public run(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask$1;->itemTask:Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;->run(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    return-void
.end method
