.class Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentItemViewSelectedListener;
.super Ljava/lang/Object;
.source "BrowseSupportFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainFragmentItemViewSelectedListener"
.end annotation


# instance fields
.field mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentItemViewSelectedListener;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentItemViewSelectedListener;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V
    .locals 4

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentItemViewSelectedListener;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;->getSelectedPosition()I

    move-result v0

    sget-boolean v1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BrowseSupportFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "row selected position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentItemViewSelectedListener;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->onRowSelected(I)V

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentItemViewSelectedListener;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mExternalOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentItemViewSelectedListener;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mExternalOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p4, Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V

    return-void
.end method
