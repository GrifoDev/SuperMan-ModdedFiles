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

.method public onUidGone(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$2;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/16 v1, 0x11

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService;->updateUidState(II)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$2;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string/jumbo v1, "uid gone"

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUidIdle(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$2;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string/jumbo v1, "app uid idle"

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUidStateChanged(IIJ)V
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
