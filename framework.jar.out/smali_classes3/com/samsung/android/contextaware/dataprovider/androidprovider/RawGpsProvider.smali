.class public abstract Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;
.super Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;
.source "RawGpsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$1;,
        Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;
    }
.end annotation


# static fields
.field private static final GPS_MIN_DISTANCE:F = 0.0f

.field private static final GPS_MIN_TIME:J = 0x3e8L


# instance fields
.field private mGpsManager:Landroid/location/LocationManager;

.field private final mGpsStatusListener:Landroid/location/GpsStatus$Listener;

.field private final mLocationListener:Landroid/location/LocationListener;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Ljava/util/Iterator;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getGpsSatellites()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$1;-><init>(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mLocationListener:Landroid/location/LocationListener;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;-><init>(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    return-void
.end method

.method private getGpsSatellites()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public disable()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$4;-><init>(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public enable()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$3;-><init>(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected final getGpsManager()Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method protected final getGpsStatusListener()Landroid/location/GpsStatus$Listener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    return-object v0
.end method

.method protected abstract getLocationProvider()Ljava/lang/String;
.end method

.method protected initializeManager()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "mContext is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    const-string/jumbo v0, "cannot create the GpsManager object"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected registerGpsListener()V
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getLocationProvider()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "cannot register the gps listener"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mLocationListener:Landroid/location/LocationListener;

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getLooper()Landroid/os/Looper;

    move-result-object v6

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method

.method protected final terminateManager()V
    .locals 0

    return-void
.end method

.method protected unregisterGpsListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "cannot unregister the gps listener"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method
