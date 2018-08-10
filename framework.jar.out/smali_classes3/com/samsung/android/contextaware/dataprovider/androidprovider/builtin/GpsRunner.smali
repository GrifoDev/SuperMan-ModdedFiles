.class public Lcom/samsung/android/contextaware/dataprovider/androidprovider/builtin/GpsRunner;
.super Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;
.source "GpsRunner.java"


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->disable()V

    return-void
.end method

.method public final enable()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->enable()V

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_GPS:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Latitude"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "Longitude"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "Altitude"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "Bearing"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "Speed"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "Accuracy"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "Valid"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "SVCount"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/builtin/GpsRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getLocationProvider()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "gps"

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
