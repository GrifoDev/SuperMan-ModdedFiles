.class public Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;
.super Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;
.source "TemperatureHumidityAggregator.java"


# instance fields
.field private mCompensationEngine:Lcom/samsung/android/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;

.field private mSleepTime:J

.field private mWakeupTime:J


# direct methods
.method public constructor <init>(ILjava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 8
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

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;-><init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    iput-object v2, p0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mCompensationEngine:Lcom/samsung/android/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;

    iput-wide v6, p0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    iput-wide v6, p0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    return-void
.end method


# virtual methods
.method protected final checkCompensationData([D)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final clear()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->clear()V

    return-void
.end method

.method protected clearAccordingToRequest()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->clearAccordingToRequest()V

    return-void
.end method

.method protected final compensateForRawData([[D)[D
    .locals 24

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v3, v0

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    :cond_0
    const/4 v3, 0x0

    return-object v3

    :cond_1
    const/4 v3, 0x1

    new-array v8, v3, [D

    const/4 v3, 0x1

    new-array v9, v3, [D

    const/4 v3, 0x0

    aget-object v3, p1, v3

    array-length v0, v3

    move/from16 v17, v0

    const/4 v3, 0x1

    aget-object v3, p1, v3

    array-length v0, v3

    move/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->getLoggingStatus()I

    move-result v20

    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x0

    if-eqz v17, :cond_2

    if-nez v16, :cond_3

    :cond_2
    const/4 v3, 0x0

    return-object v3

    :cond_3
    const/4 v13, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    if-gt v0, v1, :cond_5

    mul-int/lit8 v13, v17, 0x2

    :goto_0
    new-array v2, v13, [D

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    mul-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sleepTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", wakeupTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    sub-long/2addr v4, v6

    div-int/lit8 v3, v13, 0x2

    int-to-long v6, v3

    div-long v14, v4, v6

    const/4 v3, 0x2

    if-le v13, v3, :cond_6

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    move-wide/from16 v22, v0

    sub-long v6, v6, v22

    div-int/lit8 v3, v13, 0x2

    add-int/lit8 v3, v3, -0x1

    int-to-long v0, v3

    move-wide/from16 v22, v0

    mul-long v22, v22, v14

    sub-long v6, v6, v22

    const-wide/16 v22, 0x2

    div-long v6, v6, v22

    add-long v18, v4, v6

    :goto_1
    const/4 v12, 0x0

    :goto_2
    div-int/lit8 v3, v13, 0x2

    if-ge v12, v3, :cond_8

    const/4 v3, 0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mCompensationEngine:Lcom/samsung/android/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;

    invoke-virtual {v3, v8, v9}, Lcom/samsung/android/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;->native_temperaturehumidity_getLastCompensatedData([D[D)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getLastCompensatedData : compensatedTemp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v8, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", compensatedHumid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v9, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    :cond_4
    :goto_3
    const/4 v3, 0x0

    aget-wide v4, v8, v3

    aput-wide v4, v2, v12

    add-int v3, v12, v17

    const/4 v4, 0x0

    aget-wide v4, v9, v4

    aput-wide v4, v2, v3

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_5
    mul-int/lit8 v13, v16, 0x2

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    move-wide/from16 v22, v0

    sub-long v6, v6, v22

    const-wide/16 v22, 0x2

    div-long v6, v6, v22

    add-long v18, v4, v6

    goto :goto_1

    :cond_7
    const/4 v3, 0x2

    move/from16 v0, v20

    if-ne v0, v3, :cond_4

    int-to-long v4, v12

    mul-long/2addr v4, v14

    add-long v10, v18, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mCompensationEngine:Lcom/samsung/android/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;

    const/4 v4, 0x0

    aget-object v4, p1, v4

    aget-wide v4, v4, v12

    const/4 v6, 0x1

    aget-object v6, p1, v6

    aget-wide v6, v6, v12

    invoke-virtual/range {v3 .. v11}, Lcom/samsung/android/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;->native_temperaturehumidity_getCompensatedData(DD[D[DJ)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RawData : rawTempData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, p1, v4

    aget-wide v4, v4, v12

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", rawHumidData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, p1, v4

    aget-wide v4, v4, v12

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", compensatedTemp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v8, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",  compensatedHumid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v9, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", timestamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    return-object v2
.end method

.method public final disable()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    return-void
.end method

.method public final enable()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_TEMPERATURE_HUMIDITY:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Temperature"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "Humidity"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->getFaultDetectionResult()Landroid/os/Bundle;

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

.method protected final getRawSensorValueNames()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Temperature"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "Humidity"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected final initializeAggregator()V
    .locals 1

    new-instance v0, Lcom/samsung/android/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mCompensationEngine:Lcom/samsung/android/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;

    return-void
.end method

.method protected final notifyCompensationData([D)V
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v4

    array-length v5, p1

    div-int/lit8 v3, v5, 0x2

    new-array v1, v3, [D

    new-array v0, v3, [D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-wide v6, p1, v2

    aput-wide v6, v1, v2

    add-int v5, v2, v3

    aget-wide v6, p1, v5

    aput-wide v6, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v5, v6, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->notifyObserver()V

    return-void
.end method

.method protected final terminateAggregator()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mCompensationEngine:Lcom/samsung/android/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;

    return-void
.end method

.method protected final updateApSleep()V
    .locals 6

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->getTimeStampForApStatus()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    mul-long v0, v2, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timeStamp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->updateApSleep()V

    return-void
.end method
