.class Landroid/support/v17/leanback/app/RowsFragment$2;
.super Ljava/lang/Object;
.source "RowsFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/ViewHolderTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/RowsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$rowHolderTask:Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;


# virtual methods
.method public run(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Landroid/support/v17/leanback/app/RowsFragment$2$1;

    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsFragment$2;->val$rowHolderTask:Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;

    invoke-direct {v1, p0, v2, p1}, Landroid/support/v17/leanback/app/RowsFragment$2$1;-><init>(Landroid/support/v17/leanback/app/RowsFragment$2;Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
