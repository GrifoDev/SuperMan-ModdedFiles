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
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 78
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .prologue
    .line 497
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 498
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 496
    return-void
.end method

.method public final disable()V
    .locals 0

    .prologue
    .line 486
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 487
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 485
    return-void
.end method

.method public final enable()V
    .locals 0

    .prologue
    .line 471
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 472
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 470
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_DEVICE_PHYSICAL_CONTEXT_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 429
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 430
    const-string/jumbo v1, "AODStatus"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 431
    const-string/jumbo v1, "VersionYear"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 432
    const-string/jumbo v1, "VersionMonth"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 433
    const-string/jumbo v1, "VersionDay"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 434
    const-string/jumbo v1, "VersionRevision"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 435
    const-string/jumbo v1, "AODReason"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 429
    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 113
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 115
    .local v0, "packet":[B
    aput-byte v3, v0, v3

    .line 117
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v1

    .line 120
    .local v1, "utcTime":[I
    aget v2, v1, v3

    invoke-static {v2, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    aget-byte v2, v2, v3

    aput-byte v2, v0, v4

    .line 121
    aget v2, v1, v4

    invoke-static {v2, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    aget-byte v2, v2, v3

    aput-byte v2, v0, v5

    .line 122
    aget v2, v1, v5

    invoke-static {v2, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    aget-byte v2, v2, v3

    const/4 v3, 0x3

    aput-byte v2, v0, v3

    .line 124
    return-object v0
.end method

.method protected final getDataPacketToUnregisterLib()[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 135
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 137
    .local v0, "packet":[B
    aput-byte v2, v0, v2

    .line 138
    const/4 v1, 0x1

    aput-byte v2, v0, v1

    .line 140
    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 522
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .prologue
    .line 101
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

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 394
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v2, "outerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v0, "aodStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v3, "versionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, "names":[Ljava/lang/String;
    new-instance v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(B)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    new-instance v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->AODStatus:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    invoke-static {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;)B

    move-result v6

    aget-object v6, v1, v6

    invoke-direct {v4, v5, v8, v9, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    new-instance v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->AODReason:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    invoke-static {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;)B

    move-result v6

    aget-object v6, v1, v6

    invoke-direct {v4, v5, v8, v9, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    new-instance v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(B)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    new-instance v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->VersionYear:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    invoke-static {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;)B

    move-result v6

    aget-object v6, v1, v6

    invoke-direct {v4, v5, v8, v9, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    new-instance v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->VersionMonth:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    invoke-static {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;)B

    move-result v6

    aget-object v6, v1, v6

    invoke-direct {v4, v5, v8, v9, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    new-instance v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->VersionDay:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    invoke-static {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;)B

    move-result v6

    aget-object v6, v1, v6

    invoke-direct {v4, v5, v8, v9, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    new-instance v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->VersionRevision:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    invoke-static {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;)B

    move-result v6

    aget-object v6, v1, v6

    invoke-direct {v4, v5, v8, v9, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    return-object v2
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 447
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    .line 459
    return-object p0
.end method

.method protected final getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    .locals 0

    .prologue
    .line 509
    return-object p0
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 12
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .line 152
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v5, 0x1

    .line 154
    .local v5, "result":Z
    const/4 v9, 0x7

    if-ne p1, v9, :cond_0

    .line 155
    const-string/jumbo v9, "Get status"

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 157
    const/4 v9, 0x2

    new-array v4, v9, [B

    .line 158
    .local v4, "packet":[B
    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-byte v9, v4, v10

    .line 159
    const/4 v9, 0x1

    const/4 v10, 0x1

    aput-byte v9, v4, v10

    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner;->getInstLibType()B

    move-result v9

    const/16 v10, -0x48

    invoke-virtual {p0, v10, v9, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendCmdToSensorHub(BB[B)V

    .line 381
    .end local v4    # "packet":[B
    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    :goto_0
    return v5

    .line 162
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_0
    const/16 v9, 0x8

    if-ne p1, v9, :cond_1

    .line 163
    const-string/jumbo v9, "Get version"

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 165
    const/4 v9, 0x2

    new-array v4, v9, [B

    .line 166
    .restart local v4    # "packet":[B
    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-byte v9, v4, v10

    .line 167
    const/4 v9, 0x1

    const/4 v10, 0x1

    aput-byte v9, v4, v10

    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner;->getInstLibType()B

    move-result v9

    const/16 v10, -0x48

    invoke-virtual {p0, v10, v9, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendCmdToSensorHub(BB[B)V

    goto :goto_0

    .line 170
    .end local v4    # "packet":[B
    :cond_1
    const/16 v9, 0x50

    if-ne p1, v9, :cond_2

    .line 174
    :try_start_0
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 182
    .local v0, "aod":I
    :goto_1
    const/4 v9, 0x2

    new-array v4, v9, [B

    .line 183
    .restart local v4    # "packet":[B
    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-byte v9, v4, v10

    .line 184
    const/4 v9, 0x1

    invoke-static {v0, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    const/4 v10, 0x1

    aput-byte v9, v4, v10

    .line 187
    const/16 v9, 0x17

    .line 188
    const/16 v10, 0x38

    .line 189
    const/4 v11, 0x1

    .line 186
    invoke-virtual {p0, v9, v10, v11, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendPropertyValueToSensorHub(BBB[B)Z

    goto :goto_0

    .line 177
    .end local v0    # "aod":I
    .end local v4    # "packet":[B
    :catch_0
    move-exception v3

    .line 178
    .local v3, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "DPCM setProperty Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

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

    .line 179
    const/4 v0, 0x1

    .restart local v0    # "aod":I
    goto :goto_1

    .line 192
    .end local v0    # "aod":I
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_2
    const/16 v9, 0x51

    if-ne p1, v9, :cond_3

    .line 196
    :try_start_1
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 205
    .local v8, "sensorProx":I
    :goto_2
    const/4 v9, 0x2

    new-array v4, v9, [B

    .line 206
    .restart local v4    # "packet":[B
    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-byte v9, v4, v10

    .line 207
    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    const/4 v10, 0x1

    aput-byte v9, v4, v10

    .line 210
    const/16 v9, 0x17

    .line 211
    const/16 v10, 0x38

    .line 212
    const/4 v11, 0x2

    .line 209
    invoke-virtual {p0, v9, v10, v11, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    .line 200
    .end local v4    # "packet":[B
    .end local v8    # "sensorProx":I
    :catch_1
    move-exception v3

    .line 201
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "DPCM setProperty Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

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

    .line 202
    const/4 v8, 0x1

    .restart local v8    # "sensorProx":I
    goto :goto_2

    .line 216
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v8    # "sensorProx":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_3
    const/16 v9, 0x52

    if-ne p1, v9, :cond_4

    .line 220
    :try_start_2
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    .line 229
    .local v7, "sensorBright":I
    :goto_3
    const/4 v9, 0x2

    new-array v4, v9, [B

    .line 230
    .restart local v4    # "packet":[B
    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-byte v9, v4, v10

    .line 231
    const/4 v9, 0x1

    invoke-static {v7, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    const/4 v10, 0x1

    aput-byte v9, v4, v10

    .line 234
    const/16 v9, 0x17

    .line 235
    const/16 v10, 0x38

    .line 236
    const/4 v11, 0x2

    .line 233
    invoke-virtual {p0, v9, v10, v11, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    .line 224
    .end local v4    # "packet":[B
    .end local v7    # "sensorBright":I
    :catch_2
    move-exception v3

    .line 225
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "DPCM setProperty Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

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

    .line 226
    const/4 v7, 0x1

    .restart local v7    # "sensorBright":I
    goto :goto_3

    .line 238
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v7    # "sensorBright":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_4
    const/16 v9, 0x53

    if-ne p1, v9, :cond_5

    .line 242
    :try_start_3
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v1

    .line 251
    .local v1, "aodDuration":I
    :goto_4
    const/4 v9, 0x3

    new-array v4, v9, [B

    .line 252
    .restart local v4    # "packet":[B
    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-byte v9, v4, v10

    .line 253
    const/4 v9, 0x2

    invoke-static {v1, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    const/4 v10, 0x1

    aput-byte v9, v4, v10

    .line 254
    const/4 v9, 0x2

    invoke-static {v1, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    const/4 v10, 0x2

    aput-byte v9, v4, v10

    .line 257
    const/16 v9, 0x17

    .line 258
    const/16 v10, 0x38

    .line 259
    const/4 v11, 0x3

    .line 256
    invoke-virtual {p0, v9, v10, v11, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    .line 246
    .end local v1    # "aodDuration":I
    .end local v4    # "packet":[B
    :catch_3
    move-exception v3

    .line 247
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "DPCM setProperty Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

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

    .line 248
    const/16 v1, 0x258

    .restart local v1    # "aodDuration":I
    goto :goto_4

    .line 261
    .end local v1    # "aodDuration":I
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_5
    const/16 v9, 0x54

    if-ne p1, v9, :cond_6

    .line 265
    :try_start_4
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v2

    .line 273
    .local v2, "duration":I
    :goto_5
    const/4 v9, 0x3

    new-array v4, v9, [B

    .line 274
    .restart local v4    # "packet":[B
    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-byte v9, v4, v10

    .line 275
    const/4 v9, 0x2

    invoke-static {v2, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    const/4 v10, 0x1

    aput-byte v9, v4, v10

    .line 276
    const/4 v9, 0x2

    invoke-static {v2, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    const/4 v10, 0x2

    aput-byte v9, v4, v10

    .line 279
    const/16 v9, 0x17

    .line 280
    const/16 v10, 0x38

    .line 281
    const/4 v11, 0x3

    .line 278
    invoke-virtual {p0, v9, v10, v11, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    .line 268
    .end local v2    # "duration":I
    .end local v4    # "packet":[B
    :catch_4
    move-exception v3

    .line 269
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "DPCM setProperty Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

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

    .line 270
    const/16 v2, 0xbb8

    .restart local v2    # "duration":I
    goto :goto_5

    .line 283
    .end local v2    # "duration":I
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_6
    const/16 v9, 0x55

    if-ne p1, v9, :cond_7

    .line 287
    :try_start_5
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result v2

    .line 295
    .restart local v2    # "duration":I
    :goto_6
    const/4 v9, 0x3

    new-array v4, v9, [B

    .line 296
    .restart local v4    # "packet":[B
    const/4 v9, 0x3

    const/4 v10, 0x0

    aput-byte v9, v4, v10

    .line 297
    const/4 v9, 0x2

    invoke-static {v2, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    const/4 v10, 0x1

    aput-byte v9, v4, v10

    .line 298
    const/4 v9, 0x2

    invoke-static {v2, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    const/4 v10, 0x2

    aput-byte v9, v4, v10

    .line 301
    const/16 v9, 0x17

    .line 302
    const/16 v10, 0x38

    .line 303
    const/4 v11, 0x3

    .line 300
    invoke-virtual {p0, v9, v10, v11, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    .line 290
    .end local v2    # "duration":I
    .end local v4    # "packet":[B
    :catch_5
    move-exception v3

    .line 291
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "DPCM setProperty Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

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

    .line 292
    const v2, 0xea60

    .restart local v2    # "duration":I
    goto :goto_6

    .line 305
    .end local v2    # "duration":I
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_7
    const/16 v9, 0x56

    if-ne p1, v9, :cond_8

    .line 309
    :try_start_6
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-result v2

    .line 317
    .restart local v2    # "duration":I
    :goto_7
    const/4 v9, 0x3

    new-array v4, v9, [B

    .line 318
    .restart local v4    # "packet":[B
    const/4 v9, 0x4

    const/4 v10, 0x0

    aput-byte v9, v4, v10

    .line 319
    const/4 v9, 0x2

    invoke-static {v2, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    const/4 v10, 0x1

    aput-byte v9, v4, v10

    .line 320
    const/4 v9, 0x2

    invoke-static {v2, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    const/4 v10, 0x2

    aput-byte v9, v4, v10

    .line 323
    const/16 v9, 0x17

    .line 324
    const/16 v10, 0x38

    .line 325
    const/4 v11, 0x3

    .line 322
    invoke-virtual {p0, v9, v10, v11, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    .line 312
    .end local v2    # "duration":I
    .end local v4    # "packet":[B
    :catch_6
    move-exception v3

    .line 313
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "DPCM setProperty Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

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

    .line 314
    const/16 v2, 0xbb8

    .restart local v2    # "duration":I
    goto :goto_7

    .line 327
    .end local v2    # "duration":I
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_8
    const/16 v9, 0x57

    if-ne p1, v9, :cond_9

    .line 331
    :try_start_7
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-result v6

    .line 339
    .local v6, "scenario":I
    :goto_8
    const/4 v9, 0x5

    new-array v4, v9, [B

    .line 341
    .restart local v4    # "packet":[B
    const/4 v9, 0x4

    invoke-static {v6, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    const/4 v10, 0x0

    aput-byte v9, v4, v10

    .line 342
    const/4 v9, 0x4

    invoke-static {v6, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    const/4 v10, 0x1

    aput-byte v9, v4, v10

    .line 343
    const/4 v9, 0x4

    invoke-static {v6, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x2

    aget-byte v9, v9, v10

    const/4 v10, 0x2

    aput-byte v9, v4, v10

    .line 344
    const/4 v9, 0x4

    invoke-static {v6, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x3

    aget-byte v9, v9, v10

    const/4 v10, 0x3

    aput-byte v9, v4, v10

    .line 345
    const/4 v9, 0x1

    const/4 v10, 0x4

    aput-byte v9, v4, v10

    .line 348
    const/16 v9, 0x17

    .line 349
    const/16 v10, 0x38

    .line 350
    const/4 v11, 0x4

    .line 347
    invoke-virtual {p0, v9, v10, v11, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    .line 334
    .end local v4    # "packet":[B
    .end local v6    # "scenario":I
    :catch_7
    move-exception v3

    .line 335
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "DPCM setProperty Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

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

    .line 336
    const/16 v6, 0xf

    .restart local v6    # "scenario":I
    goto :goto_8

    .line 352
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "scenario":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_9
    const/16 v9, 0x58

    if-ne p1, v9, :cond_a

    .line 356
    :try_start_8
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    move-result v6

    .line 364
    .restart local v6    # "scenario":I
    :goto_9
    const/4 v9, 0x5

    new-array v4, v9, [B

    .line 366
    .restart local v4    # "packet":[B
    const/4 v9, 0x4

    invoke-static {v6, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    const/4 v10, 0x0

    aput-byte v9, v4, v10

    .line 367
    const/4 v9, 0x4

    invoke-static {v6, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    const/4 v10, 0x1

    aput-byte v9, v4, v10

    .line 368
    const/4 v9, 0x4

    invoke-static {v6, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x2

    aget-byte v9, v9, v10

    const/4 v10, 0x2

    aput-byte v9, v4, v10

    .line 369
    const/4 v9, 0x4

    invoke-static {v6, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    const/4 v10, 0x3

    aget-byte v9, v9, v10

    const/4 v10, 0x3

    aput-byte v9, v4, v10

    .line 370
    const/4 v9, 0x2

    const/4 v10, 0x4

    aput-byte v9, v4, v10

    .line 373
    const/16 v9, 0x17

    .line 374
    const/16 v10, 0x38

    .line 375
    const/4 v11, 0x4

    .line 372
    invoke-virtual {p0, v9, v10, v11, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    .line 359
    .end local v4    # "packet":[B
    .end local v6    # "scenario":I
    :catch_8
    move-exception v3

    .line 360
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "DPCM setProperty Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

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

    .line 361
    const/16 v6, 0xf

    .restart local v6    # "scenario":I
    goto :goto_9

    .line 379
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "scenario":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_0
.end method
