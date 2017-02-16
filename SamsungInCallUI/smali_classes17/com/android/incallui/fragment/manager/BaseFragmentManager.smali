.class public abstract Lcom/android/incallui/fragment/manager/BaseFragmentManager;
.super Ljava/lang/Object;
.source "BaseFragmentManager.java"


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
.field mContext:Landroid/content/Context;

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
    .param p1, "inCallActivity"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 55
    .local p0, "this":Lcom/android/incallui/fragment/manager/BaseFragmentManager;, "Lcom/android/incallui/fragment/manager/BaseFragmentManager<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Lcom/android/incallui/fragment/manager/BaseFragmentManager$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager$1;-><init>(Lcom/android/incallui/fragment/manager/BaseFragmentManager;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->mTestHandler:Landroid/os/Handler;

    .line 56
    const-string v0, "BaseFragmentManager..."

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->log(Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 58
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method private removeFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lcom/android/incallui/fragment/manager/BaseFragmentManager;, "Lcom/android/incallui/fragment/manager/BaseFragmentManager<TT;>;"
    .local p1, "currentFragment":Lcom/android/incallui/BaseFragment;, "TT;"
    iget-object v1, p0, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 109
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

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
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 182
    .local p0, "this":Lcom/android/incallui/fragment/manager/BaseFragmentManager;, "Lcom/android/incallui/fragment/manager/BaseFragmentManager<TT;>;"
    const-string v0, "BaseFragmentManager"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method protected log(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "always"    # Z

    .prologue
    .line 186
    .local p0, "this":Lcom/android/incallui/fragment/manager/BaseFragmentManager;, "Lcom/android/incallui/fragment/manager/BaseFragmentManager<TT;>;"
    const-string v0, "BaseFragmentManager"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method protected abstract makeTestList()V
.end method

.method protected makeTestListAndStart()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/android/incallui/fragment/manager/BaseFragmentManager;, "Lcom/android/incallui/fragment/manager/BaseFragmentManager<TT;>;"
    const/16 v3, 0x385

    .line 171
    iget-object v1, p0, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->mTestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->makeTestList()V

    .line 173
    iget-object v1, p0, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->mTestFragmentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 174
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Enum;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->mTestHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->mTestHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 179
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Enum;>;"
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 127
    .local p0, "this":Lcom/android/incallui/fragment/manager/BaseFragmentManager;, "Lcom/android/incallui/fragment/manager/BaseFragmentManager<TT;>;"
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->removeCurrentFragment()V

    .line 132
    return-void
.end method

.method protected removeCurrentFragment()V
    .locals 1

    .prologue
    .line 115
    .local p0, "this":Lcom/android/incallui/fragment/manager/BaseFragmentManager;, "Lcom/android/incallui/fragment/manager/BaseFragmentManager<TT;>;"
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

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->getFragment()Lcom/android/incallui/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->getFragment()Lcom/android/incallui/BaseFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->removeFragment(Lcom/android/incallui/BaseFragment;)V

    .line 119
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
    .locals 3
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 92
    .local p0, "this":Lcom/android/incallui/fragment/manager/BaseFragmentManager;, "Lcom/android/incallui/fragment/manager/BaseFragmentManager<TT;>;"
    monitor-enter p0

    :try_start_0
    const-string v1, "addFragment..."

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    if-nez p2, :cond_1

    .line 102
    .end local p2    # "fragment":Landroid/app/Fragment;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 94
    .restart local p2    # "fragment":Landroid/app/Fragment;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->getFragment()Lcom/android/incallui/BaseFragment;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->getFragment()Lcom/android/incallui/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 97
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 98
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->getFragment()Lcom/android/incallui/BaseFragment;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->getFragment()Lcom/android/incallui/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/BaseFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_4

    .line 99
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 101
    :cond_4
    check-cast p2, Lcom/android/incallui/BaseFragment;

    .end local p2    # "fragment":Landroid/app/Fragment;
    invoke-virtual {p0, p2}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    .end local v0    # "transaction":Landroid/app/FragmentTransaction;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized setFragmentInternal(ILandroid/app/Fragment;Z)V
    .locals 3
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "forceUpdate"    # Z

    .prologue
    .line 71
    .local p0, "this":Lcom/android/incallui/fragment/manager/BaseFragmentManager;, "Lcom/android/incallui/fragment/manager/BaseFragmentManager<TT;>;"
    monitor-enter p0

    :try_start_0
    const-string v1, "addFragment......"

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    if-nez p2, :cond_1

    .line 89
    .end local p2    # "fragment":Landroid/app/Fragment;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 76
    .restart local p2    # "fragment":Landroid/app/Fragment;
    :cond_1
    if-nez p3, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->getFragment()Lcom/android/incallui/BaseFragment;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 77
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->getFragment()Lcom/android/incallui/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 84
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 85
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->getFragment()Lcom/android/incallui/BaseFragment;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->getFragment()Lcom/android/incallui/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/BaseFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_4

    .line 86
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 88
    :cond_4
    check-cast p2, Lcom/android/incallui/BaseFragment;

    .end local p2    # "fragment":Landroid/app/Fragment;
    invoke-virtual {p0, p2}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    .end local v0    # "transaction":Landroid/app/FragmentTransaction;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
