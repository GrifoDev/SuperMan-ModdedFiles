.class public Lcom/samsung/android/contextaware/aggregator/BatchAggregator;
.super Lcom/samsung/android/contextaware/manager/BatchContextProvider;
.source "BatchAggregator.java"


# direct methods
.method public constructor <init>(Lcom/samsung/android/contextaware/manager/ContextComponent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/manager/BatchContextProvider;-><init>(Lcom/samsung/android/contextaware/manager/ContextComponent;)V

    return-void
.end method


# virtual methods
.method public final start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/BatchAggregator;->mProvider:Lcom/samsung/android/contextaware/manager/ContextComponent;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextComponent;->start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    return-void
.end method

.method public final stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/BatchAggregator;->mProvider:Lcom/samsung/android/contextaware/manager/ContextComponent;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextComponent;->stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    return-void
.end method
