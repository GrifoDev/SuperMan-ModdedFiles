.class public Lcom/samsung/android/contextaware/manager/ContextManager;
.super Ljava/lang/Object;
.source "ContextManager.java"


# instance fields
.field private final mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/creator/ContextProviderCreator;",
            ">;"
        }
    .end annotation
.end field

.field private final mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/utilbundle/IUtilManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;I)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;

    invoke-direct {v6, p1}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;->getPowerObservable()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v3

    invoke-direct {v2, p1, p2, v3, p3}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;I)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;->getPowerObservable()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v3

    invoke-direct {v2, p1, p2, v3, p3}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;I)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;->getPowerObservable()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v4

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;I)V

    invoke-virtual {v7, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p2}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->getInstance(Landroid/os/Looper;)Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/manager/ContextManager;->initializeUtil(Landroid/content/Context;)V

    return-void
.end method

.method private initializeUtil(Landroid/content/Context;)V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/utilbundle/IUtilManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/contextaware/utilbundle/IUtilManager;->initializeManager(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected final getContextInfo(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Lcom/samsung/android/contextaware/manager/IContextObserver;)V
    .locals 3

    invoke-virtual {p0, p2}, Lcom/samsung/android/contextaware/manager/ContextManager;->getContextProviderObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/samsung/android/contextaware/manager/ContextProvider;->registerObserver(Lcom/samsung/android/contextaware/manager/IContextObserver;)V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getCmdProcessResultObserver()Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/manager/ContextProvider;->registerCmdProcessResultObserver(Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;)V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getContextInfo(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)V

    :cond_0
    return-void
.end method

.method protected final getContextProviderObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->existContextProvider(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->create(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method protected final getCreator()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/creator/ContextProviderCreator;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public final notifyInitContext(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/manager/ContextManager;->getContextProviderObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextProvider;->notifyInitContext()V

    :cond_0
    return-void
.end method

.method protected removeContextProviderObj(Ljava/lang/String;)V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->existContextProvider(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->removeContextObj(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected final reset(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/manager/ContextManager;->getContextProviderObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_NOT_RUNNING:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_NOT_RUNNING:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextProvider;->isRunning()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_NOT_RUNNING:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ContextProvider;->clearAccordingToRequest()V

    return-void
.end method

.method protected final setProperty(Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "ITE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/manager/ContextManager;->getContextProviderObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/samsung/android/contextaware/manager/ContextProvider;->setProperty(ILjava/lang/Object;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method protected final setVersion(I)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-static {p1}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->setVersion(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Lcom/samsung/android/contextaware/manager/IContextObserver;I)V
    .locals 3

    invoke-virtual {p0, p2}, Lcom/samsung/android/contextaware/manager/ContextManager;->getContextProviderObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/samsung/android/contextaware/manager/ContextProvider;->registerObserver(Lcom/samsung/android/contextaware/manager/IContextObserver;)V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getCmdProcessResultObserver()Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/manager/ContextProvider;->registerCmdProcessResultObserver(Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;)V

    invoke-virtual {v0, p1, p4}, Lcom/samsung/android/contextaware/manager/ContextComponent;->start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    :cond_0
    return-void
.end method

.method public final stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Lcom/samsung/android/contextaware/manager/IContextObserver;Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;I)V
    .locals 4

    invoke-virtual {p0, p2}, Lcom/samsung/android/contextaware/manager/ContextManager;->getContextProviderObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p5}, Lcom/samsung/android/contextaware/manager/ContextComponent;->stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceOrdinal(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->getServices()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->getServices()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/samsung/android/contextaware/manager/ContextProvider;->unregisterCmdProcessResultObserver(Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;)V

    :goto_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/contextaware/manager/ContextManager;->removeContextProviderObj(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getCmdProcessResultObserver()Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/contextaware/manager/ContextProvider;->unregisterCmdProcessResultObserver(Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;)V

    goto :goto_0
.end method

.method protected final unregisterObservers(Ljava/lang/String;Lcom/samsung/android/contextaware/manager/IContextObserver;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/manager/ContextManager;->getContextProviderObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getCmdProcessResultObserver()Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/manager/ContextProvider;->unregisterCmdProcessResultObserver(Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;)V

    :cond_0
    return-void
.end method
