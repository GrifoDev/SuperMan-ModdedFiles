.class final enum Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$1;
.super Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;
.source "AggregatorConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;)V

    return-void
.end method


# virtual methods
.method public final getObject()Lcom/samsung/android/contextaware/manager/ContextComponent;
    .locals 6

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->-wrap5()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$1;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->-wrap5()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$1;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->-wrap4()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$1;->makeListForContextCreation()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->-wrap3()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;-><init>(ILjava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->-wrap5()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$1;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/manager/ContextComponent;

    return-object v0
.end method

.method public getSubCollectionList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_GPS:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_SATELLITE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_WPS:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
