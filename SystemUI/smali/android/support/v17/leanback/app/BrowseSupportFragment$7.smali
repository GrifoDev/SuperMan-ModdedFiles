.class Landroid/support/v17/leanback/app/BrowseSupportFragment$7;
.super Ljava/lang/Object;
.source "BrowseSupportFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/BrowseSupportFragment;->startHeadersTransitionInternal(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

.field final synthetic val$withHeaders:Z


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;Z)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iput-boolean p2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$7;->val$withHeaders:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->onTransitionPrepare()Z

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->onTransitionStart()V

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->createHeadersTransition()V

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseTransitionListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BrowseTransitionListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseTransitionListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BrowseTransitionListener;

    iget-boolean v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$7;->val$withHeaders:Z

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/app/BrowseSupportFragment$BrowseTransitionListener;->onHeadersTransitionStart(Z)V

    :cond_0
    iget-boolean v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$7;->val$withHeaders:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSceneWithHeaders:Ljava/lang/Object;

    :goto_0
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v3, v3, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersTransition:Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/support/v17/leanback/transition/TransitionHelper;->runTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean v2, v2, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersBackStackEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$7;->val$withHeaders:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v3, v3, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mWithHeadersBackStackName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSceneWithoutHeaders:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;

    iget v1, v2, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    if-ltz v1, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-interface {v0}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getId()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(II)Z

    goto :goto_1
.end method
