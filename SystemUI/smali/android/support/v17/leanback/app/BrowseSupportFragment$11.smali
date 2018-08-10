.class Landroid/support/v17/leanback/app/BrowseSupportFragment$11;
.super Landroid/support/v17/leanback/transition/TransitionListener;
.source "BrowseSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/BrowseSupportFragment;->createHeadersTransition()V
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

    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$11;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-direct {p0}, Landroid/support/v17/leanback/transition/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$11;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iput-object v3, v2, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersTransition:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$11;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$11;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->onTransitionEnd()V

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$11;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean v2, v2, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$11;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$11;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$11;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$11;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->onTransitionEnd()V

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$11;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean v2, v2, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$11;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->hasFocus()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus()Z

    :cond_1
    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$11;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->updateTitleViewVisibility()V

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$11;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseTransitionListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BrowseTransitionListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$11;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseTransitionListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BrowseTransitionListener;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$11;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean v3, v3, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/app/BrowseSupportFragment$BrowseTransitionListener;->onHeadersTransitionStop(Z)V

    :cond_2
    return-void
.end method

.method public onTransitionStart(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
