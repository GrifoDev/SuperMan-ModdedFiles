.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerCurrentInfoRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ActivityTrackerProviderForExtLib;
.source "ActivityTrackerCurrentInfoRunner.java"


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ActivityTrackerProviderForExtLib;-><init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ActivityTrackerProviderForExtLib;->clear()V

    return-void
.end method

.method protected doTimeOutChecking(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Landroid/os/Bundle;)V
    .locals 1

    if-nez p2, :cond_0

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_BUNDLE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->setContextCollectionResultNotifyCompletion(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerCurrentInfoRunner;->getContextTypeOfFaultDetection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerCurrentInfoRunner;->notifyCmdProcessResultObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final enable()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ActivityTrackerProviderForExtLib;->enable()V

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->REQUEST_SENSORHUB_ACTIVITY_TRACKER_CURRENT_INFO:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [B

    aput-byte v3, v0, v2

    aput-byte v2, v0, v3

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerCurrentInfoRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ActivityTrackerProviderForExtLib;->getFaultDetectionResult()Landroid/os/Bundle;

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

.method protected final getTimeOutCheckObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;
    .locals 0

    return-object p0
.end method

.method protected final parse(I[B)I
    .locals 4

    const/4 v3, -0x1

    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->getLibParser()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PARSER_NOT_EXIST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v3

    :cond_0
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_ACTIVITY_TRACKER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;->getParser(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PARSER_NOT_EXIST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v3

    :cond_1
    invoke-interface {v1, p2, p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v2

    return v2
.end method
