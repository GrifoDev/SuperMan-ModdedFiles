.class final Landroid/app/job/JobServiceEngine$JobInterface;
.super Landroid/app/job/IJobService$Stub;
.source "JobServiceEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobServiceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JobInterface"
.end annotation


# instance fields
.field final mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/job/JobServiceEngine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/job/JobServiceEngine;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/job/IJobService$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/job/JobServiceEngine$JobInterface;->mService:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public startJob(Landroid/app/job/JobParameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Landroid/app/job/JobServiceEngine$JobInterface;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobServiceEngine;

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public stopJob(Landroid/app/job/JobParameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Landroid/app/job/JobServiceEngine$JobInterface;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobServiceEngine;

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    const/4 v3, 0x1

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
