.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "DevicePhysicalContextMonitorRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;
    }
.end annotation


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    return-void
.end method

.method public final disable()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    return-void
.end method

.method public final enable()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_DEVICE_PHYSICAL_CONTEXT_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "AODStatus"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "VersionYear"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "VersionMonth"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "VersionDay"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "VersionRevision"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "AODReason"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    new-array v0, v2, [B

    aput-byte v3, v0, v3

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v1

    aget v2, v1, v3

    invoke-static {v2, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    aget-byte v2, v2, v3

    aput-byte v2, v0, v4

    aget v2, v1, v4

    invoke-static {v2, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    aget-byte v2, v2, v3

    aput-byte v2, v0, v5

    aget v2, v1, v5

    invoke-static {v2, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    aget-byte v2, v2, v3

    const/4 v3, 0x3

    aput-byte v2, v0, v3

    return-object v0
.end method

.method protected final getDataPacketToUnregisterLib()[B
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [B

    aput-byte v2, v0, v2

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    const/16 v0, 0x38

    return v0
.end method

.method public getParseSyntaxTable()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;",
            ">;>;"
        }
    .end annotation

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(B)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->AODStatus:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    invoke-static {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;)B

    move-result v6

    aget-object v6, v1, v6

    invoke-direct {v4, v5, v8, v9, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->AODReason:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    invoke-static {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;)B

    move-result v6

    aget-object v6, v1, v6

    invoke-direct {v4, v5, v8, v9, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(B)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->VersionYear:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    invoke-static {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;)B

    move-result v6

    aget-object v6, v1, v6

    invoke-direct {v4, v5, v8, v9, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->VersionMonth:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    invoke-static {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;)B

    move-result v6

    aget-object v6, v1, v6

    invoke-direct {v4, v5, v8, v9, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->VersionDay:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    invoke-static {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;)B

    move-result v6

    aget-object v6, v1, v6

    invoke-direct {v4, v5, v8, v9, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->VersionRevision:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    invoke-static {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;)B

    move-result v6

    aget-object v6, v1, v6

    invoke-direct {v4, v5, v8, v9, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    return-object p0
.end method

.method protected final getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    .locals 0

    return-object p0
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v9, 0x7

    if-ne p1, v9, :cond_0

    const-string/jumbo v9, "Get status"

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    const/4 v9, 0x2

    new-array v4, v9, [B

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-byte v9, v4, v10

    const/4 v9, 0x1

    const/4 v10, 0x1

    aput-byte v9, v4, v10

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner;->getInstLibType()B

    move-result v9

    const/16 v10, -0x48

    invoke-virtual {p0, v10, v9, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner;->sendCmdToSensorHub(BB[B)V

    :goto_0
    return v5

    :cond_0
    const/16 v9, 0x8

    if-ne p1, v9, :cond_1

    const-string/jumbo v9, "Get version"

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    const/4 v9, 0x2

    new-array v4, v9, [B

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-byte v9, v4, v10

    const/4 v9, 0x1

    const/4 v10, 0x1

    aput-byte v9, v4, v10

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner;->getInstLibType()B

    move-result v9

    const/16 v10, -0x48

    invoke-virtual {p0, v10, v9, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner;->sendCmdToSensorHub(BB[B)V

    goto :goto_0

    :cond_1
    const/16 v9, 0x50

    if-ne p1, v9, :cond_2

    :try_start_0
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    const/4 v9, 0x2

    new-array v4, v9, [B

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-byte v9, v4, v10

    const/4 v9, 0x1

    invoke-static {v0, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    const/4 v10, 0x1

    aput-byte v9, v4, v10

    const/16 v9, 0x17

    const/16 v10, 0x38

    const/4 v11, 0x1

    invoke-virtual {p0, v9, v10, v11, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "DPCM setProperty Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", sensorProx = 1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v9, 0x51

    if-ne p1, v9, :cond_3

    :try_start_1
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    :goto_2
    const/4 v9, 0x2

    new-array v4, v9, [B

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-byte v9, v4, v10

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    const/4 v10, 0x1

    aput-byte v9, v4, v10

    const/16 v9, 0x17

    const/16 v10, 0x38

    const/4 v11, 0x2

    invoke-virtual {p0, v9, v10, v11, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    :catch_1
    move-exception v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "DPCM setProperty Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", sensorProx = 1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/16 v9, 0x52

    if-ne p1, v9, :cond_4

    :try_start_2
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    :goto_3
    const/4 v9, 0x2

    new-array v4, v9, [B

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-byte v9, v4, v10

    const/4 v9, 0x1

    invoke-static {v7, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    const/4 v10, 0x1

    aput-byte v9, v4, v10

    const/16 v9, 0x17

    const/16 v10, 0x38

    const/4 v11, 0x2

    invoke-virtual {p0, v9, v10, v11, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    :catch_2
    move-exception v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "DPCM setProperty Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", sensorBright = 1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v7, 0x1

    goto :goto_3

    :cond_4
    const/16 v9, 0x53

    if-ne p1, v9, :cond_5

    :try_start_3
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v1

    :goto_4
    const/4 v9, 0x3

    new-array v4, v9, [B

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-byte v9, v4, v10

    const/4 v9, 0x2

    invoke-static {v1, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    const/4 v10, 0x1

    aput-byte v9, v4, v10

    const/4 v9, 0x2

    invoke-static {v1, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    const/4 v10, 0x2

    aput-byte v9, v4, v10

    const/16 v9, 0x17

    const/16 v10, 0x38

    const/4 v11, 0x3

    invoke-virtual {p0, v9, v10, v11, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    :catch_3
    move-exception v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "DPCM setProperty Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", aodDuration = 600"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/16 v1, 0x258

    goto :goto_4

    :cond_5
    const/16 v9, 0x54

    if-ne p1, v9, :cond_6

    :try_start_4
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v2

    :goto_5
    const/4 v9, 0x3

    new-array v4, v9, [B

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-byte v9, v4, v10

    const/4 v9, 0x2

    invoke-static {v2, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    const/4 v10, 0x1

    aput-byte v9, v4, v10

    const/4 v9, 0x2

    invoke-static {v2, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    const/4 v10, 0x2

    aput-byte v9, v4, v10

    const/16 v9, 0x17

    const/16 v10, 0x38

    const/4 v11, 0x3

    invoke-virtual {p0, v9, v10, v11, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    :catch_4
    move-exception v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "DPCM setProperty Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", duration = 3*1000"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/16 v2, 0xbb8

    goto :goto_5

    :cond_6
    const/16 v9, 0x55

    if-ne p1, v9, :cond_7

    :try_start_5
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result v2

    :goto_6
    const/4 v9, 0x3

    new-array v4, v9, [B

    const/4 v9, 0x3

    const/4 v10, 0x0

    aput-byte v9, v4, v10

    const/4 v9, 0x2

    invoke-static {v2, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    const/4 v10, 0x1

    aput-byte v9, v4, v10

    const/4 v9, 0x2

    invoke-static {v2, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    const/4 v10, 0x2

    aput-byte v9, v4, v10

    const/16 v9, 0x17

    const/16 v10, 0x38

    const/4 v11, 0x3

    invoke-virtual {p0, v9, v10, v11, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    :catch_5
    move-exception v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "DPCM setProperty Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", duration = 60*1000"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const v2, 0xea60

    goto :goto_6

    :cond_7
    const/16 v9, 0x56

    if-ne p1, v9, :cond_8

    :try_start_6
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-result v2

    :goto_7
    const/4 v9, 0x3

    new-array v4, v9, [B

    const/4 v9, 0x4

    const/4 v10, 0x0

    aput-byte v9, v4, v10

    const/4 v9, 0x2

    invoke-static {v2, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    const/4 v10, 0x1

    aput-byte v9, v4, v10

    const/4 v9, 0x2

    invoke-static {v2, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    const/4 v10, 0x2

    aput-byte v9, v4, v10

    const/16 v9, 0x17

    const/16 v10, 0x38

    const/4 v11, 0x3

    invoke-virtual {p0, v9, v10, v11, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    :catch_6
    move-exception v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "DPCM setProperty Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", duration = 3*1000"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/16 v2, 0xbb8

    goto :goto_7

    :cond_8
    const/16 v9, 0x57

    if-ne p1, v9, :cond_9

    :try_start_7
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-result v6

    :goto_8
    const/4 v9, 0x5

    new-array v4, v9, [B

    const/4 v9, 0x4

    invoke-static {v6, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    const/4 v10, 0x0

    aput-byte v9, v4, v10

    const/4 v9, 0x4

    invoke-static {v6, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    const/4 v10, 0x1

    aput-byte v9, v4, v10

    const/4 v9, 0x4

    invoke-static {v6, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x2

    aget-byte v9, v9, v10

    const/4 v10, 0x2

    aput-byte v9, v4, v10

    const/4 v9, 0x4

    invoke-static {v6, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x3

    aget-byte v9, v9, v10

    const/4 v10, 0x3

    aput-byte v9, v4, v10

    const/4 v9, 0x1

    const/4 v10, 0x4

    aput-byte v9, v4, v10

    const/16 v9, 0x17

    const/16 v10, 0x38

    const/4 v11, 0x4

    invoke-virtual {p0, v9, v10, v11, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    :catch_7
    move-exception v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "DPCM setProperty Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", scenario = 15"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/16 v6, 0xf

    goto :goto_8

    :cond_9
    const/16 v9, 0x58

    if-ne p1, v9, :cond_a

    :try_start_8
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    move-result v6

    :goto_9
    const/4 v9, 0x5

    new-array v4, v9, [B

    const/4 v9, 0x4

    invoke-static {v6, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    const/4 v10, 0x0

    aput-byte v9, v4, v10

    const/4 v9, 0x4

    invoke-static {v6, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    const/4 v10, 0x1

    aput-byte v9, v4, v10

    const/4 v9, 0x4

    invoke-static {v6, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x2

    aget-byte v9, v9, v10

    const/4 v10, 0x2

    aput-byte v9, v4, v10

    const/4 v9, 0x4

    invoke-static {v6, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x3

    aget-byte v9, v9, v10

    const/4 v10, 0x3

    aput-byte v9, v4, v10

    const/4 v9, 0x2

    const/4 v10, 0x4

    aput-byte v9, v4, v10

    const/16 v9, 0x17

    const/16 v10, 0x38

    const/4 v11, 0x4

    invoke-virtual {p0, v9, v10, v11, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    :catch_8
    move-exception v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "DPCM setProperty Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", scenario = 15"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/16 v6, 0xf

    goto :goto_9

    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_0
.end method
