.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AutoBrightnessRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "AutoBrightnessRunner.java"


# instance fields
.field mDeviceMode:B


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AutoBrightnessRunner;->mDeviceMode:B

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

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_AUTO_BRIGHTNESS:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Candela"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "AmbientLux"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 3

    const/4 v1, 0x1

    new-array v0, v1, [B

    iget-byte v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AutoBrightnessRunner;->mDeviceMode:B

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AutoBrightnessRunner;->checkFaultDetectionResult()Z

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

    const/16 v0, 0x30

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    return-object p0
.end method

.method public final parse([BI)I
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    move v1, p2

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AutoBrightnessRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    array-length v3, p1

    sub-int/2addr v3, p2

    add-int/lit8 v3, v3, -0x8

    if-gez v3, :cond_0

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v3, -0x1

    return v3

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v7

    new-array v5, v11, [B

    add-int/lit8 v1, p2, 0x1

    aget-byte v6, p1, p2

    aput-byte v6, v5, v7

    add-int/lit8 v2, v1, 0x1

    aget-byte v6, p1, v1

    aput-byte v6, v5, v8

    add-int/lit8 v1, v2, 0x1

    aget-byte v6, p1, v2

    aput-byte v6, v5, v9

    add-int/lit8 v2, v1, 0x1

    aget-byte v6, p1, v1

    aput-byte v6, v5, v10

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v8

    new-array v5, v11, [B

    add-int/lit8 v1, v2, 0x1

    aget-byte v6, p1, v2

    aput-byte v6, v5, v7

    add-int/lit8 v2, v1, 0x1

    aget-byte v6, p1, v1

    aput-byte v6, v5, v8

    add-int/lit8 v1, v2, 0x1

    aget-byte v6, p1, v2

    aput-byte v6, v5, v9

    add-int/lit8 v2, v1, 0x1

    aget-byte v6, p1, v1

    aput-byte v6, v5, v10

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    return v2
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/16 v4, 0x40

    if-ne p1, v4, :cond_1

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    if-eq v1, v7, :cond_0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    const-string/jumbo v4, "invalid value for mode"

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    return v6

    :cond_0
    int-to-byte v4, v1

    iput-byte v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AutoBrightnessRunner;->mDeviceMode:B

    invoke-static {v1, v7}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    const/16 v5, 0x17

    const/16 v6, 0x30

    invoke-virtual {p0, v5, v6, v7, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AutoBrightnessRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    :goto_0
    return v2

    :cond_1
    const/16 v4, 0x41

    if-ne p1, v4, :cond_6

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const-string/jumbo v4, "value is null"

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v6

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CFG = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v4, v0

    if-gtz v4, :cond_5

    :cond_4
    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LENGTH_ZERO:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v6

    :cond_5
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;->setOffsetTable([B)V

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;->sendAutoBrightnessTableToSensorHub()Z

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method
