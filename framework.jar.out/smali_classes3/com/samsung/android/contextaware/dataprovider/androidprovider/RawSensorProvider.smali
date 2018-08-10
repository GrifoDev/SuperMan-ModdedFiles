.class public abstract Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;
.super Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;
.source "RawSensorProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider$1;
    }
.end annotation


# static fields
.field protected static final DEFAULT_SENSOR_RATE:I = 0xea60


# instance fields
.field private final mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private final mSensorRate:I


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider$1;-><init>(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorListener:Landroid/hardware/SensorEventListener;

    iput p5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorRate:I

    return-void
.end method

.method private registerSensorListener()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorListener:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "cannot register the sensor listener"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->getSensorType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorRate:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->unregisterSensorListener()V

    return-void
.end method

.method public enable()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->registerSensorListener()V

    return-void
.end method

.method protected abstract getSensorType()I
.end method

.method protected final initializeManager()V
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

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    const-string/jumbo v0, "cannot create the SensorManager object"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected final terminateManager()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    return-void
.end method

.method protected unregisterSensorListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorListener:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "cannot unregister the sensor listener"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method
