.class public abstract Lcom/android/incallui/fragment/manager/BaseFragmentManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/incallui/BaseFragment",
        "<**>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "BaseFragmentManager"

.field protected static final TEST_OP:Z = false

.field protected static final TEST_OP_CHANGE:I = 0x385

.field protected static final TEST_OP_DELAY:I = 0x1f40

.field protected static final TEST_OP_STOP:I = 0x386


# instance fields
.field protected mFragmentType:Ljava/lang/Enum;

.field public mInCallActivity:Lcom/android/incallui/InCallActivity;

.field protected mOrientationType:I

.field protected mTestFragmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Enum;",
            ">;"
        }
    .end annotation
.end field

.field public mTestHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/incallui/fragment/manager/BaseFragmentManager$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager$1;-><init>(Lcom/android/incallui/fragment/manager/BaseFragmentManager;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->mTestHandler:Landroid/os/Handler;

    const-string v0, "BaseFragmentManager..."

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    return-void
.end method

.method private removeFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method


# virtual methods
.method protected abstract checkAndSet(Z)Lcom/android/incallui/BaseFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation
.end method

.method protected abstract getFragment()Lcom/android/incallui/BaseFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "BaseFragmentManager"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "BaseFragmentManager"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract makeTestList()V
.end method

.method protected makeTestListAndStart()V
    .locals 3

    const/16 v2, 0x385

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->mTestHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->makeTestList()V

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->mTestFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->mTestHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->mTestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->removeCurrentFragment()V

    return-void
.end method

.method protected removeCurrentFragment()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->getFragment()Lcom/android/incallui/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->getFragment()Lcom/android/incallui/BaseFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->removeFragment(Lcom/android/incallui/BaseFragment;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->setCurrentFragment(Lcom/android/incallui/BaseFragment;)V

    goto :goto_0
.end method

.method protected abstract setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected abstract setFragment(Ljava/lang/Enum;Z)V
.end method

.method protected declared-synchronized setFragmentInternal(ILandroid/app/Fragment;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "addFragment..."

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->getFragment()Lcom/android/incallui/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->getFragment()Lcom/android/incallui/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->getFragment()Lcom/android/incallui/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->getFragment()Lcom/android/incallui/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/BaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_4
    check-cast p2, Lcom/android/incallui/BaseFragment;

    invoke-virtual {p0, p2}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setFragmentInternal(ILandroid/app/Fragment;Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "addFragment......"

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    if-nez p3, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->getFragment()Lcom/android/incallui/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->getFragment()Lcom/android/incallui/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->getFragment()Lcom/android/incallui/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->getFragment()Lcom/android/incallui/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/BaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_4
    check-cast p2, Lcom/android/incallui/BaseFragment;

    invoke-virtual {p0, p2}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
