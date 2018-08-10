.class final Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;
.super Ljava/lang/Object;
.source "BrowseFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/app/BrowseFragment$FragmentHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FragmentHostImpl"
.end annotation


# instance fields
.field mShowTitleView:Z

.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BrowseFragment;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;->mShowTitleView:Z

    return-void
.end method


# virtual methods
.method public notifyViewCreated(Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BrowseFragment;->EVT_MAIN_FRAGMENT_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mIsPageRow:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BrowseFragment;->EVT_SCREEN_DATA_READY:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    :cond_0
    return-void
.end method

.method public showTitleView(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;->mShowTitleView:Z

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->getFragmentHost()Landroid/support/v17/leanback/app/BrowseFragment$FragmentHost;

    move-result-object v0

    if-eq v0, p0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mIsPageRow:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment;->updateTitleViewVisibility()V

    return-void
.end method
