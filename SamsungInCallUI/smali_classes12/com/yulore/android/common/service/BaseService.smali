.class public abstract Lcom/yulore/android/common/service/BaseService;
.super Landroid/app/Service;
.source "BaseService.java"

# interfaces
.implements Lcom/yulore/android/common/job/AsyncJobListener;


# instance fields
.field protected mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/yulore/android/common/service/BaseService$1;

    invoke-direct {v0, p0}, Lcom/yulore/android/common/service/BaseService$1;-><init>(Lcom/yulore/android/common/service/BaseService;)V

    iput-object v0, p0, Lcom/yulore/android/common/service/BaseService;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract onEventMainThread(ILcom/yulore/android/common/job/AsyncJob;)V
.end method

.method protected onMessageMainThread(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public update(ILcom/yulore/android/common/job/AsyncJob;)V
    .locals 2

    iget-object v0, p0, Lcom/yulore/android/common/service/BaseService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/yulore/android/common/service/BaseService$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/yulore/android/common/service/BaseService$2;-><init>(Lcom/yulore/android/common/service/BaseService;ILcom/yulore/android/common/job/AsyncJob;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
