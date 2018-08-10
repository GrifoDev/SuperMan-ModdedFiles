.class public abstract Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;
.super Lcom/samsung/android/contextaware/aggregator/Aggregator;
.source "EnvironmentSensorAggregator.java"


# instance fields
.field private mLoggingStatus:I


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
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

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/contextaware/aggregator/Aggregator;-><init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->mLoggingStatus:I

    return-void
.end method


# virtual methods
.method protected abstract checkCompensationData([D)Z
.end method

.method protected abstract compensateForRawData([[D)[D
.end method

.method protected final getLoggingStatus()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->mLoggingStatus:I

    return v0
.end method

.method protected final getRawSensorData(Landroid/os/Bundle;Ljava/lang/String;)[D
    .locals 1

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    return-object v0
.end method

.method protected getRawSensorValueNames()[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected notifyCompensationData([D)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->notifyObserver()V

    return-void
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

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getSubCollectors()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextProvider;

    if-eqz v1, :cond_0

    instance-of v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;

    if-eqz v3, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextProvider;->setPropertyValue(ILjava/lang/Object;)Z

    move-result v2

    :cond_1
    return v2
.end method

.method public final updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    const/4 v5, 0x0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->getRawSensorValueNames()[Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    const-string/jumbo v5, "getRawSensorValueNames() is null"

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->getRawSensorValueNames()[Ljava/lang/String;

    move-result-object v6

    array-length v0, v6

    if-gtz v0, :cond_2

    const-string/jumbo v5, "length of getRawSensorValueNames() is zero"

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string/jumbo v6, "LoggingStatus"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->mLoggingStatus:I

    new-array v4, v0, [[D

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->getRawSensorValueNames()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    :goto_0
    if-ge v5, v7, :cond_5

    aget-object v2, v6, v5

    invoke-virtual {p0, p2, v2}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->getRawSensorData(Landroid/os/Bundle;Ljava/lang/String;)[D

    move-result-object v8

    aput-object v8, v4, v3

    aget-object v8, v4, v3

    if-eqz v8, :cond_3

    aget-object v8, v4, v3

    array-length v8, v8

    if-gtz v8, :cond_4

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rawData["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "].length is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_4
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v4}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->compensateForRawData([[D)[D

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, v1}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->checkCompensationData([D)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7

    :cond_6
    return-void

    :cond_7
    invoke-virtual {p0, v1}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->notifyCompensationData([D)V

    return-void
.end method
