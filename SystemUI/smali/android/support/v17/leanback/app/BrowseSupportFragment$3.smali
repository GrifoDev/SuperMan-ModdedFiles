.class Landroid/support/v17/leanback/app/BrowseSupportFragment$3;
.super Ljava/lang/Object;
.source "BrowseSupportFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;


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

    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean v1, v1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->isInHeadersTransition()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Landroid/support/v17/leanback/R$id;->browse_container_dock:I

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean v1, v1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->startHeadersTransitionInternal(Z)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    sget v1, Landroid/support/v17/leanback/R$id;->browse_headers_dock:I

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean v1, v1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->startHeadersTransitionInternal(Z)V

    goto :goto_0
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getTitleView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getTitleView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
