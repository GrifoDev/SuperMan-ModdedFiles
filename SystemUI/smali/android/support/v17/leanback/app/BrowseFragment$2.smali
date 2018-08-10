.class Landroid/support/v17/leanback/app/BrowseFragment$2;
.super Ljava/lang/Object;
.source "BrowseFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BrowseFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 8

    const/16 v7, 0x82

    const/4 v6, 0x0

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-boolean v3, v3, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/BrowseFragment;->isInHeadersTransition()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object p1

    :cond_0
    sget-boolean v3, Landroid/support/v17/leanback/app/BrowseFragment;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "BrowseFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onFocusSearch focused "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " + direction "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/BrowseFragment;->getTitleView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/BrowseFragment;->getTitleView()Landroid/view/View;

    move-result-object v3

    if-eq p1, v3, :cond_2

    const/16 v3, 0x21

    if-ne p2, v3, :cond_2

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/BrowseFragment;->getTitleView()Landroid/view/View;

    move-result-object v3

    return-object v3

    :cond_2
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/BrowseFragment;->getTitleView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/BrowseFragment;->getTitleView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_4

    if-ne p2, v7, :cond_4

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-boolean v3, v3, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-boolean v3, v3, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v3, v3, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/HeadersFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_3
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v3, v3, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_4
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_7

    const/16 v2, 0x42

    :goto_2
    if-eqz v0, :cond_8

    const/16 v1, 0x11

    :goto_3
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-boolean v3, v3, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    if-eqz v3, :cond_a

    if-ne p2, v2, :cond_a

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/BrowseFragment;->isVerticalScrolling()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-boolean v3, v3, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/BrowseFragment;->isHeadersDataReady()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_9

    :cond_5
    return-object p1

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    const/16 v2, 0x11

    goto :goto_2

    :cond_8
    const/16 v1, 0x42

    goto :goto_3

    :cond_9
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v3, v3, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/HeadersFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v3

    return-object v3

    :cond_a
    if-ne p2, v1, :cond_d

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/BrowseFragment;->isVerticalScrolling()Z

    move-result v3

    if-eqz v3, :cond_b

    return-object p1

    :cond_b
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v3, v3, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    if-eqz v3, :cond_c

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v3, v3, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v3, v3, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    return-object v3

    :cond_c
    return-object p1

    :cond_d
    if-ne p2, v7, :cond_e

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-boolean v3, v3, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-eqz v3, :cond_e

    return-object p1

    :cond_e
    return-object v6
.end method
