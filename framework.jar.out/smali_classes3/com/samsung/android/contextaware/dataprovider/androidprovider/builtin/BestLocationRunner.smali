.class public Lcom/samsung/android/contextaware/dataprovider/androidprovider/builtin/BestLocationRunner;
.super Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;
.source "BestLocationRunner.java"


# instance fields
.field private mCriteria:Landroid/location/Criteria;


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

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_BEST_LOCATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

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

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/builtin/BestLocationRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getLocationProvider()Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/builtin/BestLocationRunner;->getGpsManager()Landroid/location/LocationManager;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "getGpsManager() is null"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/builtin/BestLocationRunner;->getGpsManager()Landroid/location/LocationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/builtin/BestLocationRunner;->mCriteria:Landroid/location/Criteria;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BestProvider : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

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

.method protected final initializeManager()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->initializeManager()V

    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/builtin/BestLocationRunner;->mCriteria:Landroid/location/Criteria;

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/builtin/BestLocationRunner;->mCriteria:Landroid/location/Criteria;

    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setAccuracy(I)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/builtin/BestLocationRunner;->mCriteria:Landroid/location/Criteria;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/builtin/BestLocationRunner;->mCriteria:Landroid/location/Criteria;

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/builtin/BestLocationRunner;->mCriteria:Landroid/location/Criteria;

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setBearingRequired(Z)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/builtin/BestLocationRunner;->mCriteria:Landroid/location/Criteria;

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/builtin/BestLocationRunner;->mCriteria:Landroid/location/Criteria;

    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setCostAllowed(Z)V

    return-void
.end method
