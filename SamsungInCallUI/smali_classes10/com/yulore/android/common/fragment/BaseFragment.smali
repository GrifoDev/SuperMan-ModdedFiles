.class public abstract Lcom/yulore/android/common/fragment/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Lcom/yulore/android/common/job/AsyncJobListener;


# instance fields
.field protected mHandler:Landroid/os/Handler;

.field protected mThreadManager:Lcom/yulore/android/common/pool/ThreadManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 27
    new-instance v0, Lcom/yulore/android/common/fragment/BaseFragment$1;

    invoke-direct {v0, p0}, Lcom/yulore/android/common/fragment/BaseFragment$1;-><init>(Lcom/yulore/android/common/fragment/BaseFragment;)V

    iput-object v0, p0, Lcom/yulore/android/common/fragment/BaseFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected abstract findViewById(Landroid/view/View;)V
.end method

.method protected abstract initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-static {}, Lcom/yulore/android/common/pool/ThreadManager;->getInstance()Lcom/yulore/android/common/pool/ThreadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/android/common/fragment/BaseFragment;->mThreadManager:Lcom/yulore/android/common/pool/ThreadManager;

    .line 38
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/yulore/android/common/fragment/BaseFragment;->initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "rootView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/yulore/android/common/fragment/BaseFragment;->findViewById(Landroid/view/View;)V

    .line 49
    invoke-virtual {p0, p3}, Lcom/yulore/android/common/fragment/BaseFragment;->processLogic(Landroid/os/Bundle;)V

    .line 51
    return-object v0
.end method

.method protected abstract onEventMainThread(ILcom/yulore/android/common/job/AsyncJob;)V
.end method

.method protected onMessageMainThread(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 89
    return-void
.end method

.method protected abstract processLogic(Landroid/os/Bundle;)V
.end method

.method public update(ILcom/yulore/android/common/job/AsyncJob;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "req"    # Lcom/yulore/android/common/job/AsyncJob;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yulore/android/common/fragment/BaseFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/yulore/android/common/fragment/BaseFragment$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/yulore/android/common/fragment/BaseFragment$2;-><init>(Lcom/yulore/android/common/fragment/BaseFragment;ILcom/yulore/android/common/job/AsyncJob;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    return-void
.end method
