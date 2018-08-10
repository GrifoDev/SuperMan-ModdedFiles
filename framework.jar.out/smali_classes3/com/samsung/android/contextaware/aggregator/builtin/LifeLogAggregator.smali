.class public Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;
.super Lcom/samsung/android/contextaware/aggregator/Aggregator;
.source "LifeLogAggregator.java"


# direct methods
.method public constructor <init>(ILjava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/manager/ContextComponent;",
            ">;",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/contextaware/aggregator/Aggregator;-><init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->clear()V

    return-void
.end method

.method protected clearAccordingToRequest()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->clearAccordingToRequest()V

    return-void
.end method

.method public final disable()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    return-void
.end method

.method protected display()V
    .locals 0

    return-void
.end method

.method public final enable()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LIFE_LOG:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "LoggingType"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "LoggingBundle"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    return-object p0
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-eq p1, v2, :cond_0

    const/16 v2, 0x1d

    if-ne p1, v2, :cond_3

    :cond_0
    sget-object v2, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_LIFE_LOG_COMPONENT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    return v3

    :cond_3
    const/16 v2, 0x1e

    if-eq p1, v2, :cond_0

    const/16 v2, 0x1f

    if-eq p1, v2, :cond_0

    const/16 v2, 0x20

    if-ne p1, v2, :cond_1

    sget-object v2, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LPP:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getSubCollectionObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    if-nez v0, :cond_5

    sget-object v2, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_SUB_COLLECTOR_NULL_EXCEPTION:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->getCode()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v3

    :cond_5
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextComponent;->setPropertyValue(ILjava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public final declared-synchronized updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    sget-object v3, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_UPDATED_CONTEXT_TYPE_FAULT:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->getCode()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    if-nez p2, :cond_2

    :try_start_1
    sget-object v3, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_UPDATED_CONTEXT_NULL_EXCEPTION:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->getCode()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateContext:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_LIFE_LOG_COMPONENT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "StayingAreaCount"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v1, v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v3, v4, p2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v3, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_LIFE_LOG_COMPONENT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getSubCollectionObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v2

    if-nez v2, :cond_3

    const-string/jumbo v3, "Sub-collection object is null"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v0, v4

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[J)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v4, v0, v4

    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[D)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v4, v0, v4

    const/4 v5, 0x3

    aget-object v5, v0, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[D)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v4, v0, v4

    const/4 v5, 0x4

    aget-object v5, v0, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[D)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x5

    aget-object v4, v0, v4

    const/4 v5, 0x5

    aget-object v5, v0, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x6

    aget-object v4, v0, v4

    const/4 v5, 0x6

    aget-object v5, v0, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x7

    aget-object v4, v0, v4

    const/4 v5, 0x7

    aget-object v5, v0, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->notifyObserver()V

    :cond_4
    const-string/jumbo v3, "MovingCount"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v1, v4

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v3, v4, p2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v3, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_LIFE_LOG_COMPONENT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getSubCollectionObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v2

    if-nez v2, :cond_5

    const-string/jumbo v3, "Sub-collection object is null"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_4
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x8

    aget-object v4, v0, v4

    const/16 v5, 0x8

    aget-object v5, v0, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x9

    aget-object v4, v0, v4

    const/16 v5, 0x9

    aget-object v5, v0, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0xa

    aget-object v4, v0, v4

    const/16 v5, 0xa

    aget-object v5, v0, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0xb

    aget-object v4, v0, v4

    const/16 v5, 0xb

    aget-object v5, v0, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0xc

    aget-object v4, v0, v4

    const/16 v5, 0xc

    aget-object v5, v0, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->notifyObserver()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    :goto_0
    monitor-exit p0

    return-void

    :cond_7
    :try_start_5
    sget-object v3, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LPP:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v1, v4

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v3, v4, p2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v3, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LPP:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getSubCollectionObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v2

    if-nez v2, :cond_8

    const-string/jumbo v3, "Sub-collection object is null"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :cond_8
    :try_start_6
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v0, v4

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[J)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v4, v0, v4

    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[D)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v4, v0, v4

    const/4 v5, 0x3

    aget-object v5, v0, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[D)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v4, v0, v4

    const/4 v5, 0x4

    aget-object v5, v0, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[D)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->notifyObserver()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
