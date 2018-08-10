.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "SLMonitorExtendedInterruptRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;
    }
.end annotation


# static fields
.field private static final DEFAULT_DEVICE_TYPE:I = 0x1

.field private static final DEFAULT_STEP_LEVEL_DURATION:I = 0x12c

.field private static final DEFAULT_STEP_TYPE:I = 0x1


# instance fields
.field private mDeviceType:I

.field private mDuration:I

.field private mNotiCount:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mDuration:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mNotiCount:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mDeviceType:I

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

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SL_MONITOR_EXTENDED_INTERRUPT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "InactiveStatus"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "IsTimeOut"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "InactiveTimeDuration"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 9

    const/4 v8, 0x5

    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/16 v3, 0x8

    new-array v1, v3, [B

    aput-byte v4, v1, v6

    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mDeviceType:I

    if-ne v3, v5, :cond_1

    aput-byte v8, v1, v5

    :cond_0
    :goto_0
    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mDuration:I

    invoke-static {v3, v7}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    aget-byte v3, v0, v6

    aput-byte v3, v1, v7

    aget-byte v3, v0, v5

    aput-byte v3, v1, v4

    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mNotiCount:I

    invoke-static {v3, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    aget-byte v3, v3, v6

    const/4 v4, 0x4

    aput-byte v3, v1, v4

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v2

    aget v3, v2, v6

    invoke-static {v3, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    aget-byte v3, v3, v6

    aput-byte v3, v1, v8

    aget v3, v2, v5

    invoke-static {v3, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    aget-byte v3, v3, v6

    const/4 v4, 0x6

    aput-byte v3, v1, v4

    aget v3, v2, v7

    invoke-static {v3, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    aget-byte v3, v3, v6

    const/4 v4, 0x7

    aput-byte v3, v1, v4

    return-object v1

    :cond_1
    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mDeviceType:I

    if-ne v3, v7, :cond_0

    aput-byte v7, v1, v5

    goto :goto_0
.end method

.method protected final getDataPacketToUnregisterLib()[B
    .locals 3

    const/4 v1, 0x1

    new-array v0, v1, [B

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->checkFaultDetectionResult()Z

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

    const/16 v0, 0x2c

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

.method protected final getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    .locals 0

    return-object p0
.end method

.method public final parse([BI)I
    .locals 10

    const/4 v9, 0x0

    move v5, p2

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parse:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    array-length v7, p1

    sub-int/2addr v7, p2

    const/4 v8, 0x6

    if-ge v7, v8, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "packet len:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " tmpNext:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    sget-object v7, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v7, -0x1

    return v7

    :cond_0
    add-int/lit8 v5, p2, 0x1

    aget-byte v1, p1, p2

    add-int/lit8 v6, v5, 0x1

    aget-byte v4, p1, v5

    if-nez v4, :cond_1

    const/4 v2, 0x0

    :goto_0
    const/4 v7, 0x4

    new-array v7, v7, [B

    add-int/lit8 v5, v6, 0x1

    aget-byte v8, p1, v6

    aput-byte v8, v7, v9

    add-int/lit8 v6, v5, 0x1

    aget-byte v8, p1, v5

    const/4 v9, 0x1

    aput-byte v8, v7, v9

    add-int/lit8 v5, v6, 0x1

    aget-byte v8, p1, v6

    const/4 v9, 0x2

    aput-byte v8, v7, v9

    add-int/lit8 v6, v5, 0x1

    aget-byte v8, p1, v5

    const/4 v9, 0x3

    aput-byte v8, v7, v9

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;->InactiveStatus:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;

    invoke-static {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;)I

    move-result v8

    aget-object v8, v3, v8

    invoke-virtual {v7, v8, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;->IsTimeOut:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;

    invoke-static {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;)I

    move-result v8

    aget-object v8, v3, v8

    invoke-virtual {v7, v8, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;->Duration:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;

    invoke-static {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;)I

    move-result v8

    aget-object v8, v3, v8

    invoke-virtual {v7, v8, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    return v6

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    const/4 v8, 0x1

    const/16 v7, 0x2c

    const/16 v6, 0x17

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/16 v3, 0x3b

    if-ne p1, v3, :cond_0

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mDuration:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Duration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mDuration:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mDuration:I

    invoke-static {v3, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {p0, v6, v7, v4, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    :goto_0
    return v1

    :cond_0
    const/16 v3, 0x3c

    if-ne p1, v3, :cond_1

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mNotiCount:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Notification count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mNotiCount:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mNotiCount:I

    invoke-static {v3, v8}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    invoke-virtual {p0, v6, v7, v8, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto :goto_0

    :cond_1
    const/16 v3, 0x39

    if-ne p1, v3, :cond_2

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mDeviceType:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Device type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mDeviceType:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v3, 0x37

    if-ne p1, v3, :cond_3

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Notification start = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    invoke-static {v2, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    invoke-virtual {p0, v6, v7, v5, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x38

    if-ne p1, v3, :cond_4

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Notification end = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    invoke-static {v0, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {p0, v6, v7, v4, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0
.end method
