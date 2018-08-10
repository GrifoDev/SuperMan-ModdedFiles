.class public Landroid/filterfw/core/SyncRunner;
.super Landroid/filterfw/core/GraphRunner;
.source "SyncRunner.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncRunner"


# instance fields
.field private mDoneListener:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

.field private final mLogVerbose:Z

.field private mScheduler:Landroid/filterfw/core/Scheduler;

.field private mTimer:Landroid/filterfw/core/StopWatchMap;

.field private mWakeCondition:Landroid/os/ConditionVariable;

.field private mWakeExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FilterGraph;Ljava/lang/Class;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-direct {p0, p1}, Landroid/filterfw/core/GraphRunner;-><init>(Landroid/filterfw/core/FilterContext;)V

    iput-object v8, p0, Landroid/filterfw/core/SyncRunner;->mScheduler:Landroid/filterfw/core/Scheduler;

    iput-object v8, p0, Landroid/filterfw/core/SyncRunner;->mDoneListener:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    new-instance v6, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v6, v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v6, p0, Landroid/filterfw/core/SyncRunner;->mWakeExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v6, Landroid/os/ConditionVariable;

    invoke-direct {v6}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v6, p0, Landroid/filterfw/core/SyncRunner;->mWakeCondition:Landroid/os/ConditionVariable;

    iput-object v8, p0, Landroid/filterfw/core/SyncRunner;->mTimer:Landroid/filterfw/core/StopWatchMap;

    const-string/jumbo v6, "SyncRunner"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    iput-boolean v6, p0, Landroid/filterfw/core/SyncRunner;->mLogVerbose:Z

    iget-boolean v6, p0, Landroid/filterfw/core/SyncRunner;->mLogVerbose:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "SyncRunner"

    const-string/jumbo v7, "Initializing SyncRunner"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-class v6, Landroid/filterfw/core/Scheduler;

    invoke-virtual {v6, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    :try_start_0
    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/filterfw/core/FilterGraph;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {p3, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/filterfw/core/Scheduler;

    iput-object v6, p0, Landroid/filterfw/core/SyncRunner;->mScheduler:Landroid/filterfw/core/Scheduler;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Landroid/filterfw/core/SyncRunner;->mFilterContext:Landroid/filterfw/core/FilterContext;

    iget-object v6, p0, Landroid/filterfw/core/SyncRunner;->mFilterContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v6, p2}, Landroid/filterfw/core/FilterContext;->addGraph(Landroid/filterfw/core/FilterGraph;)V

    new-instance v6, Landroid/filterfw/core/StopWatchMap;

    invoke-direct {v6}, Landroid/filterfw/core/StopWatchMap;-><init>()V

    iput-object v6, p0, Landroid/filterfw/core/SyncRunner;->mTimer:Landroid/filterfw/core/StopWatchMap;

    iget-boolean v6, p0, Landroid/filterfw/core/SyncRunner;->mLogVerbose:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "SyncRunner"

    const-string/jumbo v7, "Setting up filters"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p2}, Landroid/filterfw/core/FilterGraph;->setupFilters()V

    return-void

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Could not instantiate Scheduler"

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_1
    move-exception v4

    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Scheduler constructor threw an exception"

    invoke-direct {v6, v7, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_2
    move-exception v1

    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Cannot access Scheduler constructor!"

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_3
    move-exception v2

    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Could not instantiate the Scheduler instance!"

    invoke-direct {v6, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_4
    move-exception v3

    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Scheduler does not have constructor <init>(FilterGraph)!"

    invoke-direct {v6, v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Class provided is not a Scheduler subclass!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method assertReadyToStep()V
    .locals 2

    iget-object v0, p0, Landroid/filterfw/core/SyncRunner;->mScheduler:Landroid/filterfw/core/Scheduler;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Attempting to run schedule with no scheduler in place!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Landroid/filterfw/core/SyncRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Calling step on scheduler with no graph in place!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public beginProcessing()V
    .locals 1

    iget-object v0, p0, Landroid/filterfw/core/SyncRunner;->mScheduler:Landroid/filterfw/core/Scheduler;

    invoke-virtual {v0}, Landroid/filterfw/core/Scheduler;->reset()V

    invoke-virtual {p0}, Landroid/filterfw/core/SyncRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FilterGraph;->beginProcessing()V

    return-void
.end method

.method public close()V
    .locals 2

    iget-boolean v0, p0, Landroid/filterfw/core/SyncRunner;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SyncRunner"

    const-string/jumbo v1, "Closing graph."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/filterfw/core/SyncRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v0

    iget-object v1, p0, Landroid/filterfw/core/SyncRunner;->mFilterContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FilterGraph;->closeFilters(Landroid/filterfw/core/FilterContext;)V

    iget-object v0, p0, Landroid/filterfw/core/SyncRunner;->mScheduler:Landroid/filterfw/core/Scheduler;

    invoke-virtual {v0}, Landroid/filterfw/core/Scheduler;->reset()V

    return-void
.end method

.method protected determinePostRunState()I
    .locals 5

    const/4 v4, 0x4

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/filterfw/core/SyncRunner;->mScheduler:Landroid/filterfw/core/Scheduler;

    invoke-virtual {v3}, Landroid/filterfw/core/Scheduler;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/FilterGraph;->getFilters()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/Filter;

    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->getStatus()I

    move-result v3

    if-ne v3, v4, :cond_1

    const/4 v3, 0x3

    return v3

    :cond_1
    return v4

    :cond_2
    const/4 v3, 0x2

    return v3
.end method

.method public declared-synchronized getError()Ljava/lang/Exception;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public getGraph()Landroid/filterfw/core/FilterGraph;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/filterfw/core/SyncRunner;->mScheduler:Landroid/filterfw/core/Scheduler;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/filterfw/core/SyncRunner;->mScheduler:Landroid/filterfw/core/Scheduler;

    invoke-virtual {v0}, Landroid/filterfw/core/Scheduler;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method performStep()Z
    .locals 3

    iget-boolean v1, p0, Landroid/filterfw/core/SyncRunner;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SyncRunner"

    const-string/jumbo v2, "Performing one step."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/filterfw/core/SyncRunner;->mScheduler:Landroid/filterfw/core/Scheduler;

    invoke-virtual {v1}, Landroid/filterfw/core/Scheduler;->scheduleNextNode()Landroid/filterfw/core/Filter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/filterfw/core/SyncRunner;->mTimer:Landroid/filterfw/core/StopWatchMap;

    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/filterfw/core/StopWatchMap;->start(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/filterfw/core/SyncRunner;->processFilterNode(Landroid/filterfw/core/Filter;)V

    iget-object v1, p0, Landroid/filterfw/core/SyncRunner;->mTimer:Landroid/filterfw/core/StopWatchMap;

    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/filterfw/core/StopWatchMap;->stop(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method protected processFilterNode(Landroid/filterfw/core/Filter;)V
    .locals 3

    iget-boolean v0, p0, Landroid/filterfw/core/SyncRunner;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SyncRunner"

    const-string/jumbo v1, "Processing filter node"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/SyncRunner;->mFilterContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {p1, v0}, Landroid/filterfw/core/Filter;->performProcess(Landroid/filterfw/core/FilterContext;)V

    invoke-virtual {p1}, Landroid/filterfw/core/Filter;->getStatus()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "There was an error executing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Landroid/filterfw/core/Filter;->getStatus()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Landroid/filterfw/core/SyncRunner;->mLogVerbose:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "SyncRunner"

    const-string/jumbo v1, "Scheduling filter wakeup"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p1}, Landroid/filterfw/core/Filter;->getSleepDelay()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/filterfw/core/SyncRunner;->scheduleFilterWake(Landroid/filterfw/core/Filter;I)V

    :cond_3
    return-void
.end method

.method public run()V
    .locals 4

    iget-boolean v2, p0, Landroid/filterfw/core/SyncRunner;->mLogVerbose:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SyncRunner"

    const-string/jumbo v3, "Beginning run."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/filterfw/core/SyncRunner;->assertReadyToStep()V

    invoke-virtual {p0}, Landroid/filterfw/core/SyncRunner;->beginProcessing()V

    invoke-virtual {p0}, Landroid/filterfw/core/SyncRunner;->activateGlContext()Z

    move-result v0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/filterfw/core/SyncRunner;->performStep()Z

    move-result v1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/filterfw/core/SyncRunner;->deactivateGlContext()V

    :cond_2
    iget-object v2, p0, Landroid/filterfw/core/SyncRunner;->mDoneListener:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Landroid/filterfw/core/SyncRunner;->mLogVerbose:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "SyncRunner"

    const-string/jumbo v3, "Calling completion listener."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Landroid/filterfw/core/SyncRunner;->mDoneListener:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    invoke-virtual {p0}, Landroid/filterfw/core/SyncRunner;->determinePostRunState()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;->onRunnerDone(I)V

    :cond_4
    iget-boolean v2, p0, Landroid/filterfw/core/SyncRunner;->mLogVerbose:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "SyncRunner"

    const-string/jumbo v3, "Run complete"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method protected scheduleFilterWake(Landroid/filterfw/core/Filter;I)V
    .locals 7

    iget-object v2, p0, Landroid/filterfw/core/SyncRunner;->mWakeCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->close()V

    move-object v1, p1

    iget-object v0, p0, Landroid/filterfw/core/SyncRunner;->mWakeCondition:Landroid/os/ConditionVariable;

    iget-object v2, p0, Landroid/filterfw/core/SyncRunner;->mWakeExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v3, Landroid/filterfw/core/SyncRunner$1;

    invoke-direct {v3, p0, p1, v0}, Landroid/filterfw/core/SyncRunner$1;-><init>(Landroid/filterfw/core/SyncRunner;Landroid/filterfw/core/Filter;Landroid/os/ConditionVariable;)V

    int-to-long v4, p2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public setDoneCallback(Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;)V
    .locals 0

    iput-object p1, p0, Landroid/filterfw/core/SyncRunner;->mDoneListener:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    return-void
.end method

.method public step()I
    .locals 2

    invoke-virtual {p0}, Landroid/filterfw/core/SyncRunner;->assertReadyToStep()V

    invoke-virtual {p0}, Landroid/filterfw/core/SyncRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FilterGraph;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Trying to process graph that is not open!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Landroid/filterfw/core/SyncRunner;->performStep()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/filterfw/core/SyncRunner;->determinePostRunState()I

    move-result v0

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "SyncRunner does not support stopping a graph!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected waitUntilWake()V
    .locals 1

    iget-object v0, p0, Landroid/filterfw/core/SyncRunner;->mWakeCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method
