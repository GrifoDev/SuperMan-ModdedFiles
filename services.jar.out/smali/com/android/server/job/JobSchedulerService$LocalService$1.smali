.class Lcom/android/server/job/JobSchedulerService$LocalService$1;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"

# interfaces
.implements Lcom/android/server/job/JobStore$JobStatusFunctor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/job/JobSchedulerService$LocalService;->getSystemScheduledPendingJobs()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/job/JobSchedulerService$LocalService;

.field final synthetic val$pendingJobs:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService$LocalService;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$LocalService$1;->this$1:Lcom/android/server/job/JobSchedulerService$LocalService;

    iput-object p2, p0, Lcom/android/server/job/JobSchedulerService$LocalService$1;->val$pendingJobs:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService$1;->this$1:Lcom/android/server/job/JobSchedulerService$LocalService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0, p1}, Lcom/android/server/job/JobSchedulerService;->-wrap0(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService$1;->val$pendingJobs:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
