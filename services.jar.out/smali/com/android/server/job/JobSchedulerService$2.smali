.class Lcom/android/server/job/JobSchedulerService$2;
.super Landroid/app/IUidObserver$Stub;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$2;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onUidGone(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$2;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/16 v1, 0x10

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService;->updateUidState(II)V

    return-void
.end method

.method public onUidIdle(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$2;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IZ)V

    return-void
.end method

.method public onUidStateChanged(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$2;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/JobSchedulerService;->updateUidState(II)V

    return-void
.end method
