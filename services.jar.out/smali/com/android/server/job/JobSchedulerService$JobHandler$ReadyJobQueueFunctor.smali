.class Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"

# interfaces
.implements Lcom/android/server/job/JobStore$JobStatusFunctor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService$JobHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReadyJobQueueFunctor"
.end annotation


# instance fields
.field newReadyJobs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService$JobHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postProcess()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;->newReadyJobs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;->newReadyJobs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->noteJobsPending(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;->newReadyJobs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;->newReadyJobs:Ljava/util/ArrayList;

    return-void
.end method

.method public process(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-static {v0, p1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->-wrap1(Lcom/android/server/job/JobSchedulerService$JobHandler;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;->newReadyJobs:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;->newReadyJobs:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;->newReadyJobs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-static {v0, p1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->-wrap0(Lcom/android/server/job/JobSchedulerService$JobHandler;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService;->-wrap1(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;I)Z

    goto :goto_0
.end method
