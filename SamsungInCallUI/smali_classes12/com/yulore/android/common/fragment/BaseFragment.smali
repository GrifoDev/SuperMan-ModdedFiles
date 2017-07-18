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

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

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

    invoke-static {}, Lcom/yulore/android/common/pool/ThreadManager;->getInstance()Lcom/yulore/android/common/pool/ThreadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/android/common/fragment/BaseFragment;->mThreadManager:Lcom/yulore/android/common/pool/ThreadManager;

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2}, Lcom/yulore/android/common/fragment/BaseFragment;->initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yulore/android/common/fragment/BaseFragment;->findViewById(Landroid/view/View;)V

    invoke-virtual {p0, p3}, Lcom/yulore/android/common/fragment/BaseFragment;->processLogic(Landroid/os/Bundle;)V

    return-object v0
.end method

.method protected abstract onEventMainThread(ILcom/yulore/android/common/job/AsyncJob;)V
.end method

.method protected onMessageMainThread(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method protected abstract processLogic(Landroid/os/Bundle;)V
.end method

.method public update(ILcom/yulore/android/common/job/AsyncJob;)V
    .locals 2

    iget-object v0, p0, Lcom/yulore/android/common/fragment/BaseFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/yulore/android/common/fragment/BaseFragment$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/yulore/android/common/fragment/BaseFragment$2;-><init>(Lcom/yulore/android/common/fragment/BaseFragment;ILcom/yulore/android/common/job/AsyncJob;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
