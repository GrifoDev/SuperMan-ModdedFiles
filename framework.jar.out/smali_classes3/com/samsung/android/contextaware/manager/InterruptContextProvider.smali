.class public Lcom/samsung/android/contextaware/manager/InterruptContextProvider;
.super Lcom/samsung/android/contextaware/manager/ContextProviderDecorator;
.source "InterruptContextProvider.java"


# direct methods
.method public constructor <init>(Lcom/samsung/android/contextaware/manager/ContextComponent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/manager/ContextProviderDecorator;-><init>(Lcom/samsung/android/contextaware/manager/ContextComponent;)V

    return-void
.end method


# virtual methods
.method public start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/InterruptContextProvider;->mProvider:Lcom/samsung/android/contextaware/manager/ContextComponent;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->initialize()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/InterruptContextProvider;->mProvider:Lcom/samsung/android/contextaware/manager/ContextComponent;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->clear()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/InterruptContextProvider;->mProvider:Lcom/samsung/android/contextaware/manager/ContextComponent;

    invoke-virtual {v0, p2}, Lcom/samsung/android/contextaware/manager/ContextComponent;->enableForStart(I)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/InterruptContextProvider;->mProvider:Lcom/samsung/android/contextaware/manager/ContextComponent;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->registerApPowerObserver()V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/InterruptContextProvider;->mProvider:Lcom/samsung/android/contextaware/manager/ContextComponent;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->notifyFaultDetectionResult()V

    :cond_0
    return-void
.end method

.method public stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/InterruptContextProvider;->mProvider:Lcom/samsung/android/contextaware/manager/ContextComponent;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->clear()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/InterruptContextProvider;->mProvider:Lcom/samsung/android/contextaware/manager/ContextComponent;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->unregisterApPowerObserver()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/InterruptContextProvider;->mProvider:Lcom/samsung/android/contextaware/manager/ContextComponent;

    invoke-virtual {v0, p2}, Lcom/samsung/android/contextaware/manager/ContextComponent;->disableForStop(I)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/InterruptContextProvider;->mProvider:Lcom/samsung/android/contextaware/manager/ContextComponent;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->notifyFaultDetectionResult()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/InterruptContextProvider;->mProvider:Lcom/samsung/android/contextaware/manager/ContextComponent;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->terminate()V

    return-void
.end method
