.class public Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;
.super Ljava/lang/Object;
.source "CaPassiveCurrentPositionManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;
.implements Lcom/samsung/android/contextaware/utilbundle/IPassiveCurrentPositionObservable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;,
        Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$2;
    }
.end annotation


# static fields
.field private static final ACCURACY_GOOD_THRESHOLE:F = 4800.0f

.field private static final GPS_MIN_DISTANCE:F = 0.0f

.field private static final GPS_MIN_TIME:J = 0x3e8L


# instance fields
.field private mEnable:Z

.field private mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

.field private final mGpsListener:Landroid/location/LocationListener;

.field private mGpsManager:Landroid/location/LocationManager;

.field private mListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;

.field private final mLooper:Landroid/os/Looper;

.field private mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

.field private mSatelliteCount:I

.field private final m_nmea_listener:Landroid/location/GpsStatus$NmeaListener;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mSatelliteCount:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mSatelliteCount:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->registerGpsListener()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->unregisterGpsListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mEnable:Z

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$2;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->m_nmea_listener:Landroid/location/GpsStatus$NmeaListener;

    iput-object p2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->initializeManager(Landroid/content/Context;)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->registerPassiveCurrentPositionObserver(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;)V

    return-void
.end method

.method private registerGpsListener()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "passive"

    iget-object v5, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    iget-object v6, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mLooper:Landroid/os/Looper;

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->m_nmea_listener:Landroid/location/GpsStatus$NmeaListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z

    return-void
.end method

.method public static sendPositionToSensorHub(I[IDDDDFFI)I
    .locals 8

    const/16 v4, 0x16

    new-array v2, v4, [B

    const/4 v3, 0x0

    const-wide v4, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v4, p2

    double-to-int v4, v4

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v4, v5, v2, v3, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    const-wide v4, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v4, p4

    double-to-int v4, v4

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    const/4 v3, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v4, v5, v2, v3, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, p6

    double-to-int v4, v4

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    add-int/lit8 v3, v3, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v4, v5, v2, v3, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    move/from16 v0, p11

    float-to-int v4, v0

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    add-int/lit8 v3, v3, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v5, v2, v3, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v4, 0x0

    aget v4, p1, v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v5, v2, v3, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v4, 0x1

    aget v4, p1, v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v5, v2, v3, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v4, 0x2

    aget v4, p1, v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v5, v2, v3, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v4, 0x1

    move/from16 v0, p12

    invoke-static {v0, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v5, v2, v3, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v4, v4, p10

    float-to-int v4, v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v4, v5, v2, v3, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double v4, v4, p8

    double-to-int v4, v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    add-int/lit8 v3, v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v4, v5, v2, v3, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v4, 0x1

    invoke-static {p0, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    add-int/lit8 v3, v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v5, v2, v3, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    invoke-virtual {v4, v2, v5}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v4

    return v4

    nop

    :array_0
    .array-data 1
        -0x3ft
        0x16t
    .end array-data
.end method

.method private unregisterGpsListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->m_nmea_listener:Landroid/location/GpsStatus$NmeaListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V

    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mEnable:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$4;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mEnable:Z

    return-void
.end method

.method public final enable()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_1

    const-string/jumbo v0, "Looper is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mEnable:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mEnable:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mSatelliteCount:I

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>(F)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$3;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final initializeManager(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    const-string/jumbo v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>(F)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mEnable:Z

    return-void
.end method

.method public final notifyPassiveCurrentPositionObserver(Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;

    if-nez v2, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getType()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getUtcTime()[I

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLongitude()D

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAltitude()D

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getDistance()D

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getSpeed()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAccuracy()F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getSatelliteCount()I

    move-result v16

    invoke-interface/range {v3 .. v16}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;->updatePassiveCurrentPosition(I[IDDDDFFI)V

    return-void
.end method

.method public final registerPassiveCurrentPositionObserver(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;

    return-void
.end method

.method public final terminateManager()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method

.method public final unregisterPassiveCurrentPositionObserver()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;

    return-void
.end method
