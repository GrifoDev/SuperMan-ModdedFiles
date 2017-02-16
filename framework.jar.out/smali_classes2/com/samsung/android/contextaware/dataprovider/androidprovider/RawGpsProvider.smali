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

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

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
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 66
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$1;-><init>(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mLocationListener:Landroid/location/LocationListener;

    .line 179
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;-><init>(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    .line 61
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

    .prologue
    const/4 v1, 0x0

    .line 331
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 332
    return-object v1

    .line 335
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

    .prologue
    .line 251
    new-instance v0, Landroid/os/Handler;

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$4;-><init>(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)V

    .line 256
    const-wide/16 v2, 0x0

    .line 251
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 250
    return-void
.end method

.method public enable()V
    .locals 4

    .prologue
    .line 236
    new-instance v0, Landroid/os/Handler;

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$3;-><init>(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)V

    .line 241
    const-wide/16 v2, 0x0

    .line 236
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 235
    return-void
.end method

.method protected final getGpsManager()Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method protected final getGpsStatusListener()Landroid/location/GpsStatus$Listener;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    return-object v0
.end method

.method protected abstract getLocationProvider()Ljava/lang/String;
.end method

.method protected initializeManager()V
    .locals 2

    .prologue
    .line 302
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 303
    const-string/jumbo v0, "mContext is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 304
    return-void

    .line 306
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 307
    const-string/jumbo v1, "location"

    .line 306
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    .line 309
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    .line 310
    const-string/jumbo v0, "cannot create the GpsManager object"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 301
    :cond_1
    return-void
.end method

.method protected registerGpsListener()V
    .locals 7

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getLocationProvider()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "provider":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 266
    :cond_0
    const-string/jumbo v0, "cannot register the gps listener"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 267
    return-void

    .line 265
    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    .line 264
    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    .line 271
    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mLocationListener:Landroid/location/LocationListener;

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getLooper()Landroid/os/Looper;

    move-result-object v6

    .line 270
    const-wide/16 v2, 0x3e8

    .line 271
    const/4 v4, 0x0

    .line 270
    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 262
    return-void
.end method

.method protected final terminateManager()V
    .locals 0

    .prologue
    .line 322
    return-void
.end method

.method protected unregisterGpsListener()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 279
    const-string/jumbo v0, "cannot unregister the gps listener"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 280
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 277
    return-void
.end method
