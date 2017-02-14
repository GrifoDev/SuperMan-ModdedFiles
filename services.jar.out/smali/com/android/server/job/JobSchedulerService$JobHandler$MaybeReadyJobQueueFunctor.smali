.class Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;
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
    name = "MaybeReadyJobQueueFunctor"
.end annotation


# instance fields
.field backoffCount:I

.field chargingCount:I

.field connectivityCount:I

.field contentCount:I

.field idleCount:I

.field runnableJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService$JobHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->reset()V

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->chargingCount:I

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->idleCount:I

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->backoffCount:I

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->connectivityCount:I

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->contentCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public postProcess()V
    .locals 2

    iget v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->backoffCount:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->idleCount:I

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_IDLE_COUNT:I

    if-lt v0, v1, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->noteJobsPending(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->reset()V

    return-void

    :cond_2
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->connectivityCount:I

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CONNECTIVITY_COUNT:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->chargingCount:I

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CHARGING_COUNT:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->contentCount:I

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CONTENT_COUNT:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_JOBS_COUNT:I

    if-lt v0, v1, :cond_1

    goto :goto_0
.end method

.method public process(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 5

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-static {v1, p1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->-wrap1(Lcom/android/server/job/JobSchedulerService$JobHandler;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    if-eqz v1, :cond_9

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->getAppStartMode(ILjava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_0

    const-string/jumbo v1, "JobSchedulerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Aborting job "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -- package not allowed to start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v1

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->backoffCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->backoffCount:I

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->idleCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->idleCount:I

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasUnmeteredConstraint()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasNotRoamingConstraint()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->connectivityCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->connectivityCount:I

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->chargingCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->chargingCount:I

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->contentCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->contentCount:I

    :cond_6
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    if-nez v1, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    :cond_7
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_0
    return-void

    :cond_9
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-static {v1, p1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->-wrap0(Lcom/android/server/job/JobSchedulerService$JobHandler;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/android/server/job/JobSchedulerService;->-wrap1(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;I)Z

    goto :goto_0
.end method
