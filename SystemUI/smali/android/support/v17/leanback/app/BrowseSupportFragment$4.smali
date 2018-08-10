.class Landroid/support/v17/leanback/app/BrowseSupportFragment$4;
.super Ljava/lang/Object;
.source "BrowseSupportFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeaderClicked(Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->isInHeadersTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->startHeadersTransitionInternal(Z)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
