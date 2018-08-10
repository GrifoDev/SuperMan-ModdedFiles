.class public abstract Lcom/samsung/android/contextaware/aggregator/Aggregator;
.super Lcom/samsung/android/contextaware/manager/ContextProvider;
.source "Aggregator.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/IContextObserver;
.implements Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;


# instance fields
.field private mAggregatorFaultDetectionResult:Z

.field private final mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/manager/ContextComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/manager/ContextComponent;",
            ">;",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/samsung/android/contextaware/manager/ContextProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    iput-object p4, p0, Lcom/samsung/android/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method protected final checkFaultDetectionResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/Aggregator;->mAggregatorFaultDetectionResult:Z

    return v0
.end method

.method protected final clearExtension()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextComponent;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextComponent;->clear()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected final disableExtension()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->isDisable()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextComponent;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextComponent;->disable()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected final disableForStop(Z)V
    .locals 0

    return-void
.end method

.method protected final enableExtension()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->isEnable()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextComponent;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextComponent;->enable()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected final enableForStart(Z)V
    .locals 0

    return-void
.end method

.method protected final getContextInfo(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_NOT_SUPPORT_CMD:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->checkFaultDetectionResult()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->SUCCESS:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-super {p0, v2, v1}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getFaultDetectionResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SUB_COLLECTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-super {p0, v2, v1}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getFaultDetectionResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method protected final getSubCollectionObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextComponent;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v1

    :cond_1
    return-object v2
.end method

.method protected final getSubCollectors()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/manager/ContextComponent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method protected final initialize()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->initializeAggregator()V

    return-void
.end method

.method protected initializeAggregator()V
    .locals 0

    return-void
.end method

.method protected final initializeFaultDetectionResult()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/Aggregator;->mAggregatorFaultDetectionResult:Z

    return-void
.end method

.method protected final notifyApStatus()V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextComponent;

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;

    invoke-super {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getAPStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->updateAPStatus(I)V

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextComponent;->updateApPowerStatusForPreparedCollection()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    invoke-super {p0, v2}, Lcom/samsung/android/contextaware/manager/ContextProvider;->setAPStatus(I)V

    return-void
.end method

.method public pause()V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextComponent;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextComponent;->pause()V

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->pause()V

    return-void
.end method

.method protected final registerObserver()V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextComponent;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->registerObserver(Lcom/samsung/android/contextaware/manager/IContextObserver;)V

    invoke-virtual {v1, p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->registerCmdProcessResultObserver(Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextComponent;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextComponent;->resume()V

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->resume()V

    return-void
.end method

.method public final start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->initializeFaultDetectionResult()V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->registerObserver()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextComponent;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextComponent;->start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextProvider;->start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    return-void
.end method

.method public final stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->initializeFaultDetectionResult()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->isDisable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextComponent;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextComponent;->stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextProvider;->stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    return-void
.end method

.method protected final terminate()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->unregisterObserver()V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->terminateAggregator()V

    return-void
.end method

.method protected terminateAggregator()V
    .locals 0

    return-void
.end method

.method protected final unregisterObserver()V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextComponent;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->unregisterObserver(Lcom/samsung/android/contextaware/manager/IContextObserver;)V

    invoke-virtual {v1, p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->unregisterCmdProcessResultObserver(Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected updateApSleep()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->notifyApStatus()V

    return-void
.end method

.method protected updateApWakeup()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->notifyApStatus()V

    return-void
.end method

.method public final updateCmdProcessResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    const/4 v1, 0x0

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->CMD_PROCESS_FAULT_DETECTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "CheckResult"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/samsung/android/contextaware/aggregator/Aggregator;->mAggregatorFaultDetectionResult:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " : SubCollection("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    const-string/jumbo v2, "Service"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") process result is failed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public abstract updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
.end method
