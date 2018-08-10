.class final Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;
.super Ljava/lang/Object;
.source "BrowseSupportFragment.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BackStackListener"
.end annotation


# instance fields
.field mIndexOfHeadersBackStack:I

.field mLastEntryCount:I

.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;->mLastEntryCount:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    return-void
.end method


# virtual methods
.method load(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, -0x1

    if-eqz p1, :cond_2

    const-string/jumbo v0, "headerStackIndex"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mWithHeadersBackStackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_1
.end method

.method public onBackStackChanged()V
    .locals 5

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "BrowseSupportFragment"

    const-string/jumbo v3, "getFragmentManager() is null, stack:"

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    iget v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;->mLastEntryCount:I

    if-le v0, v2, :cond_2

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mWithHeadersBackStackName:Ljava/lang/String;

    invoke-interface {v1}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    :cond_1
    :goto_0
    iput v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;->mLastEntryCount:I

    return-void

    :cond_2
    iget v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;->mLastEntryCount:I

    if-ge v0, v2, :cond_1

    iget v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    if-lt v2, v0, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->isHeadersDataReady()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v3, v3, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mWithHeadersBackStackName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void

    :cond_3
    const/4 v2, -0x1

    iput v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean v2, v2, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->startHeadersTransitionInternal(Z)V

    goto :goto_0
.end method

.method save(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "headerStackIndex"

    iget v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
